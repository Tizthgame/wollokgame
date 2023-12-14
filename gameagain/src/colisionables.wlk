import wollok.game.*

class Pared{
	var property x_pare
	var property y_pare
	var property identificador = "Pared"
	method position() = game.at(x_pare ,y_pare)
	
	method image(){
		return "pared.png"
	

	}
}

object llave{
	var property x_lla
	var property y_lla
	var property identificador = "llave"
	method position() = game.at(x_lla,y_lla)
	
method image(){
  return "llavenueva.png"
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
object antorcha_mano{
	var property x_anto
	var property y_anto
	var property identificador = "antorcha_mano"
	var property encendida = true
	var property position = game.at(x_anto,y_anto)
	var property contador = 1
	
	method image(){ 
		if(contador == 8){
			contador = 1}
			contador +=1
	return "antorcha" + contador + ".png"	
}
	
}