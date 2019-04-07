-module(area).
-export([switch/3, even/0, biteven/0, pattern/0]).

switch(Type, A, B) ->
	case Type of
		circle ->
			Area = math:pi() * (A * A),
			io:fwrite("~.1f~n", [Area]);
		rectangle ->
			Area = A * B,
			io:fwrite("~w~n", [Area]);
		square ->
			Area = A * B,
			io:fwrite("~w~n", [Area])
	end.

even() ->
	L = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20],
	[A || A <- L, A rem 2 =:= 0].

biteven() ->
	L = <<1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20>>,
	T = << <<A>> || <<A>> <= L, A rem 2 =:= 0 >>,
	binary_to_list(T).

pattern() -> 
	Student = [{"Kebi", $M, 25}, {"Mojoko", $M, 25}, {"Metuge", $F, 24}, {"Vegas", $M, 23}, {"Mary", $F, 25}, {"Lesly", $M, 20}, {"Dandong", $M, 20}],
	T = [{Name, Gender, Age} || {Name, Gender, Age} <- Student, Gender =:= $M, Age > 21].