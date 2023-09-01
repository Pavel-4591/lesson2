-module(lesson2_task15).

-export([replicate/2]).
-export([replicate/4]).

replicate(E1,N) ->
    replicate(E1,N,[],[]).


replicate([_H|T],0,Ac,Ac1) ->
    N=len(Ac),
    replicate(T,N,[],Ac1);

replicate([H|T],N,Ac,Ac1) ->
    NewAc= Ac ++ [H],
    NewAc1= Ac1 ++ [H],
    NewN= N-1,
    replicate([H|T],NewN,NewAc,NewAc1);

replicate([],_N,_Ac,Ac1) ->
    Ac1.




len(Ac) ->
    len(Ac, 0).

len([], _Acc) ->
    0;
len([_H|[]], Acc) ->
    Acc+1;
len([_|T], Acc) ->
    len(T, Acc+1).