package qc15

class Usuario {
	String nombre
	String apellido
	String email
	String telefono
	
	static HasMany = [reservas: Reserva]
	
	static constraints = {
		
		nombre nullable: false
		apellido nullable: false
		email nullable: false, email: true, unique: true
		telefono nullable: true
		
		}
}
