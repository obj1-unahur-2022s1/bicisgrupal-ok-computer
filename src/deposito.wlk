import bicis.*
import accesorios.*

class Deposito{
	var property bicis = []
	
	method bicisRapidas() = bicis.filter({ b => b.velocidadCrucero() > 25 })
	
	method marcasBicis() = bicis.map({ b => b.marca() }).asSet() // no estoy segura si está bien
	
	method esNocturno() = bicis.all({ b => b.tieneLuz() })
	
	method bicicletaParaLlevar(kgs) = bicis.any({ b => b.carga() > kgs })
	
	method marcaBiciMasRapida() = bicis.max({ b => b.velocidadCrucero() }).marca()
	
	method bicisMasLargasQue(cms) = bicis.filter({ b => b.largo() > cms })
	
	method cargaTotalBicisLargas() = self.bicisMasLargasQue(170).sum({ b => b.carga() }) // no estoy segura si está bien
	
	method bicisSinAccesorios() = bicis.count({ b => b.accesorios().isEmpty() })
	
}