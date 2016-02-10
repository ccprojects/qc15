package qc15



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PruebaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Prueba.list(params), model:[pruebaInstanceCount: Prueba.count()]
    }

	def ElijaRes() {
		
		
		def restauranteInstance = Restaurante.list(params)
		
		[restaurants: restauranteInstance]
		//[restaurants:params]
	}
	
	
	def enviar(params){
		/*
		def nombre = params.nombre
		def edad = params.edad
		def email = params.email

		[nombre:nombre,edad:edad,email:email]
		*/
		//println params
		//return restaurante.get(params.id)
		/*
		def id = params.id
		def restaurante = params.restaurante
		def barrio = params.barrio
		return [id:id,restaurante:restaurante,barrio:barrio] 
		
		*/
		
		def restauran= qc15.Restaurante.get(params.id)
		
		def nuevaRes= new qc15.Prueba(params)
		
		//def f= params.fecha 

		// DateFormat fechaHora = new SimpleDateFormat("yyyy-M-dd")
		//f= Date.parse( "yyyy-M-d", "2011-01-15" )
		
				
		def temp= qc15.Prueba.get(params.id)
		
		//def restau= qc15.Restaurante.get(params.id)
		
		//def res= Prueba.findByFechaAndHora(params.fecha, params.hora)
		
		//def reservaTemp= new qc15.Prueba(params)
		//restaurante.get(params.id)
	//	def listadoReservas = qc15.Prueba.findAllByFechaAndHora(params.fecha, params.hora)
		//[restaurants:params, restauran:restauran, reservas:listadoReservas]
		
		[restaurants:params, restauran:restauran, temp: temp, nuevaRes:nuevaRes]
		
		//def listadoReservas = datosres.findAllByFechaAndHora(params.fecha, params.hora)
	}
	
	def BuscarRestaurante() {
		
		def restauranteInstance = Restaurante.list(params)
		// [restaurants: restauranteInstance]
		
		
		[restaurants: restauranteInstance]
		
	}
	
	def crear(){
		
		[restaurante:Restaurante.list()]
		
		//Prueba prueba = new Prueba()    <!-- ${prueba.fecha} -->
		//prueba.fecha= new Date()
		//[prueba:prueba]
		
	}
	
	def muestra(){
		def restauranteInstance = Restaurante.get(params.id)
		[restaurants: restauranteInstance]
		//[book : Book.get(params.id)]
		//[resto:Restaurante.get(params.id)]
		//[restaurants:params]
		
		//[mostrar:params]
		
	}
	
	def Reservar(params){		//(params)
	def restauranteInstance = new Restaurante()
	restauranteInstance.properties =params
	return [restaurants:restauranteInstance]
		/*		
	def id= params.id
		def rest= params.restaurante
		def cap= params.capacidad
		def barrio= params.barrio
		
*/
	
		//[id:id,rest:rest,cap:cap,barrio:barrio]
		
		//[restaurants: params]
		//def resto = qc15.Restaurante.findAllById(params.id)		//Person.list() , def resto= Restaurante.find(id)
		//def resto = Restaurante.FindByRestaurante("Maderos")
		// [restaurant:resto]
		//render "buscar Disponibilidad ${resto}"
	}
	
	def demo_form(){
				
	}
	
	def BuscarDisponib(){			//(Date f, int h, int c, int idR)
		//1. Usuario Complete fecha y hora
		//2. RESERVAS: Busca en REserva con idR, todas las reservas de la fecha y misma hora
		//y SUMA la cantidad de comensales de cada reserva (CantRes).
		//3. render "la cantidad de reservas para esa fecha y hora es:" ${CantRes}
		//BuscaDisponib(CantRes)
		/*Devuelve esa suma la envia a DIsponibilidad
		Busca Disponibilidad(CantRes, idR)
		REcibe id REst
		def disp = false
		def cap= idR.capacidad	 //Busca Capacidad del REst
		render "la capacidad del REsto es" ${cap}
		def disponibles= cant - CantRes
		render "lugares disponibles" ${disponibles}
		if(disponibles >= cant){    //Compara ambas
		def disp = true
		render "Todavìa hay lugar, PUEDE RESERVAR!!!"}	
*/		
		//1.Buscar la Disp del rest seleccionado
		//def restau= params.id
		//def restau= qc15.Restaurante.findById(params.id)   	//(idR)
		//[restaurants: params]
		[rest:params]
		def restau= qc15.Restaurante.get(params.id)
		
		def fecha= params.fechaRes
		def hora=params.horaRes
		def comensales= params.Com
		
		def disp= 3		//restau.capacidad
		//render "La capacidad de ${restau} es ${restau.capacidad}"
		def disponible= false
		def cant= 0
		
		def r= Prueba.findAllByHora(hora)
		
		//r= Prueba.findAllByFechaAndHora(params.fechaRes, hora)		//(f,h)
		r.each{cant= cant + ${it.comensales}} //armar tabla con TODAS las reservas y la suma en total
		
		//Buscar reserva f, h; guardar cant en c
		
		if((disp - cant) >= comensales)
		{//Crear RESERVA
			disponible= true
			println "confirme"
			//render "Confirme su REserva Por Favor"
			
			//<g: actionSubmit value="Confirmo Reserva" action="Confirma"/>
			//pruebaInstance.save(params)
			def prueba = new Prueba(params)
			//def save(){
			//def person = new Person(params)
			//person.save()
			
			
		}else{
			render "No hay disponibilidad para reserva" 
		}	
	}
		
	
	def busca(){
		
		/*
		println params
		respond Prueba.get(params.id)
		def nombre = params.nombre
		def edad = params.edad
		def email = params.email

		[nombre:nombre,edad:edad,email:email] */
		
		def restau= qc15.Restaurante.get(params.id)
		
		[datos:params, restau:restau]
/*		
		def fecha= params.fecha
		def hora= params.hora
		def comensales= params.comensales
		[fecha:fecha, hora:hora, comensales:comensales]
	*/	
	}
	
	def BuscaReservas(){
		
		//def restauran= qc15.Restaurante.get(params.id)
		//[restaurants:params, restauran:restauran]
		
		//Prueba nuevaReserva= new Prueba(params)
		//nuevaReserva.save()
		
		//def datosres= new qc15.Prueba(params)
		
		def datosres=params
		
		//def datosres= qc15.Prueba.get(params.id)
		//def datosres= nuevaReserva.get(params.id)
		//def datosres= qc15.Prueba.get(params.id)
		
		//def datos= qc15.Prueba.get(params.id)
		
		/*
		def f= params.fecha
		f= Date.parse( "yyyy-MM-dd", "2011-01-15" )
			*/
		//def listR= nuevaReserva.findAllByFechaAndHora(params.fecha, params.hora)
		//def lista= datos.findAllByFechaAndHora(params.fecha, params.hora)
	//def lista=qc15.Prueba.findAllByFechaAndHora(datosres.fecha, datosres.hora)
		//def lista=datosres.findAllByFechaAndHora(params.fecha, params.hora)
		def listadoReservas = qc15.Prueba.findAllByFechaAndHora(datosres.fecha, datosres.hora)
		//def listadoReservas = qc15.Prueba.findAllByFechaAndHora(params.fecha, params.hora)
		//cantidadRes= listadoReservas.comensales.sum()
		//def listadoReservas = datosres.findAllByFechaAndHora(params.fecha, params.hora)
		//[reservas:listadoReservas, cantidadRes:cantidadRes, lista:lista, listR:listR]		//,
		//[datosres: datosres]
		//[datosres:params]	
//[lista:lista]
		println listadoReservas.comensales.sum()
		[reservas:listadoReservas]
	}
	
	def CuentaComensales(){}
	def Confirma() {}
	
    def show(Prueba pruebaInstance) {
        respond pruebaInstance
    }

    def create() {
        respond new Prueba(params)
    }

    @Transactional
    def save(Prueba pruebaInstance) {
        if (pruebaInstance == null) {
            notFound()
            return
        }

        if (pruebaInstance.hasErrors()) {
            respond pruebaInstance.errors, view:'create'
            return
        }

        pruebaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'prueba.label', default: 'Prueba'), pruebaInstance.id])
                redirect pruebaInstance
            }
            '*' { respond pruebaInstance, [status: CREATED] }
        }
    }

    def edit(Prueba pruebaInstance) {
        respond pruebaInstance
    }

    @Transactional
    def update(Prueba pruebaInstance) {
        if (pruebaInstance == null) {
            notFound()
            return
        }

        if (pruebaInstance.hasErrors()) {
            respond pruebaInstance.errors, view:'edit'
            return
        }

        pruebaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Prueba.label', default: 'Prueba'), pruebaInstance.id])
                redirect pruebaInstance
            }
            '*'{ respond pruebaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Prueba pruebaInstance) {

        if (pruebaInstance == null) {
            notFound()
            return
        }

        pruebaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Prueba.label', default: 'Prueba'), pruebaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'prueba.label', default: 'Prueba'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
