range(I,I,_Const,[I]).
range(I,K,Const,[I|L]) :- I < K, I1 is I + Const, range(I1,K,Const,L).

espacio_lineal(Menor, Mayor, _, _) :- Menor > Mayor, write("ERROR 4.1 Indices").

espacio_lineal(_, _, Numero_elementos, _) :- Numero_elementos < 1, write("ERROR 4.1 Indices").

espacio_lineal(Menor, Mayor, Numero_elementos, Rejilla) :- Const is ((Mayor - Menor)/(Numero_elementos - 1)),
    														range(Menor, Mayor, Const, Rejilla).