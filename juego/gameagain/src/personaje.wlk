import wollok.game.*
import enemigo.*
import paredes.*
import paredes.*



object personaje{
	var property x = 0
	var property y = 3
	var property position = game.at(x,y)
	var property estado_vivo = true
	method identificador() = "heroe"
	
	method image(){
		return "personajefinal.png"
	}
	
// methodo que sirve para identificar si hay algun objeto en la posicion del personaje y retorna una lista vacia o obtiene 
//el primer elemento de la lista donde el identificador sea "pared" 

method ident_pared(posicion){
const posi_pared = game.getObjectsIn(posicion)
return posi_pared == [] or posi_pared.get(0).identificador() != "pared"
}

	
	method morir(){estado_vivo = false
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