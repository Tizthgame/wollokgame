import wollok.game.*
import enemigo.*
import colisionables.*
import Mapa.*

object personaje{
	var property x
	var property y
	var property position = game.at(x,y)
	var property cant_llaves = 0
	var property antorcha_en_mano = false
	method identificador() = "heroe"
	
	method image(){
		return "personajefinal.png"
	}
	
		
// Obtiene una posicion y verifica si el primer objeto que se encuentra en ella es una pared.
	method verificar_pared(posicion){
		const quizas_pared = game.getObjectsIn(posicion)//obtiene los objetos en esa posicion
		return quizas_pared == [] or quizas_pared.get(0).identificador() != "Pared"
	}
	
//movimiento derecha,consulta si en la posicion a la derecha del personaje es distinto a 13(el limite del tablero),
//si esto se cumple el personaje avanza en esta direccion
	method mover_derecha(posi){
		if(position.right(1).x() != 13 and self.verificar_pared(position.right(1))){
			//posi_ant = position
			position = position.right(1)
			fondo_oscuras.position(fondo_oscuras.position().right(1))
			if(antorcha_en_mano){
				antorcha_mano.position(antorcha_mano.position().right(1))
			}
			}}
/*----------------------------------------------------------------------------------------------------- */
//movimiento izquierda, consulta si en la posicion a la izquierda del personaje es distinto a -1(el limite del tablero),
//si esto se cumple el personaje avanza en esta direccion
	method mover_izquerda(posi){
		if(position.left(1).x() != -1 and self.verificar_pared(position.left(1))){
			//posi_ant = position
			position = position.left(1)
			fondo_oscuras.position(fondo_oscuras.position().left(1))
			if(antorcha_en_mano){
				antorcha_mano.position(antorcha_mano.position().left(1))
			}
		}}
/*----------------------------------------------------------------------------------------------------- */
//movimiento arriba, consulta si en la posicion a la arriba del personaje es distinto a 7(el limite del tablero),
//si esto se cumple el personaje avanza en esta direccion
	method mover_arriba(posi){
		if(position.up(1).y() != 7 and self.verificar_pared(position.up(1))){
			//posi_ant = position
			position = position.up(1)
			fondo_oscuras.position(fondo_oscuras.position().up(1))
				if(antorcha_en_mano){
				antorcha_mano.position(antorcha_mano.position().up(1))
			}
		}}
/*----------------------------------------------------------------------------------------------------- */
//movimiento abajo, consulta si en la posicion a la abajo del personaje es distinto a -1(el limite del tablero),
//si esto se cumple el personaje avanza en esta direccion
	method mover_abajo(posi){
		if(position.down(1).y() != -1 and self.verificar_pared(position.down(1))){
			//posi_ant = position
			position = position.down(1)
			fondo_oscuras.position(fondo_oscuras.position().down(1))
				if(antorcha_en_mano){
				antorcha_mano.position(antorcha_mano.position().down(1))
			}
		}}


	method morir(){
		if(cant_llaves != 0){
			cant_llaves = 0
			game.addVisual(llave)}
		antorcha_en_mano = false
		position = game.at(x,y)
		
	}
	
	method agarrar_llaves(llav){
		cant_llaves += 1
		game.say(self, "Tengo " + cant_llaves  + " Llaves")
		game.removeVisual(llave)
	}
	
	method escapar(){
		cant_llaves -= 1
		//game.stop()
		}
}