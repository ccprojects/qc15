package qc15

class Restaurante {
	
	String restaurante
	String especialidad
	String telefono
	String email
	String calle_nro
	String barrio
	Integer capacidad
	Integer reservados
	Integer disponibles
	
	static HasMany = [reservas: Reserva]
			
    static constraints = {
		
		restaurante nullable: false
		especialidad inList:["italiana","vegetariana","china", "mexicana", "parrillada", "Seleccionar"]
		telefono nullable: false
		email email:true, unique: true, nullable: false
		calle_nro nullable: false
		barrio  nullable: false
		capacidad minSize:0
		reservados minSize:0, nullable: true
		disponibles minSize: 0
		
		}
}
