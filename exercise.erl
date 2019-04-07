-module(exercise).
-compile(export_all).

% print helloworld 5x
print(N) when N < 6 ->
	io:fwrite("Hello World~n"),
	print(N - 1).


while() ->
	print(5).