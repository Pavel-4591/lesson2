-module(lesson2_task14).

-export([dublikate/1]).
-export([dublikate/2]).

dublikate(E1) ->
    dublikate(E1,[]).

dublikate([H|T],Ac) ->
    Ac2= Ac ++ [H] ++ [H],
    dublikate(T,Ac2);

dublikate([],Ac) ->
    Ac.