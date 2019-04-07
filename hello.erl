-module(hello).
-export([run/0]).

-spec run() -> 'ok'.

run() -> io:format("Hello, World!\n").