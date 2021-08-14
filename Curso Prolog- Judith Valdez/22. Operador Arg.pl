li(P) :- functor(P, Nombre, Cantidad), bi(P,Cantidad).
bi(P,0) :- !,true.
bi(P,1) :- !,true.
bi(P,N) :- arg(N,P,Num1), Ant is N-1, arg(Ant,P,Num2), Num1 = Num2, bi(P,Ant).
