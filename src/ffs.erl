-module(ffs).
-export([for/1]).

for(L)->
  [ 'Elixir.String':'downcase'(X) || X <- L ].
