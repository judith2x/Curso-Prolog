estudiantes(
    el(nombre,apellidos,fecha(dia,mes,a?o)),
    e2(vladimir, lopez, fecha(22,08,1990))
).


%Desglosar los par?metros del pol?gono.
ladosiguales(P) :- P =.. [_|Lista], iguales(Lista).
%Comparar los elementos de la lista
iguales([]) :- !,true.
iguales([_]) :- !, true.
iguales([X,X|Lista]) :- iguales([X|Lista]).
