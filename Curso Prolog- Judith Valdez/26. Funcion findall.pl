carro( hav379, 0.2, petroleo, [chofer(kyle, 5, 17), chofer(josh, 12, 60), chofer(juan, 3, 8)]).
carro( hav382, 0.5, petroleo, [chofer(kyle, 5, 17), chofer(josh, 12, 60), chofer(juan, 3, 8)]).
carro( hav383, 0.4, petroleo, [chofer(kyle, 5, 17), chofer(josh, 12, 60), chofer(juan, 3, 8)]).
carro( hav380, 0.3, gasolina, [chofer(pedro, 20, 56), chofer(kyle, 5, 30), chofer(pedro, 20, 56)]).

listadoChapas :- findall( Chapa, carro(Chapa, _, petroleo, _) , ListaChapas ), muestraChapas(ListaChapas).
muestraChapas([]) :- !.
muestraChapas([C|ListaChapas]) :- write(C), n1, muestraChapas(ListaChapas).

