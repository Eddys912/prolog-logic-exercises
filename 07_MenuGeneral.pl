%FUNCIONES

despliega(C) :- write('El resultado es '(C)).
despliega(R) :- write('El resultado es '(R)).
despliega(F) :- write('El resultado es '(F)).
desp(Z) :- write('El promedio es '(Z)).

potencia(X,0,1).
potencia(X,Y,R) :- 
	X1 is X,
	Y1 is Y-1,
	potencia(X1,Y1,R1),
	R is R1*X1.

factorial(0,1).
factorial(N,F) :- 
	N1 is N-1,
	factorial(N1,F1),
	F is N*F1.

promedio(0,0).
promedio(N,R) :- 
    N1 is N-1,
    promedio(N1,R1),
    write('Dame tu calificacion: '),read(C),
    R is R1+C.

division(N,R,Z) :- 
    Z is R/N.

suma(0,0).
suma(X,S) :- 
    X1 is X-1,
    write('Numero de unidades: '),read(N),
    promedio(N,R),
    division(N,R,Z),
    suma(X1,S1),
    S is S1 + Z.

%LOGICA	

eleccion(Opc) :- 
	Opc==1->write('Introduce el valor de A: '),read(A),
		write('Introduce el valor de B: '),read(B),
		C is A+B,despliega(C);
	Opc==2->write('Introduce el valor de A: '),read(A),
		write('Introduce el valor de B: '),read(B),
		C is A-B,despliega(C);
	Opc==3->write('Introduce el valor de A: '),read(A),
		write('Introduce el valor de B: '),read(B),
		C is A*B,despliega(C);
	Opc==4->write('Introduce el valor de A: '),read(A),
		write('Introduce el valor de B: '),read(B),
		((B==0,write('La division entre 0 no existe'));(C is A/B,despliega(C)));
	Opc==5->write('Introduce el numero a calcular el factorial => '),
	        read(N),
	        ((N>1,factorial(N,F),despliega(F));
	        (N==1,write('El factorial de 1 es 1'));
	        (N==0,write('El fact de 0 es 1'));
		(nl,write('Introduce un numero mayor a cero, para calcular su !')));
	Opc==6->write('Introduce la base: '),read(X),((X==0,write('La potencia de 0 siempre es: 0'));
	       (X==1,write('La potencia de 1 es 1'));
	       (X<0,write('No se puede realizar potencia de numeros negativos'));
	       (write('Introduce el exponente: '), read(Y)),
	       ((Y==0,write('Cualquier numero elevado a la 0 es 1'));
	       (Y==1,write('Cualquier numero elevado a la uno, es: '), write(X));
	       (Y<0,write('No se puede realizar la potencia negativa'));
	       (potencia(X,Y,R),despliega(R))));
	Opc==7->write('Digite el n�mero de temas: '),read(N),(promedio(N,R),division(N,R,Z),desp(Z));
	Opc==8->write('Numero de materias: '),read(X),(suma(X,S),division(X,S,Z),desp(Z)).

%MENU

:- write('-------------------Menu-------------------'),nl,
      write('Introduzca la opcion '),nl,
      write('1.-Suma de A+B'),nl,
      write('2.-Resta de A-B'),nl,
      write('3.-Multiplicacion de A*B'),nl,
      write('4.-Division de A/B'),nl,
      write('5.-Factorial'),nl,
      write('6.-Potencia'),nl,
      write('7.-Promedio'),nl,
      write('8.-Promedio General'),nl,
      write('9.-Terminar'),nl,
      write('Teclea tu opcion: '),read(Opc),((Opc>9,write('Opcion no valida'),nl,menu);(Opc==9,write('Gracias por usar el  programa'));eleccion(Opc),nl,menu).