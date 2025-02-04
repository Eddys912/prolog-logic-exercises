%HECHOS

ladron(peter).
ladron(john).
comerciante(charlie).
comerciante(peter).
comprador(john).
joya(perla).
joya(safiro).
joya(esmeralda).
joya(rubi).
joya(diamante).
metal(oro).
metal(platino).
metal(bronce).
metal(rodio).
color(perla,blanco).
color(diamante,blanco).
color(plata,blanco).
color(oro,rosa).
color(rubi,rosa).
color(esmeralda,verde).
color(zafiro,verde).
color(bronce,naranja).
color(platino,naranja).
color(rodio,naranja).

%REGLAS

relacionado_con(X,Z) :- comprador(X),joya(Z).
relacionado_con(X,Z) :- comerciante(X),metal(Z).
roba(X,Z) :- ladron(X),(joya(Z);metal(Z)).
vende(X,Z) :- ladron(X),metal(Z).
no_vendido(X) :- color(X,blanco),\+vende(_,X).

%CONCLUSIONES
:- relacionado_con(X,Z),write(X),write(' está relacionado con '),write(Z),nl,fail;true.
:- ladron(X),write(X),write(' es un ladrón'),nl,fail;true.
:- color(X,Z),metal(X),write(X),write(' es un metal de color '),write(Z),nl,fail;true.