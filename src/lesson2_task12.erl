-module(lesson2_task12).

-export([decode_modified/1]).
-export([decode_modified/2]).

decode_modified(E1) ->
    decode_modified(E1,[]).

decode_modified([{0,_Element}|T],Ac) ->
    decode_modified(T,Ac);

decode_modified([{Namber,Element}|T],Ac) ->
    NewAc= Ac ++ [Element],
    NewNamber= Namber-1,
    decode_modified([{NewNamber,Element}|T],NewAc);

decode_modified([H|T],Ac) ->
    Ac2= Ac ++ [H],
    decode_modified(T,Ac2);

decode_modified([],Ac) ->
    Ac.