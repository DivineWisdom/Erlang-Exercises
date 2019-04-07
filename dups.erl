-module(dups).
-export([find/1, duplicate/1]).

% this function counts occurences of a value in a list 
occurence_count(_Element,[]) ->
    0;

occurence_count(Element,[Element|T]) ->
    1 + occurence_count(Element,T);

occurence_count(Element,[_|T]) ->
    occurence_count(Element,T).

find([]) -> [];

find([H|T]) ->
    find([H|T],[]).

find([],_) -> [];

find([H|T],Acc) ->
    case occurence_count(H,T) of
        0 -> find(T,Acc);
        _ -> case occurence_count(H,Acc) of 
                0 -> [H|find(T,[H|Acc])];
                _ -> find(T,Acc)
             end
    end.

%exercies 3: function to get list of duplicates in a list%
duplicate(L) ->
  duplicate([],L).
duplicate(R,[]) -> R;
duplicate(R,[H|T]) ->
  case remove_duplicate(H,T,[],true) of
    {true,Nt} -> duplicate(R,Nt);
    {false,Nt} -> duplicate([H|R],Nt)
  end.

remove_duplicate(_,[],Res,Bool) -> {Bool,Res};
remove_duplicate(H,[H|T],Res,_) -> remove_duplicate(H,T,Res,false);
remove_duplicate(H,[V|T],Res,Bool) -> remove_duplicate(H,T,[V|Res],Bool).


