%Antes Da Virgula Progenitor, após a virgula o filho(a).
progenitor(valdevino, matheus).
progenitor(valdevino, maicon).
progenitor(valdevino, mayara).
progenitor(sonia, matheus).
progenitor(sonia, maicon).
progenitor(sonia, mayara).
progenitor(jair, valdevino).
progenitor(jair, celia).
progenitor(jair, cida).
progenitor(hilda, valdevino).
progenitor(hilda, celia).
progenitor(hilda, cida).
progenitor(celma, sonia).
progenitor(celma, sirley).
progenitor(celma, helena).
progenitor(jose, sonia).
progenitor(jose, sirley).
progenitor(jose, helena).
progenitor(celia, camila).
progenitor(gabriel, camila).
progenitor(paulo, ana).
progenitor(paulo, veronica).
progenitor(cida, ana).
progenitor(cida, veronica).
progenitor(sirley, isaac).
progenitor(sirley, tiago).
progenitor(carlos, isaac).
progenitor(carlos, tiago).
progenitor(helena, gabriela).
progenitor(helena, deise).
progenitor(orlando, gabriela).
progenitor(orlando, deise).
%sexo feminino.
sexo(sonia,feminino).
sexo(ana,feminino).
sexo(veronica,feminino).
sexo(helena,feminino).
sexo(sirley,feminino).
sexo(celma,feminino).
sexo(hilda,feminino).
sexo(celia,feminino).
sexo(mayara,feminino).
sexo(camila,feminino).
sexo(gabriela,feminino).
sexo(deise,feminino).
sexo(cida,feminino).
%sexo masculino.
sexo(matheus,masculino).
sexo(maicon,masculino).
sexo(valdevino,masculino).
sexo(jair,masculino).
sexo(jose,masculino).
sexo(orlando,masculino).
sexo(tiago,masculino).
sexo(isaac,masculino).
sexo(carlos,masculino).
sexo(paulo,masculino).
sexo(gabriel,masculino).
%irma.
irma(X,Y):- progenitor(A,X), progenitor(A,Y), X\==Y, sexo(X, feminino).
%irmao.
irmao(X,Y):- progenitor(A,X), progenitor(A,Y), X\==Y, sexo(X, masculino).
%avô.
avô(X,Y):- progenitor(X,A), progenitor(A,Y), sexo(X,masculino).
%avó.
avó(X,Y):-progenitor(X,A), progenitor(A,Y), sexo(X, feminino).
%mãe.
mae(X,Y):- progenitor(X,Y), sexo(X,feminino).
%pai.
pai(X,Y):- progenitor(X,Y), sexo(X, masculino).
%tio.
tio(X,Y):- irmao(X,A), progenitor(A,Y).
%tia.
tia(X,Y):- irma(X,A), progenitor(A,Y).
%primo.
primo(X,Y):- progenitor(A,X), (tio(A,Y);tia(A,Y)), sexo(X,masculino).
%primo(X,Y):- mae(A,X), tia(A,Y), sexo(X,masculino).
%prima.
prima(X,Y):- progenitor(A,X), (tio(A,Y);tia(A,Y)), sexo(X,feminino).
%prima(X,Y):- mae(A,X), tia(A,Y), sexo(X,feminino).





















