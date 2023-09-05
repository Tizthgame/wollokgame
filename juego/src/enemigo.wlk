import wollok.game.*

object enemigo{
	var property position = game.center()
	
	method image(){
		return "fullmonster.png"
		}
		
	method movete() {
    const x = 0.randomUpTo(game.width()).truncate(0)
    const y = 0.randomUpTo(game.height()).truncate(0)
    position = game.at(x,y) 
		}
	

}