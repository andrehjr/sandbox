-module (p1).
-export ([start/2, status/2, valid/0]).

start(Time,Fun) ->
			register(noob,spawn(fun() -> status(Time,Fun) end)). 

status(Time, Fun) -> 
	receive
		stop ->
			void
	after Time ->
		Fun(),
		status(Time,Fun)
	end.