-module(lesson2_task13).

-export([decode/1]).
-export([decode/2]).

decode(E1) ->
    decode(E1,[]).

decode([{0,_Element}|T],Ac) ->
    decode(T,Ac);

decode([{Namber,Element}|T],Ac) ->
    NewAc= Ac ++ [Element],
    NewNamber= Namber-1,
    decode([{NewNamber,Element}|T],NewAc);

decode([],Ac) ->
    Ac.