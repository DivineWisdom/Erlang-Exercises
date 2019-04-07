-module(armstrong_numbers).

-export([is_armstrong_number/1, test_version/0]).

is_armstrong_number(N) ->
    {D, C} = to_digits(N),
    N =:= armstrong_sum(D, C).


to_digits(N) ->
    to_digits(N, [], 0).

to_digits(0, DigitList, Count) ->
    {DigitList, Count};
to_digits(N, D, C) ->
    to_digits(N div 10, [N rem 10|D], C + 1).


power(N, P) when P > 0 ->
    N * power(N, P - 1);
power(_, 0) -> 1.


armstrong_sum(DigitList, Count) ->
    armstrong_sum(DigitList, Count, 0).

armstrong_sum([], _, Acc) ->
    Acc;
armstrong_sum([H|T], C, Acc) ->
    armstrong_sum(T, C, Acc + power(H, C)).


test_version() -> 1.