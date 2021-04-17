element_at(X,[X|_],1).
element_at(X,[_|L],K) :- K > 1, K1 is K - 1, element_at(X,L,K1).

my_length([],0).
my_length([_|L],N) :- my_length(L,N1), N is N1 + 1.

last_but_one(X,[X,_]).
last_but_one(X,[_,Y|Ys]) :- last_but_one(X,[Y|Ys]).

segundo_penultimo(L, X, Y) :- my_length(L, Z), Z > 1, element_at(X, L, 2), last_but_one(Y, L).
