object farolito{
	method peso() = 0.5
	
	method carga() = 0
	
	method esLuminoso() = true
}
	
class Canasto{
	var property volumen
	
	method peso() = volumen / 10
	
	method carga() = volumen * 2
	
	method esLuminoso() = false
}

class MorralDeBici{
	var property largo
	var property tieneOjoDeGato = false
	
	method peso() = 1.2
	
	method carga() = largo / 3
	
	method esLuminoso() = tieneOjoDeGato
}

/*
	Habria que agregar aca el accesorio nuevo que se quiera crear, ya sea como objeto o clase, y dentro
* 	definir los metodos "peso","carga" y "esLuminoso", como mínimo, para respetar el polimorfismo.
*/