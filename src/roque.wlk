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
	var property randomPosition = game.at(1.randomUpTo(10), 1.randomUpTo(10))
	//Nuevos Metodos
	method alimentarA(alguien) {
		if (comida!=null) {
			alguien.come(comida)
			game.addVisualIn(comida, randomPosition)
			comida = null
		}
	}
	method guardarComida(unaComida) {
		if(comida!=null && comida!=unaComida){ 
			self.dejarComida(comida)
			comida = unaComida
			game.removeVisual(unaComida)
		}
		else {
			comida = unaComida
			game.removeVisual(unaComida)
		}
	}
	method dejarComida(unaComida) = game.addVisualIn(unaComida, position.clone().up(1))
	method teEncontro(alguien) {
	}
	//Extra
	method peligro() = game.say(self, "Conurbano!! AHH TE ASUSTASTE!")
}