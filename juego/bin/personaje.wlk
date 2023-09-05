import wollok.game.*

object personaje {
	var property position = game.origin()
	
	method image(){
		return "personajefinal.png"
	}
	method putear() = "que te pasa hdmplqtrp"
	method moverse(){
		keyboard.w().onPressDo{position = position.up(1) }
		keyboard.a().onPressDo{position = position.left(1) }
		keyboard.s().onPressDo{position = position.down(1) }
		keyboard.d().onPressDo{position = position.right(1) }
	}
	
}