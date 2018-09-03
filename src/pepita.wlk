import ciudades.*

object pepita {
	var property ciudad 
	var property energia = 100
	var property imagen = "pidgeotto.png"
	var property posicion = game.at(3,6)

	method come(comida) {
		energia = energia + comida.energia()
		self.evolucion()
	}
	method volaHacia(unaCiudad) {
		if (ciudad != unaCiudad) {
			self.move(unaCiudad,unaCiudad.posicion())
			//ciudad = unaCiudad
		}
		else {
			game.say(self, self.yaEstoyEnCiudad(unaCiudad))
		}
	}
	method energiaParaVolar(distancia) = 15 + 5 * distancia
	method move(unaCiudad,nuevaPosicion) {
		if (self.puedeVolar(nuevaPosicion)) {
			energia -= self.energiaParaVolar(posicion.distance(nuevaPosicion))
			self.evolucion()
			self.posicion(nuevaPosicion)
			ciudad = unaCiudad
		}
		else {
			game.say(self, self.pocaEnergia())
			}
	}
	
	//Nuevos Metodos
	//Cambia la imagen de pepita segun su energia.
	method evolucion() {
		if (energia < 10) {
			imagen = "pidgey.png"
		}
		else if (energia > 100) {
			imagen = "pidgeot.png"
		}
	}
	//Retorna true si tiene energia suf. para volar a nueva posicion.
	method puedeVolar(nuevaPosicion) = self.energiaParaVolar(posicion.distance(nuevaPosicion)) <= energia
	//Metodos de dialogo. 
	method pocaEnergia() = "Tengo hambre, dame de COMER!"
	method yaEstoyEnCiudad(unaCiudad) = "Ya estoy en " + unaCiudad

	
}
