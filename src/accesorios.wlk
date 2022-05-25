object farolito{
	method peso() = 0.5
	
	method carga() = 0
	
	method esLuminoso() = true
}
	
object canasto{
	var property volumen
	
	method peso() = volumen / 10
	
	method carga() = volumen * 2
	
	method esLuminoso() = false
}

object morralDeBici{
	var property largo
	var property tieneOjoDeGato = false
	
	method peso() = 1.2
	
	method carga() = largo / 3
	
	method esLuminoso() = tieneOjoDeGato
}