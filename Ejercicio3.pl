my_length([],0).
my_length([_|L],N) :- my_length(L,N1), N is N1 + 1.

slice([X|_],1,1,[X]).
slice([X|Xs],1,K,[X|Ys]) :- K > 1, 
   K1 is K - 1, slice(Xs,1,K1,Ys).
slice([_|Xs],I,K,Ys) :- I > 1, 
   I1 is I - 1, K1 is K - 1, slice(Xs,I1,K1,Ys).

sublista(_, Menor, Mayor, _, _) :- Menor > Mayor, Menor > 0, write("ERROR 3.2 Indices").

sublista(L, _, Mayor, _, _) :- my_length(L, N), Mayor > N, write("ERROR 3.2 Indices").

sublista(L, Menor, Mayor, E, Sublista) :- slice(L, Menor, Mayor, Sublista), 
    										not(member(E, Sublista)),
    										write("ERROR 3.1 Elemento").

sublista(L, Menor, Mayor, E, Sublista) :- slice(L, Menor, Mayor, Sublista), 
    										member(E, Sublista).