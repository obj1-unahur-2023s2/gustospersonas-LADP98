import cosas.*
import materiales.*

object bolichito {
	var objetoEnVidriera = remera
	var objetoEnMostrador = munieco
	
	method objetoEnVidriera() = objetoEnVidriera
	method objetoEnVidriera(unObjeto) {objetoEnVidriera=unObjeto}
	method objetoEnMostrador() = objetoEnMostrador
	method objetoEnMostrador(unObjeto) {objetoEnMostrador=unObjeto}
	
	method esBrillante() = objetoEnVidriera.material().esBrillante() and objetoEnMostrador.material().esBrillante() 
	method esMonocromatico() = objetoEnVidriera.color() == objetoEnMostrador.color() 
	method estaDesequilibrado() = objetoEnMostrador.peso() > objetoEnVidriera.peso()
	method tieneAlgoDeColor(color) {
		return objetoEnMostrador.color() == color or objetoEnVidriera.color() == color
	}
	method puedeMejorar() {
		return self.esMonocromatico() or self.estaDesequilibrado()
	}
	method puedeOfrecerleAlgoA(persona) {
		return persona.leGusta(objetoEnVidriera) or persona.leGusta(objetoEnMostrador)
	}
}
