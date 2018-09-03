import pepita.*
import comidas.*
//import masAves.*

object roque {
	const property imagen = "roque.png"
	var property comida
	var property position = game.at(0,9)
	var property tuPupiloEs = pepita
	
	method pupiloActual() = tuPupiloEs
	method entrenar() {
		tuPupiloEs.volar(10)
		tuPupiloEs.comer(alpiste)
		tuPupiloEs.volar(5)
		tuPupiloEs.haceLoQueQuieras()
	}	
	//Nuevos Metodos
	method comidaActual() = comida
	//Desarrollar...
	method peligro() = "Conurbano, Perdiste todo!"
}