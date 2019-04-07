-module(pair).

-compile(export_all).
% -export([myster1/1]).

% myster1(L) -> myster1(L, [], []).

% myster1([H|T], Unpaired, Paired) ->

% 	case(H rem 2) of

% 		1 -> myster1(T, [H| Unpaired], Paired);

% 		0 -> myster1(T, Unpaired, [H| Paired])
% 	end;
% myster1([], Unpaired, Paired) -> [Unpaired, Paired].

myster1(L) ->
	[{Even, Odd} || {Even, Odd} <- L, Even rem 2 =:= 0, Odd rem 2 =/= 0].

readlines(FileName) ->
    {ok, Device} = file:open(FileName, [read]),
    try get_all_lines(Device)
      after file:close(Device)
    end.

get_all_lines(Device) ->
    case io:get_line(Device, "") of
        eof  -> [];
        Line -> Line ++ get_all_lines(Device)
    end.