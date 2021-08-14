progenitor(pedro, [ ana, ramon, pedro, javier, josh, vilma, nicolas]).
progenitor(juan, [ ben, pepe, josue, jesica, pavel, keith, kyle ]).

padreDe(Padre, Hijo) :- progenitor(Padre, Hijos), member(Hijo, Hijos).
