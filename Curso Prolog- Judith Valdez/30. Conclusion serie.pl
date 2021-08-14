:- dynamic(familia/2).

familia(pedro, [maria, juan]).
familia(josue, [robert, maria]).
familia(einstein, [dimitri, vladimir]).

eliminar :- write('Nombre: '), read(Nombre),
    retract(familia(Nombre, _)), !.
eliminar :- write('No existe tal persona \n').

borrar :- abolish(familia/2),
    write('Se han borrado todas las familias \n').


adicionar :- write('Nombre'), read(Nombre),
    write('Cantidad de familiares'),
    read(Cant), crearFamiliares(Cant,F),
    Fam-familia(Nombre,F),
    asserta(Fam).

crearFamiliares(0,[]) :-!, true.
crearFamiliares(C,[Hijo|L]) :-read(Hijo), Ctemp is C-1, crearFamiliares(Ctemp,L).

menu :- write('*** Gestor de familias *** \n'),
write('1. Adicionar una familia'),nl,
write('2. Eliminar una familia'), nl,
write('3. Borrar todas las familias'), nl,
write('4. Lista de todos los familiares'), nl,
write('Seleccione una opci�n (cero para salir): '), read(Opcion),
    ejecutar(Opcion).

ejecutar(Opcion) :- Opcion== 1, adicionar, menu;
Opcion== 2, eliminar, menu;
Opcion== 3, borrar, menu;
Opcion== 4, listar, menu;
Opcion== 0, true.

listar :- setof(C, (P,H)^(familia(P,H), member(C,H)), L), write(L),nl.
