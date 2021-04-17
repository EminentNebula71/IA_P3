my_length([],0).
my_length([_|L],N) :- my_length(L,N1), N is N1 + 1.

sum_pot_prod([],[], _Potencia, 0).
sum_pot_prod(X,Y, _, _) :- my_length(X, A), my_length(Y, B), A\=B, write("ERROR 1.2 Longitud").

sum_pot_prod(_, _, Potencia, _) :- Potencia < 1, write("ERROR 1.1 Potencia").

sum_pot_prod([X|Xs], [Y|Ys], Potencia, Resultado) :- Potencia > 0,
    													Mult is X*Y,
    													Resultado1 is Mult^Potencia,
    													sum_pot_prod(Xs, Ys, Potencia, Resultado2), 
    													Resultado is Resultado1+Resultado2.