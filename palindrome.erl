
-module(palindrome).
-export([palindrome/1, divide/2]).

palindrome(Number) ->
    Temp = [D || D <- divide(Number, [])],

    if 
        Number == Temp ->
            io:fwrite("yes~n");
        true ->
            io:fwrite("no~n")
    end.


divide(0, Acc) -> Acc;
divide(Number, Acc) ->
    divide(Number div 10, [Number rem 10 | Acc]).