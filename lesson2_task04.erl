-module(lesson2_task04).

-export([len/1]).
-export([len/2]).

len(List) ->
    len(List, 0).

len([], _Acc) ->
    0;
len([H|[]], Acc) ->
    Acc+1;
len([_|T], Acc) ->
    len(T, Acc+1).