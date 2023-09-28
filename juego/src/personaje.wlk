import wollok.game.*


object personaje{

	var property position = game.at(0,3)
	
	
	method image(){
		return "personajefinal.png"
	}
	
	method moverse_P(){
	keyboard.w().onPressDo{self.position(self.position(game.height()+1)).w()}
	keyboard.a().onPressDo{self.position(self.position()).a(1)}
	keyboard.s().onPressDo{self.position(self.position()).s(1)}
	keyboard.d().onPressDo{self.position(self.position()).d(1)}
	
	}

	
	method putear() = "que te pasa hdmplqtrp"
	
	//method chocar_pared() = self.position().x() == pared.position().x() and self.position().y() == pared.position().y()

		
}