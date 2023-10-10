import wollok.game.*
import enemigo.*
import paredes.*



object personaje{
	var property x = 0
	var property y = 3
	var property position = game.at(x,y)
	var property estado_vivo = true
	
	
	method image(){
		return "personajefinal.png"
	}
	
	method putear() = "que te pasa hdmplqtrp"
	
	method morir(){estado_vivo = false}
	
	//method chocar(){self.position().x() == Paredes.position().x() and self.position().y() == paredes.position().y()}
	


	//method chocar_pared() = self.position().x() == pared.position().x() and self.position().y() == pared.position().y()
	

		
}
