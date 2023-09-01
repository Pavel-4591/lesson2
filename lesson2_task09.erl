-module(lesson2_task09).

-export([pack/1]).
-export([pack/3]).

pack(E1) ->
    pack(E1,[],[]).

pack([H|[H|T]],Ac1,Ac2) ->
    NewAc1= Ac1 ++ [H],
    pack([H|T],NewAc1,Ac2);

pack([H|[N|T]],Ac1,Ac2) ->
    NewAc1= Ac1 ++ [H],
    NewAc2= Ac2 ++ [NewAc1],
    pack([N|T],[],NewAc2);

pack([H|[]],Ac1,Ac2) ->
    NewAc1= Ac1 ++ [H],
    NewAc2= Ac2 ++ [NewAc1],
    NewAc2.
