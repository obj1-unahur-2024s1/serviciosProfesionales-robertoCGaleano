import profesionales.*

class Empresa {
	
	const profesionales= #{}
	var  property honorarioDeReferencia
	
	method agregarProfesional(unProfecional){
		profesionales.add(unProfecional)
	}
	method eliminarProfesional(unProfecional){
		profesionales.remove(unProfecional)
	}
	method cuantosEstudiaronEn(unaUniversidad){
		return profesionales.count({p=> p.universidad()== unaUniversidad})
	}
	method profesionalesCaros(){
		return profesionales.filter({p=> p.honorariosPorHora()> self.honorarioDeReferencia()})
	}
	method universidadesFormadoras(){
		return profesionales.map({p=> p.universidad()}).asSet()
	}
	method profesionalMasBarato (){
		return profesionales.min({p=> p.honorariosPorHora()})
	}
	method esDeGenteAcotada(){
		return profesionales.all({p=> p.provinciasDondePuedeTrabajar().size()<= 3})
	}
	method esDeGenteAcotada2(){
		return not profesionales.any({p=> p.provinciasDondePuedeTrabajar().size()> 3})
	}
}
