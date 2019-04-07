-module(assignment).
-export([sum/1, sum_two/2, for/1, start/2, odd/1, sorting/2, rev/1, join/1, looping/1]).

sum(N) when N == 0 -> 0;
sum(N) when N > 0 -> 
	N + sum(N - 1).

% sum(N) when N > 0 ->
% 	1 + sum(N - 1);
% sum(0) ->
% 	0.

% fac(N) when N > 0 ->
% 	N + fac(N -1);
% fac(0) ->
% 	1.

% 
sum_two(N, M) when N =< M ->
	N + sum(M).


% make
start(0, _) ->
	[];

	start(N, Term) when N > 0 ->
		W = [N | start(N - 1, Term)],
		W.

for(N) ->
	lists:reverse(start(N, 1)).


odd(N) when N > 0 ->
	L = for(N),
	[X || X <- L, X rem 2 /= 0].

% lists loop
% exercise 2
sorting(A, M) ->
	[N || N <- A, N =< M].

rev(N) ->
	B = lists:reverse(N).
	

join(N) ->
	B = [],
	lists:concat(B, N).

looping(N) ->
	lists:flatten(N).

