existe(persona(nombre, apellido, edad, sexo)).

dameNombre(persona(Nombre, _, _,), Nombre).

codigo(P) :- dameNombre(P, Nombre1).
codigo(V) :- dameNombre(V, Nombre2).
