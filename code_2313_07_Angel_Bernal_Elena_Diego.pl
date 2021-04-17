write_log(S) :- open('error_logs.txt', append, Out), write(Out, S), write(Out, '\n'), close(Out).

/***************
* EJERCICIO 1. sum_pot_prod/4
*
*	ENTRADA:
*		X: Vector de entrada de numeros de valor real.
*		Y: Vector de entrada de numeros de valor real.
*		Potencia: Numero de valor entero, potencia.
*	SALIDA:
*		Resultado: Numero de valor real resultado de la operacion sum_pot_prod. 
*
****************/
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

/***************
* EJERCICIO 2. segundo_penultimo/3
*
*       ENTRADA:
*               L: Lista de entrada de numeros de valor real.
*       SALIDA:
*               X : Numero de valor real. Segundo elemento.
*		Y : Numero de valor real. Penultimo elemento.
*
****************/
element_at(X,[X|_],1).
element_at(X,[_|L],K) :- K > 1, K1 is K - 1, element_at(X,L,K1).

last_but_one(X,[X,_]).
last_but_one(X,[_,Y|Ys]) :- last_but_one(X,[Y|Ys]).

segundo_penultimo(L, X, Y) :- my_length(L, Z), Z > 1, element_at(X, L, 2), last_but_one(Y, L).

/***************
* EJERCICIO 3. sublista/5
*
*       ENTRADA:
*		L: Lista de entrada de cadenas de texto.
*		Menor: Numero de valor entero, indice inferior.
*		Mayor: Numero de valor entero, indice superior.
*		E: Elemento, cadena de texto.
*       SALIDA:
*		Sublista: Sublista de salida de cadenas de texto.
*
****************/
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
/***************
* EJERCICIO 4. espacio_lineal/4
*
*       ENTRADA:
*               Menor: Numero de valor entero, valor inferior del intervalo.
*               Mayor: Numero de valor entero, valor superior del intervalo.
*               Numero_elementos: Numero de valor entero, numero de valores de la rejilla.
*       SALIDA:
*               Rejilla: Vector de numeros de valor real resultante con la rejilla.
*
****************/
range(I,I,_Const,[I]).
range(I,K,Const,[I|L]) :- I < K, I1 is I + Const, range(I1,K,Const,L).

espacio_lineal(Menor, Mayor, _, _) :- Menor > Mayor, write("ERROR 4.1 Indices").

espacio_lineal(_, _, Numero_elementos, _) :- Numero_elementos < 1, write("ERROR 4.1 Indices").

espacio_lineal(Menor, Mayor, Numero_elementos, Rejilla) :- Const is ((Mayor - Menor)/(Numero_elementos - 1)),
    														range(Menor, Mayor, Const, Rejilla).
/***************
* EJERCICIO 5. normalizar/2
*
*       ENTRADA:
*		Distribucion_sin_normalizar: Vector de numeros reales de entrada. Distribucion sin normalizar.
*       SALIDA:
*		Distribucion: Vector de numeros reales de salida. Distribucion normalizada.
*
****************/
normalizar(Distribucion_sin_normalizar, Distribucion) :- print('Error. Este ejercicio no esta implementado todavia.'), !, fail.

/***************
* EJERCICIO 6. divergencia_kl/3
*
*       ENTRADA:
*		D1: Vector de numeros de valor real. Distribucion.
*		D2: Vector de numeros de valor real. Distribucion.
*       SALIDA:
*		KL: Numero de valor real. Divergencia KL.
*
****************/
divergencia_kl(D1, D2, KL) :- print('Error. Este ejercicio no esta implementado todavia.'), !, fail.

/***************
* EJERCICIO 7. producto_kronecker/3
*
*       ENTRADA:
*		Matriz_A: Matriz de numeros de valor real.
*		Matriz_B: Matriz de numeros de valor real.
*       SALIDA:
*		Matriz_bloques: Matriz de bloques (matriz de matrices) de numeros reales.
*
****************/
producto_kronecker(Matriz_A, Matriz_B, Matriz_bloques) :- print('Error. Este ejercicio no esta implementado todavia.'), !, fail.

/***************
* EJERCICIO 8a. distancia_euclidea/3
*
*       ENTRADA:
*               X1: Vector de numeros de valor real. 
*               X2: Vector de numeros de valor real.
*       SALIDA:
*               D: Numero de valor real. Distancia euclidea.
*
****************/
distancia_euclidea(X1, X2, D) :- print('Error. Este ejercicio no esta implementado todavia.'), !, fail.

