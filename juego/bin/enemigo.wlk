import wollok.game.*

object enemigo{
	var property x = 8
	var property y = 3
	var property position = game.at(x,y)
	var property identificador = "enemigo"
	method image(){
		return "fullmonster.png"
		}
	
	
	
	
	method movete() {
    x = 0.randomUpTo(game.width()).truncate(0)
    y = 0.randomUpTo(game.height()).truncate(0)
    position = game.at(x,y) 
		}

	

}