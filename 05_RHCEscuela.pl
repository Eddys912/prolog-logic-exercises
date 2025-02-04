%HECHOS

es(sofia,alumno).
es(gabriel,alumno).
es(enrique,alumno).
es(pedro,alumno).
es(alejandra,alumno).
es(veronica,profesor).
es(miguel,profesor).
es(luis,profesor).
es(maria,profesor).
es(magdalena,profesor).
es(mario,profesor).
materia(veronica,fisica).
materia(miguel,etica).
materia(luis,calculo).
materia(luis,programacion).
materia(maria,estructuraDatos).
materia(magdalena,io).
materia(magdalena,prolog).
materia(mario,algebra).
materia(mario,fundamentosIngenieriaSoftware).
toma(sofia,calculo).
toma(pedro,programacion).
toma(enrique,programacion).
toma(gabriel,fundamentosIngenieriaSoftware).
toma(pedro,estructuraDatos).
toma(gabriel,estructuraDatos).
toma(enrique,fisica).

%REGLAS

toma(X,fisica) :- toma(X,calculo).
toma(X,calculo) :- toma(X,fundamentosIngenieriaSoftware).
toma(X,io) :- es(X,alumno).
toma(X,algebra) :- toma(X,etica),not(toma(X,programacion)).
toma(X,prolog) :- es(X,alumno),not(toma(X,estructuraDatos)).
toman(Z) :- toma(X,Z),toma(Y,Z).

%CONCLUSIONES

:- materia(X,fisica),write(X),write(' imparte fisica'),nl,fail;true,nl.
:- toma(alejandra,Z),write('Alejandra lleva la materia de '),write(Z),nl,fail;true,nl.
:- toma(X,algebra),toma(X,programacion),write(X),write(' toma algebra y programacion'),nl,fail;true,nl.
:- toma(gabriel,Z),materia(X,Z),write(X),write(' imparten clases a Gabriel'),nl,fail;true,nl.
:- toman(Z),toma(X,Z),toma(Y,Z),write('Los alumnos coinciden en la clase de '),write(Z),nl,nl.
:- writeln('=== Listado de alumnos y materias ==='),toma(X,Z),write(X),write(' lleva la materia de '),write(Z),nl,fail;true,nl.
:- materia(magdalena,Z),write('Magdalena imparte '),write(Z),nl,fail;true,nl.
:- writeln('=== Listado de profesores y alumnos ==='),materia(X,Z),toma(Y,Z),write(X),write(' tiene de alumno a '),write(Y),nl,fail;true,nl.
:- writeln('=== Listado de Maestros ==='),es(X,profesor),write(X),write(' es maestro'),nl,fail;true,nl.
:- writeln('=== Listado de Alumnos ==='),es(X,alumno),write(X),write(' es alumno'),nl,fail;true.