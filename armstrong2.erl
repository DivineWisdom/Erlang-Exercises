-module(armstrong2).
% -export([armstrong/1, divide/2]).
-compile(export_all).

armstrong(Number) ->

	Temp = lists:sum([math:pow(D,3) || D <- divide(Number, [])]),

	if
		Temp == Number ->
			io:fwrite("It's an armstrong number ");
		true ->
			io:fwrite("It's not an armstrong number ")
	end.


divide(0, Acc) -> Acc;
divide(Number, Acc) ->
	divide(Number div 10, [Number rem 10 | Acc]).

% is_armstrong(N) ->
% 	Digits = [list_to_integer([D]) || D <- integer_to_list(N)],
% 	L = length(Digits),
% 	lists:sum([math:pow(D, L) || D <- Digits]) == N. 