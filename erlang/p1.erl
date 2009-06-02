-module (p1).
-export ([start/2, status/2, valid/0]).

%%valid() -> 
%%	whereis(noob) =:= undefined.

start(Time,Fun) ->
%%	if
%%		valid() =:= true ->
			register(noob,spawn(fun() -> status(Time,Fun) end)). 
%%	end.

status(Time, Fun) -> 
	receive
		stop ->
			void
	after Time ->
		Fun(),
		status(Time,Fun)
	end.