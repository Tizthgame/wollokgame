import wollok.game.*
import personaje.*
import colisionables.*

object enemigo{
	var property x = 12
	var property y = 2
	var property position = game.at(x,y)
	var property posi_ant_ene = []
	var property identificador = "enemigo"
	var property choca = false
	
	method image(){
		return "fullmonster.png"
		}
		
//metodo para seguir al personaje, recibe por parametro a perso en represensacion del personaje
	method seguir_personaje(perso) {

//si la posicion x del personaje es mayor a la posicion x del enemigo, el enemigo avanza a la derecha 
    if(personaje.position().x() < position.x()){
    	posi_ant_ene = self.position()
    	position = position.left(1)}

    
//si la posicion x del personaje es menor a la posicion x del enemigo, el enemigo avanza a la izquierda 
  else if(personaje.position().x() > position.x()){ 
    	posi_ant_ene = self.position()
    	position = position.right(1)}
   
    
//si la posicion y del personaje es mayor a la posicion y del enemigo, el enemigo avanza arriba 
   else if(personaje.position().y() > position.y()){
    	posi_ant_ene = self.position()
    	position = position.up(1)}
    
//si la posicion y del personaje es menor a la posicion y del enemigo, el enemigo avanza abajo 
else if(personaje.position().y() < position.y()){
    	posi_ant_ene = self.position()
    	position = position.down(1)}
  
    	
    
    		}
    method esquivar_pared(perso){
		if(choca){
			if(personaje.position().x() < position.x() and choca and position.right(1).x() != 13){
				posi_ant_ene = null  
				position = position.right(1)}
			else if(personaje.position().x() > position.x() and choca and position.left(1).x() != -1){
				posi_ant_ene = null
				position = position.left(1)}
				
			else if(personaje.position().y() < position.y() and choca and position.up(1).y() != 7){
				posi_ant_ene = null
				position = position.up(1)}
				
			else if(personaje.position().y() > position.y() and choca and position.down(1).y() != -1){
				posi_ant_ene = null
				position = position.down(1)}
		}
	}
	

	/*method ruta_alter(perso){
		if(  position){}
	}*/
	}
    		

