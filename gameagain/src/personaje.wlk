import wollok.game.*
import enemigo.*
import colisionables.*
import assets.*




object personaje{
	var property x = 0
	var property y = 3
	var property position = game.at(x,y)
	var property estado_vivo = true
	var property cant_llaves = 0
	
	method identificador() = "heroe"
	
	method image(){
		return "personajefinal.png"
	}


	method morir(){
		game.stop()
	}
	
	method agarrar_llave(){
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