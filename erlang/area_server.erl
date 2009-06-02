-module (area_server).
-export ([loop/0]).

loop() -> 
  receive
  	{From, {lol,A, B}} ->
		From ! A * B,
		%%io:format("Lol is ~p~n",[A * B]),
  		loop();
	{From, {olo,A, B}} ->
		From ! A / B,
		%%io:format("olo is ~p~n",[A / B]), 
		loop() 	
  end.
%% 12> Pid = spawn(fun area_server:loop/0).
%% <0.50.0>
%% 13> Pid ! {lol,10,10}.
%% Lol is 100
%% {lol,10,10}
%% 14> Pid ! {olo,10,10}.
%% olo is 1.0
%% {olo,10,10}