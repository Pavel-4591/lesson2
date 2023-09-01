-module(lesson2_task0702).

-export([flatten/1]).

flatten(List) ->
    flatten(List,[]).

flatten([], Acc) ->
    lesson2_task05:revers(Acc);

flatten([[]|T], Acc) ->
    flatten(T, Acc);

flatten([[[]|H]|T], Acc) ->
    flatten([H|T], Acc);

flatten([[H|T1]|T], Acc) ->
    flatten([H,T1|T], Acc);

flatten([H|T], Acc) ->
    flatten(T,[H|Acc]).