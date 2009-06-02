-module(ruby_caller).
-export([talk/0]).

talk() ->
  Cmd = "ruby receiver.rb",
  Port = open_port({spawn, Cmd}, [{packet, 4}, use_stdio, exit_status, binary]),
  Payload = term_to_binary({dammit, <<"Hello =) How are you ruby?">>}),
  port_command(Port, Payload),
receive
	{Port, {data, Data}} ->	
		{result, Text} = binary_to_term(Data),
	io:format("~p~n", [Text])
end.