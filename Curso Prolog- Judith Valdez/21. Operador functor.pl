ladosiguales(P) :- P =.. [_|Lista], iguales(Lista).

iguales([]) :- !,true.
iguales([_]) :- !, true.
iguales([X,X|Lista]) :- iguales([X|Lista]).


li(P) :- functor(P, Nombre, Cantidad), iguales(P).
