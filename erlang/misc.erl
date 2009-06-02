-module (misc).
-export ([pythag/1]).

pythag(N) -> 
  [ {A, B, C} || A <- lists:seq(1,N), 
                 B <- lists:seq(1,N), 
                 C <- lists:seq(1,N),
                 A < B,
				 B < C,
				 A + B + C =:= 1000,
                 A*A + B*B =:= C*C ].
