mult(X,1).

mult(X,Y):-
	Y1 is Y-1,
	mult(X,Y1),
	Z is X*Y1,
	write(X),write(' x '),write(Y1),write(' es: '),write(Z),nl.
:- write('Digite la tabla deseada: '),read(X),
write('Digite el limite: '),read(Y),mult(X,Y+1).