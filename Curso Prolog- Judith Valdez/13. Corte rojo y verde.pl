%si N>0 y N<2, S=1
%si N>2 y N<-5, s-2
rango(N,1) :- N > 0, N =< 2, !.
rango(N,2) :- N > 2, N =< 5, !.
rango(N,3).

