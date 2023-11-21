import wollok.game.*
import personaje.*
import colisionables.*

object enemigo{
	var property x = 12
	var property y = 2
	var property position = game.at(x,y)
	var property posi_ant_ene = []
	var property sig_elemento 
	var property identificador = "enemigo"
	
	method image(){
		return "fullmonster.png"
		}
	
/*  	method sig_elemento(sig_posicion){
	if(sig_posicion.identificador() == "pared"){
		self.position(posi_ant_ene)
	}
}*/

//metodo para seguir al personaje, recibe por parametro a perso en represensacion del personaje
	method seguir_personaje(perso) {

//si la posicion x del personaje es mayor a la posicion x del enemigo, el enemigo avanza a la derecha 
    if(personaje.position().x() > position.x()){ 
    	posi_ant_ene = self.position()
    	position = position.right(1)}

    
//si la posicion x del personaje es menor a la posicion x del enemigo, el enemigo avanza a la izquierda 
    if(personaje.position().x() < position.x()){
    	posi_ant_ene = self.position()
    	position = position.left(1)}
   
    
//si la posicion y del personaje es mayor a la posicion y del enemigo, el enemigo avanza arriba 
    if(personaje.position().y() > position.y()){
    	posi_ant_ene = self.position()
    	position = position.up(1)}
    
//si la posicion y del personaje es menor a la posicion y del enemigo, el enemigo avanza abajo 
if(personaje.position().y() < position.y()){
    	posi_ant_ene = self.position()
    	position = position.down(1)}
    	
    game.whenCollideDo(self, {elemento =>
			if(elemento.identificador() == "pared"){
				self.position(posi_ant_ene)
				}})
    

				

  
}}
  