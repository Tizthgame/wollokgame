import wollok.game.*
import enemigo.*


object personaje{
	var property x = 0
	var property y = 3
	var property position = game.at(x,y)
	
	
	method image(){
		return "personajefinal.png"
	}
	

	
//	method subir(){
//		keyboard.w().onPressDo{self.position(self.position()).up(1)}
//	}

	
	method putear() = "que te pasa hdmplqtrp"
	
	method chocar_enemigo() = self.position().x() == enemigo.position().x() and self.position().y() == enemigo.position().y()

	//method chocar_pared() = self.position().x() == pared.position().x() and self.position().y() == pared.position().y()
	

		
}
