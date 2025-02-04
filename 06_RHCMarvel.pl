%HECHOS

es(jeanGray,mutante).
es(magneto,mutante).
es(storm,mutante).
es(hope,mutante).
es(vulcano,mutante).
es(coloso,mutante).
es(titania,mutante).
es(lobezno,mutante).
es(wolwerine,mutante).
es(deadPool,mutante).
es(rogue,mutante).
es(charles,mutante).
es(mystique,mutante).
es(arcangel,mutante).
es(cyclope,mutante).
es(laMole,mutante).
es(capitanAmerica,mutante).
es(centinela,robot).
es(grlWatson,humano).
es(draMoyra,humano).

nivel(jeanGray,maximo).
nivel(magneto,tres).
nivel(storm,tres).
nivel(hope,tres).
nivel(vulcano,tres).
nivel(coloso,dos).
nivel(titania,dos).
nivel(lobezno,dos).
nivel(wolwerine,uno).
nivel(deadPool,uno).
nivel(rogue,uno).
nivel(charles,uno).
nivel(mystique,cero).
nivel(arcangel,cero).
nivel(cyclope,cero).
nivel(laMole,cero).
nivel(capitanAmerica,cero).

tienePoder(jeanGray,telepatia).
tienePoder(jeanGray,manipulacionMateria).
tienePoder(jeanGray,superFuerza).
tienePoder(jeanGray,extrasensorial).
tienePoder(jeanGray,alteracionFisica).
tienePoder(magneto,manipulacionMateria).
tienePoder(storm,manipulacionMateria).
tienePoder(hope,manipulacionMateria).
tienePoder(vulcano,manipulacionMateria).
tienePoder(coloso,superFuerza).
tienePoder(titania,superFuerza).
tienePoder(lobezno,superFuerza).
tienePoder(wolwerine,extrasensorial).
tienePoder(deadPool,extrasensorial).
tienePoder(rogue,extrasensorial).
tienePoder(charles,extrasensorial).
tienePoder(mystique,alteracionFisica).
tienePoder(arcangel,alteracionFisica).
tienePoder(cyclope,alteracionFisica).
tienePoder(laMole,alteracionFisica).
tienePoder(capitanAmerica,alteracionFisica).
tienePoder(draMoyra,ninguno).

%REGLAS

elimina(X,Z) :- nivel(X,maximo),nivel(Z,tres).
elimina(X,Z) :- nivel(Z,maximo);nivel(Z,tres);nivel(Z,dos);nivel(Z,uno);nivel(Z,cero);es(Z,humano),es(X,robot).
elimina(X,Z) :- nivel(Z,dos);es(Z,mutante);es(Z,humano),nivel(X,tres).
elimina(X,Z) :- nivel(Z,dos);nivel(Z,uno);nivel(Z,cero),nivel(X,dos).
elimina(X,Z) :- nivel(X,uno),es(Z,humano);nivel(Z,cero);es(Z,robot).
elimina(X,Z) :- nivel(X,cero),es(Z,humano).
elimina(X,Z) :- es(X,humano),es(Z,humano);es(Z,robot).

%CONCLUSIONES

:- writeln('=== Listado poderes ==='),tienePoder(X,Z),es(X,mutante),write(X),write(' tiene poderes de: '),write(Z),nl,fail;true,nl.
:- writeln('=== Listado de eliminados ==='),elimina(robot,Z),write(Z),write(' es eliminado por: centinelas'),nl,fail;true,nl.
:- nivel(rogue,Z),write('Rogue es nivel: '),write(Z),nl;true,nl.
:- elimina(X,grlWatson),write(X),write(' elimina al General Watson'),nl,fail;true,nl.
:- writeln('=== Listado personajes ==='),es(X,Z),write(X),write(' es un: '),write(Z),nl,fail;true,nl.
:- nivel(X,cero),write(X),write(' tienen alteraciones fisicas'),nl,fail;true,nl.
:- tienePoder(draMoyra,Z),write('La doctora Moyra tiene el poder de: '),write(Z),nl;true,nl.
:- writeln('=== Listado niveles ==='),nivel(X,Z),write(X),write(' tiene el nivel: '),write(Z),nl,fail;true,nl.