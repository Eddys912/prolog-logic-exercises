esta(clima,lluvioso).

esta(clima,agradable) :- \+ esta(clima,lluvioso).
se_hace(dia_campo) :- esta(clima,lluvioso).
se_hace(dia_campo) :- esta(clima,agradable).
ir_a(nadar) :- esta(clima,agradable).

:- se_hace(dia_campo),write('Se hace un día de campo'),nl.
:- ir_a(nadar),write('Se va a nadar'),nl;true.
:- esta(clima,agradable),write('El clima es agradable'),nl;true.
:- write('El clima no es agradable'),nl.
