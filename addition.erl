-module(addition).
-export([for/2, start/1, adding/1]).

for(0,_) ->
	[];
	for(N, Term) when N > 0 ->
	io:fwrite("~w~n",[N]),
	[Term|for(N-1, Term)].

start(M) ->
	for(M,1).

adding(1) -> 1;
adding(N) when N > 0 ->
	N + adding(N-1).

sum(N, M) when N > 0 ->
	fac(N) when N > 0 ->
		N +
		
			