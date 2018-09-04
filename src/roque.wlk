import pepita.*
import comidas.*

//Introducir Roque, el entrenador, que tendrá las siguientes capacidades:
//Al encontrar una comida, Roque la levanta y se la guarda. Si ya tenía una, suelta la anterior.
//Al encontrar a pepita, Roque le entrega la comida que tiene y pepita se la come. 
//Luego, hacer aparecer de nuevo la comida en un lugar al azar del tablero.

object roque {
	var property comida = null
	var property imagen = "roque.png"
	var property position = game.at(0,9)
	//Nuevos Metodos
	method teEncontro(alguien) {
	}
	method alimentarA(alguien) {
		if (comida!=null) {
			alguien.come(comida)
			game.addVisualIn(comida, position.randomUpTo(10))
		}
	}
	method guardarComida(unaComida) {
		if(comida!=null){ 
			comida = unaComida
			game.removeVisual(unaComida)
		}
	}
	method dejarComida(unaComida) {
		if(comida!=null){
			game.addVisualIn(unaComida, position.randomUpTo(10))
		}

	}
	//Extra
	//method peligro() = "Conurbano, Perdiste todo!"
	//method llegueACiudad(unaCiudad) = "Llegue a " + unaCiudad
}