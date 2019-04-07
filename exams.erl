-module(exams).
-export([is_even/1, is_leapyear/1, power/2, duplicate/1, remove_dups/1, show/1]).

% Exercise One
is_even(Number) ->
	if
		Number rem 2 =:= 0 ->
			io:fwrite("~p is an even number~n", [Number]);
		true ->
			io:fwrite("~p is an odd number~n", [Number])
	end.

% Exercise Four
is_leapyear(Year) when Year rem 400 =:= 0 ->
	io:fwrite("This is a is leap year ~w ~n", [Year]);
is_leapyear(Year) ->
	if
		Year rem 4 =:= 0, Year rem 100 =/= 0 ->
			io:fwrite("This is a leap year ~w ~n", [Year]);
		true ->
			io:fwrite("This is not leap year ~w ~n", [Year])
	end.

% Exercise Five
power(X, 0) -> 1; %When N is zero print 1
power(X, 1) -> X; %When N is one print X
power(X, N) when N < 0 -> %When N is a negative Number
	Result = 1 / power(X, N - 1),
	Result;
power(X, N) when N > 1 -> %When N is a positive Number
	Result = X * power(X, N - 1),
	Result.

% Exercise Three
duplicate(0) -> [];
duplicate(L) ->
	lists:usort(L).

remove_dups([])    -> [];
remove_dups([H|T]) -> 
	[H | [X || X <- remove_dups(T), X /= H]].

%Exercise Two
pythagoean(Number) ->
	[{A, O, H} || A <- lists:seq(-Number, Number), O <- lists:seq(-Number, Number), H <- lists:seq(-Number, Number), A + O + H =< Number, A * A + O * O =:= H * H].

show(Num) ->
	io:format("~p\n", [pythagoean(Num)]).
