-module(test).
-export([sum/1, sum_two/2, quick/1,quick/2]).

sum(N) when N == 0 -> 0;
sum(N) when N > 0 ->
	N + sum(N - 1).

sum_two(N, M) when N =< M ->
	N + sum(M).

quick([]) -> [];
quick([single]) -> [single];
quick([pivot | Rest]) ->
	{Smallers, Greaters} = quick(pivot, Rest),
	SortedSmallers = quick(Smallers),
	SortedGreaters = quick(Greaters),
	SortedSmallers ++ [pivot] ++ SortedGreaters.