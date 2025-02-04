es_perro(lassie).

es_animal(X) :- es_perro(X).
es_canino(X) :- es_perro(X).

:- es_canino(lassie),write('Lassie es canino'),nl.