-module(armstrong).
-export([circle_raduis/1, rectangle/2]).

-include("my_records.erl").
% -record(circle, {radius}).


circle_raduis(R) -> 
	A = #circle{radius = R},
	Area = pi() * A#circle.radius * A#circle.radius,
	Perimeter = 2 * pi() * A#circle.radius * A#circle.radius,
	io:fwrite("~w ~n", [Area]),
	io:fwrite("~w ~n", [Perimeter]).

rectangle(Length, Width) -> 
	A = #rectangle{length = Length, width = Width},
	Area = A#rectangle.length * A#rectangle.width,
	io:fwrite("~w ~n", [Area]).
