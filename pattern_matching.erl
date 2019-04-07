-module(pattern_matching).
-export([main/1]).

main(A) ->
	% [{Name, Gender, Age} || {Name, Gender, Age} <- A, Gender =:= $M, Age > 21].
	[{Name, Gender, Age} || {Name, Gender, Age} <- A, Gender =:= $M orelse Age > 20].
