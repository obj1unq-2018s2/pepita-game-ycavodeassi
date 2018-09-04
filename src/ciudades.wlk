object buenosAires {
	method imagen() = "ciudad.png"
	method nombre() = "Buenos Aires"
	method posicion() = game.at(6,9)
	//Nuevo Metodo
	method teEncontro(alguien) {}
}

object villaGesell {
	method imagen() = "ciudad.png"
	method nombre() = "Villa Gesell"
	method posicion() = game.at(8,5)
	//Nuevo Metodo
	method teEncontro(alguien) {}
}

object conurbano {
	method imagen() = "conurbano.png"
	method nombre() = "Conurbano"
	method posicion() = game.at(7,8)
	//Nuevo Metodo
	method teEncontro(alguien) { alguien.peligro() }
}

