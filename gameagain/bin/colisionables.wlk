import wollok.game.*
import assets.*

class Pared{
	var property x_pare
	var property y_pare
	var property identificador = "pared"
	method position() = game.at(x_pare ,y_pare)
	
	method image(){
		return "pared.png"
	

	}
}

class Llave{
	var property x_lla
	var property y_lla
	var property identificador = "llave"
	method position() = game.at(x_lla,y_lla)
	
method image(){
  return "llave.png"
	}	
}
object puerta{
	var property x_puerta 
	var property y_puerta 
	var property identificador = "puerta"
	
	method position() = game.at(x_puerta, y_puerta)
		
	method image(){
		return "puerta.png"
	}
	
}