carro( hav383, 0.4, petroleo, [chofer(kyle, 5, 17), chofer(josh, 12, 60), chofer(juan, 3, 8)]).
carro( hav380, 0.3, gasolina, [chofer(pedro, 20, 56), chofer(kyle, 5, 30), chofer(pedro, 20, 56)]).

cantKm(Chapa, Combustible, CantKm) :
carro(Chapa, Consumo, _, _), CantKm is Consumo*Combustible.


