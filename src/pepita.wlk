import ciudades.*

//Hacer que pepita no haga nada si le indico que vuele a la ciudad en la que ya está. 
//En cambio usar el mensaje 'say' para que pepita diga "Ya estoy en <nombre de la ciudad>!".
//Pepita tampoco debe volar si no le alcanza la energia y 
//en cambio usamos el mensaje 'say' para decir "Dame de comer primero!".

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
		}
		else {
			self.yaEnCiudad(unaCiudad)
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
			self.pocaEnergia()
			}
	}
	
	//Nuevos Metodos
	method teEncontro(alguien) { alguien.alimentarA(self) }
	//Bonus::Cambia la imagen de pepita segun su energia.
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
	method pocaEnergia() = game.say(self, "Dame de Comer!")
	method yaEnCiudad(unaCiudad) = game.say(self, "Ya estoy en " + unaCiudad)
	
}
