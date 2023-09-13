-module(lesson2_task11).

-export([encode_modifid/1]).
-export([encode_modifid/3]).

encode_modifid(E1) ->
    encode_modifid(E1,[],[]).

encode_modifid([H|[H|T]],Ac1,Ac2) ->
    NewAc1= Ac1 ++ [H],
    encode_modifid([H|T],NewAc1,Ac2);

encode_modifid([H|[N|[N|T]]],Ac1,Ac2) ->
    NewAc1= Ac1 ++ [H],
    Namber= len(NewAc1),
    NewAc2= Ac2 ++ [{Namber,H}],
    encode_modifid([N|[N|T]],[],NewAc2);

encode_modifid([H|[N|[L|T]]],Ac1,Ac2) ->
    NewAc1= Ac1 ++ [H],
    Namber= len(NewAc1),
    NewAc2= Ac2 ++ [{Namber,H}],
    NewAc3= NewAc2 ++ [N],
    encode_modifid([L|T],[],NewAc3);

encode_modifid([H|[]],Ac1,Ac2) ->
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
