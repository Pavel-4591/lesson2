-module(lesson2_task05).

-export([revers/1]).
-export([revers/2]).

revers(List1) ->
    revers(List1,[]).

revers([],NewList2) ->
    NewList2;

revers([H|List1],List2) ->
    NewList2=[H|List2],
    revers(List1,NewList2).