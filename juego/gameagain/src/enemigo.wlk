import wollok.game.*
import personaje.*

object enemigo{
	var property x = 8
	var property y = 3
	var property position = game.at(x,y)
	method image(){
		return "fullmonster.png"
		}
	method identificador() = "enemigo"
	
//metodo para seguir al personaje, recibe por parametro a perso en represensacion del personaje,
	method seguir_personaje(perso) {
//si la posicion x del personaje es mayor a la posicion x del enemigo, el enemigo avanza a la derecha 
    if(perso.position().x() > position.x()){ position = position.right(1)}
    
//si la posicion x del personaje es menor a la posicion x del enemigo, el enemigo avanza a la izquierda 
    if(perso.position().x() < position.x()){position = position.left(1)}
    
//si la posicion y del personaje es mayor a la posicion y del enemigo, el enemigo avanza arriba 
    if(perso.position().y() > position.y()){position = position.up(1)}
    
//si la posicion y del personaje es menor a la posicion y del enemigo, el enemigo avanza abajo 
    if(perso.position().y() < position.y()){position = position.down(1)}
 }
   
}