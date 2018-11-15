
class Cerveza {
	var property costoLupulo 
	var property costoLevadura
	
	method costoLupulo() {
		return costoLupulo
	} 
	
	method costoLevadura() {
		return costoLevadura
	}
	
	method usoLupuloImp() {
		costoLupulo = 1000
	}
	
	method usoLupuloNac() {
		costoLupulo = 800
	}
	
	method usoLevaduraBaja() {
		costoLevadura = 0
	}
	
	method usoLevaduraAlta() {
		costoLevadura = costoLupulo * 0.1
	}


}

class Clasica inherits Cerveza {
	
	method costo() {
		return costoLevadura + costoLupulo
	}
}


class Lager inherits Cerveza {
	var property cantidadIngredientes = 0
	
	method cantidadIngredientes() {
		return cantidadIngredientes
		}
	
	
	method agregarIngredientes(numeroDeIngredientes) {
		cantidadIngredientes += numeroDeIngredientes
	}
	
	method quitarIngredientes(numeroDeIngredientes) {
		cantidadIngredientes -= numeroDeIngredientes
	}
	
	method costo(){
		return costoLevadura + costoLupulo + (cantidadIngredientes * 50)
	}
}

class Porter inherits Cerveza {
	
	var property distanciaProveedor 
	
	method distanciaProveedor(cantidadKilometros) {
		distanciaProveedor = cantidadKilometros
	} 
	
	method costo(){
		return (costoLevadura + costoLupulo) + (distanciaProveedor * 0.02)
	}
}



