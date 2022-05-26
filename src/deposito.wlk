import bicis.*
import accesorios.*

class Deposito{
	var property bicis = []
	
	method agregarBici(unaBici) { bicis.add(unaBici) }
	
	method quitarBici(unaBici) { bicis.remove(unaBici) }
	
	method bicisRapidas() = bicis.filter({ b => b.velocidadCrucero() > 25 })
	
	method marcasBicis() = bicis.map({ b => b.marca() }).asSet()
	
	method esNocturno() = bicis.all({ b => b.tieneLuz() })
	
	method bicicletaParaLlevar(kgs) = bicis.any({ b => b.carga() > kgs })
	
	method marcaBiciMasRapida() = bicis.max({ b => b.velocidadCrucero() }).marca()
	
	method bicisMasLargasQue(cms) = bicis.filter({ b => b.largo() > cms })
	
	method cargaTotalBicisLargas() = self.bicisMasLargasQue(170).sum({ b => b.carga() })
	
	method bicisSinAccesorios() = bicis.count({ b => b.accesorios().isEmpty() })
	
	method bicisCompanieras(unaBici) = bicis.filter( { b => b.sonCompanieras(unaBici)} )
	
}