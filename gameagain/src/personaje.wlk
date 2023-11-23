import wollok.game.*
import enemigo.*
import colisionables.*
import assets.*




object personaje{
	var property x = 0
	var property y = 3
	var property position = game.at(x,y)
	var property cant_llaves = 0
	var property posi_ant = []
	
	method identificador() = "heroe"
	
	method image(){
		return "personajefinal.png"
	}
	method image_izqui(){
		return "personajefinalizqui.png"
	}

	method morir(){
		if(cant_llaves != 0){
			cant_llaves = 0
			
			game.addVisual(llave)
		}
		game.removeVisual(self)
		position = game.at(x,y)
		game.addVisual(self)

		
	}
	
	method agarrar_llaves(){
		cant_llaves += 1
		game.say(self, "Tengo " + cant_llaves  + " Llaves")
		game.removeVisual(llave)
	}
	method escapar(){
		cant_llaves -= 1
		game.stop()
	
		}
}



/*object nivel {
// ...
 method dibujarParedVertical(inicio, fin, pos){
 (inicio..fin).forEach{n => self.dibujar(
 new Laberinto( position = game.at(pos,n))
 )}
 }
// ...
}
 */