import wollok.game.*
import enemigo.*
import paredes.*
import paredes.*



object personaje{
	var property x = 0
	var property y = 3
	var property position = game.at(x,y)
	var property estado_vivo = true
	var property avanzar = true
	
	method image(){
		return "personajefinal.png"
	}
	
	method putear() = "que te pasa hdmplqtrp"
	
	method chocar_pared(Colicionables) = ((self.position().x() == Colicionables.position().x()) and self.position().y() == Colicionables.position().y())


	
	method morir(){estado_vivo = false}
	
	//method chocar(){self.position().x() == Paredes.position().x() and self.position().y() == paredes.position().y()}
	

		
}