/***************
* EJERCICIO 8b. calcular_distancias/3
*
*       ENTRADA:
*               X_entrenamiento: Matriz de numeros de valor real donde cada fila es una instancia representada por un vector.
*               X_test: Matriz de numeros de valor real donde cada fila es una instancia representada por un vector. Instancias sin etiquetar.
*       SALIDA:
*               Matriz_resultados: Matriz de numeros de valor real donde cada fila es un vector con la distancia de un punto de test al conjunto de entrenamiento X_entrenamiento.
*
****************/
calcular_distancias(X_entrenamiento, X_test, Matriz_resultados) :- print('Error. Este ejercicio no esta implementado todavia.'), !, fail.

/***************
* EJERCICIO 8c. predecir_etiquetas/4
*
*       ENTRADA:
*               Y_entrenamiento: Vector de valores alfanumericos de una distribucion categorica. Cada etiqueta corresponde a una instancia de X_entrenamiento.
*               K: Numero de valor entero.
*               Matriz_resultados: Matriz de numeros de valor real donde cada fila es un vector con la distancia de un punto de test al conjunto de entrenamiento X_entrenamiento.
*       SALIDA:
*               Y_test: Vector de valores alfanumericos de una distribucion categorica. Cada etiqueta corresponde a una instancia de X_test.
*
****************/
predecir_etiquetas(Y_entrenamiento, K, Matriz_resultados, Y_test) :- print('Error. Este ejercicio no esta implementado todavia.'), !, fail.

/***************
* EJERCICIO 8d. predecir_etiqueta/4
*
*       ENTRADA:
*               Y_entrenamiento: Vector de valores alfanumericos de una distribucion categorica. Cada etiqueta corresponde a una instancia de X_entrenamiento.
*               K: Numero de valor entero.
*               Vec_distancias: Vector de valores reales correspondiente a una fila de Matriz_resultados.
*       SALIDA:
*               Etiqueta: Elemento de valor alfanumerico.
*
****************/
predecir_etiqueta(Y_entrenamiento, K, Vec_distancias, Etiqueta) :- print('Error. Este ejercicio no esta implementado todavia.'), !, fail.

/***************
* EJERCICIO 8e. calcular_K_etiquetas_mas_relevantes/4
*
*       ENTRADA:
*               Y_entrenamiento: Vector de valores alfanumericos de una distribucion categorica. Cada etiqueta corresponde a una instancia de X_entrenamiento.
*               K: Numero de valor entero.
*               Vec_distancias: Vector de valores reales correspondiente a una fila de Matriz_resultados.
*       SALIDA:
*		K_etiquetas: Vector de valores alfanumericos de una distribucion categorica.
*
****************/
calcular_K_etiquetas_mas_relevantes(Y_entrenamiento, K, Vec_distancias, K_etiquetas) :- print('Error. Este ejercicio no esta implementado todavia.'), !, fail.

/***************
* EJERCICIO 8f. calcular_etiqueta_mas_relevante/2
*
*       ENTRADA:
*               K_etiquetas: Vector de valores alfanumericos de una distribucion categorica.
*       SALIDA:
*               Etiqueta: Elemento de valor alfanumerico.
*
****************/
calcular_etiqueta_mas_relevante(K_etiquetas, Etiqueta) :- print('Error. Este ejercicio no esta implementado todavia.'), !, fail.

/***************
* EJERCICIO 8g. k_vecinos_proximos/5
*
*       ENTRADA:
*		X_entrenamiento: Matriz de numeros de valor real donde cada fila es una instancia representada por un vector.
*		Y_entrenamiento: Vector de valores alfanumericos de una distribucion categorica. Cada etiqueta corresponde a una instancia de X_entrenamiento.
*		K: Numero de valor entero.
*		X_test: Matriz de numeros de valor real donde cada fila es una instancia representada por un vector. Instancias sin etiquetar.
*       SALIDA:
*		Y_test: Vector de valores alfanumericos de una distribucion categorica. Cada etiqueta corresponde a una instancia de X_test.
*
****************/
k_vecinos_proximos(X_entrenamiento, Y_entrenamiento, K, X_test, Y_test) :- print('Error. Este ejercicio no esta implementado todavia.'), !, fail.