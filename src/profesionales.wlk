// esta clase está completa, no necesita nada más
import universidades.*

class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Rios", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{universidad.provincia()} }
	method honorariosPorHora() { return universidad.honorariosRecomendados() }
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var universidad
	const property provinciasDondePuedeTrabajar= #{}
	var property honorariosRecomendados
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method asignarProvincias(listaDeProvincias) {
		provinciasDondePuedeTrabajar.addAll(listaDeProvincias)
	}
	method provinciasDondePuedeTrabajar() { return provinciasDondePuedeTrabajar }
	method honorariosPorHora() { return honorariosRecomendados }
}
