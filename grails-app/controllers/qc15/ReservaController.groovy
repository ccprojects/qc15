package qc15

class ReservaController {
		
	def list() {
		def list = Restaurante.list()
		[list:list]
	
}
    

		
	
    def index() {
			
		def restauranteInstance = Restaurante.findAll()  
		[restaurants: restauranteInstance]
		
	
    }

    
	def buscaDisponibilidad(){ 			/*StrigR_Date_f_Integer_h */   
	

		def res = Reserva.findAllByRestauranteLikeAndFechaLikeAndHoraLike('r%','f%','h%', [sort:'Fecha', order: 'asc'])
				
		}
	
		/* reservas dos puntos res hacerlo en service enviar al service la lista y por each sumar los comensales
		
		each codigo en la vista enviandole la lista res
		
		 render buscaDisponibilidad */

		def reservar() {}
}