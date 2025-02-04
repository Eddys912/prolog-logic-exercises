es_hombre(fausto).

tiene_c(X,conciencia) :- es_hombre(X).
tiene_l(X,libertad) :- es_hombre(X).
es_responsable(X) :- tiene_c(X,conciencia),tiene_l(X,libertad).

:- tiene_c(fausto,conciencia),tiene_l(fausto,libertad),write('Fausto tiene conciencia'),nl.
:- es_responsable(fausto),write('Fausto es responsable'),nl.