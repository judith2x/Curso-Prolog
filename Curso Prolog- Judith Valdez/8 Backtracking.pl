connected(d,h).
connected(h,f).
connected(f,a).
connected(a,b).
connected(f,g).
connected(i,f).
path(X,Y) :- connected(X,Y).
path(X,Y) :- connected(X,Z), path(Z,Y).

