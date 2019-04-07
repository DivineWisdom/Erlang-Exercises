-module(testing).
-import(helloworld, [start/0]).
-export([mat/0, num/2, bin/1, map/0, list/1]).

mat() ->
	start().

num(A, B) ->
	io:format('~w~n', [A+B]).

bin(A) ->
	X = binary_to_list(A),
	io:fwrite('~w ~w~n', [X, A]),
	D = list_to_tuple(X),
	io:fwrite('~w', [D]).

map() -> 
	M1 = #{name => vegas, age => 23},
	io:fwrite("~w~n", [map_size(M1)]),
	A = 2.234345,
	io:fwrite('~.1f~n', [A]).

list(A) ->
	[H|T] = A.