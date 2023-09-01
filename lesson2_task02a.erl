-module(lesson2_task02a).
-export([but_last/1]).

but_last([E1,E2]) ->
    [E1,E2];

but_last([_|Rest]) ->
    but_last(Rest).