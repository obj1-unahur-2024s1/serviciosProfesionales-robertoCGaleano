// esta clase está completa, no necesita nada más
import universidades.*

class Persona {
	var property edad
}

class Profecional inherits Persona{
	var property universidad
}

class ProfesionalAsociado inherits Profecional{
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Rios", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado inherits Profecional{
	
	method provinciasDondePuedeTrabajar() { return #{universidad.provincia()} }
	method honorariosPorHora() { return universidad.honorariosRecomendados() }
}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre inherits Profecional{
	
	const property provinciasDondePuedeTrabajar= #{}
	var property honorariosRecomendados
	
	method asignarProvincias(listaDeProvincias) {
		provinciasDondePuedeTrabajar.addAll(listaDeProvincias)
	}
	method provinciasDondePuedeTrabajar() { return provinciasDondePuedeTrabajar }
	method honorariosPorHora() { return honorariosRecomendados }
}
