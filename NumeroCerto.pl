i():- random(0,100,X),
   z(X).

z(X):- nl, write("Digite um numero: "),
    read(Z),
    comp(Z,X).
comp(Z,X):- Z>X,
    nl, write("O numero � maior que o gerado"),
    z(X).
comp(Z,X):- Z<X,
    nl, write("O numero � menor que o gerado"),
    z(X).
comp(Z,X):- Z=X,
    nl, write("Acertou!!!").
