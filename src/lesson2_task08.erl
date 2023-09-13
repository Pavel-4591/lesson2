-module(lesson2_task08).

-export([compress/1]).
-export([compress/2]).

compress(List) ->
    compress(List,[]).

compress([A|[A|T]],List1) ->
    compress([A|T],List1);

compress([A|[B|T]],List1) ->
    DNLL= List1 ++ [A],
    compress([B|T],DNLL);

compress([A|[]],List1) ->
    List2= List1 ++ [A],
    List2;

compress([],List1) ->
    List1.