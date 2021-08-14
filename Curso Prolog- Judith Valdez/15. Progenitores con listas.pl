progenitor(pedro,ana).
progenitor(ana,ramon).
progenitor(pedro,ramon).

primerHijo(P,Hijo) :- progenitor(P, Hijo), !.

