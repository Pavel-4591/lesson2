-module(lesson2_task10).

-export([encode/1]).
-export([encode/3]).

encode(E1) ->
    encode(E1,[],[]).

encode([H|[H|T]],Ac1,Ac2) ->
    NewAc1= Ac1 ++ [H],
    encode([H|T],NewAc1,Ac2);

encode([H|[N|T]],Ac1,Ac2) ->
    NewAc1= Ac1 ++ [H],
    Namber= len(NewAc1),
    NewAc2= Ac2 ++ [{Namber,H}],
    encode([N|T],[],NewAc2);

encode([H|[]],Ac1,Ac2) ->
    NewAc1= Ac1 ++ [H],
    Namber= len(NewAc1),
    NewAc2= Ac2 ++ {Namber,H},
    NewAc2.





















len(NewAc1) ->
    len(NewAc1, 0).

len([_H|[]], Acc) ->
    Acc+1;

len([_|T], Acc) ->
    len(T, Acc+1).
