object manzana {
	const property imagen = "apple.png"
	method energia() = 80
	//Nuevo Metodo
	method teEncontro(alguien) {
		alguien.guardarComida(self)
		alguien.dejarComida(self)
	}
}

object alpiste {
	const property imagen = "sunflower.png"
	method energia() = 5
	//Nuevo Metodo
	method teEncontro(alguien) {
		alguien.guardarComida(self)
		alguien.dejarComida(self)
	}
}
