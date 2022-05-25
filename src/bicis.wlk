import accesorios.*

class Bicicleta{
	var property rodado
	var property largo
	var property marca
	var property accesorios = []
	
	method agregarAccesorio(accesorio) {
		accesorios.add(accesorio)
	}
	
	method sacarAccesorio(accesorio) {
		accesorios.remove(accesorio)
	}
	
	method altura() = rodado * 2.5 + 15
	
	method velocidadCrucero() = if (largo > 120) {rodado + 6} else {rodado + 2}
	
	method carga() = accesorios.sum({ a => a.carga() })
	
	method peso() = rodado / 2 + accesorios.sum({ a => a.peso() })
	
	method tieneLuz() = accesorios.any({ a => a.esLuminoso() })
	
	method accesoriosLivianos() = accesorios.filter({ a => a.peso() > 1 })
	
}