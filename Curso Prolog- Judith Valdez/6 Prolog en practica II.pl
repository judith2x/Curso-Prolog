conexion(d,h,4).
conexion(h,f,9).
conexion(i,f,11).
conexion(f,g,10).
conexion(f,a,8).
conexion(a,b,7).
conexion(d,i,2).
tieneArista(X) :- conexion(X,_,_).
llegar(Inicio,Destino,Int,Costo) :-
    conextion(Inicio,Int,C1), conexion(Int,Destino,C2), Costo is C1+C2.

