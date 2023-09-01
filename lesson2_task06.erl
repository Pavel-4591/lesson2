-module(lesson2_task06).

-export([is_palindrome/1]).

is_palindrome(List) ->
    ReversetList=revers(List),
    Is_palindrome = List == ReversetList,
    Is_palindrome.














revers(List1) ->
    revers(List1,[]).

revers([],NewList2) ->
    NewList2;

revers([H|List1],List2) ->
    NewList2=[H|List2],
    revers(List1,NewList2).