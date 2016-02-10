package qc15

import java.util.Date;

class Prueba {
	
	String restaurante
	String usuario
	Integer comensales
	Date fecha
	Float hora
	
	static belongsTo = [restaurante: Restaurante, usuario: Usuario]

    static constraints = {
		
		hora range: 20..23
		fecha(min: new Date())
    }
}
