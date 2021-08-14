familia(pedro, [marie, juan]).
familia(josue, [rbert, maria]).
familia(einstein, [dimitri, vladimir]).

menu :- write('***Gestor de familias*** \n'),
write('1. Adicionar una familia'),nl,
write('2. Eliminar una familia'), nl,
write('3. Borrar todas las familias'), nl,
write('4. Lista de todos los familiares'), nl,
write('Seleccione una opción (cero para salir); '), read(Opcion),
    ejecutar(Opcion).

ejecutar(Opcion) :- Opcion==1, adicionar, menu;
Opcion==2, eliminar, menu;
Opcion==3, borrar, menu;
Opcion==4, listar, menu;
Opcion==0, true.


listar :- setof(C, (P,H)^(familia(P,H), member(C,H)), L), write(L),nl.

