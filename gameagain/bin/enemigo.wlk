import wollok.game.*
import personaje.*
import colisionables.*
import Mapa.*

object enemigo{
	var property x
	var property y 
	var property position = game.at(x,y)
	var property posi_ant_ene = []
	var property identificador = "enemigo"
	
	method image(){
		return "fullmonster.png"
		}

method puede_avanzar(posicion){
	const verificar_es_pared = game.getObjectsIn(posicion)//obtiene todos los objetos en esa direcion
	return verificar_es_pared == [] or verificar_es_pared.get(0).identificador() != "Pared"}

method mover_arriba_ene(posi){
	posi_ant_ene = self.position()
    position = position.up(1)}
    
method mover_abajo_ene(posi){
	posi_ant_ene = self.position()
    position = position.down(1)}
    
method mover_izquierda_ene(posi){
	if(position.left(1).x() != -1){
		posi_ant_ene = self.position()
		position = position.left(1)}}

method mover_derecha_ene(posi){
	if(position.right(1).x() !=13 ){
		posi_ant_ene = self.position()
    	position = position.right(1)}}

	method seguir_personaje() {

    if(personaje.position().x() >position.x() and self.puede_avanzar(position.right(1))){
    	self.mover_derecha_ene(self.position())}

    
//si la posicion x del personaje es menor a la posicion x del enemigo, el enemigo avanza a la izquierda 
  else if(personaje.position().x() < position.x() and self.puede_avanzar(position.left(1))){ 
    	self.mover_izquierda_ene(self.position())}
   
    
//si la posicion y del personaje es mayor a la posicion y del enemigo, el enemigo avanza arriba 
   else if(personaje.position().y() > position.y() and self.puede_avanzar(position.up(1))){
    	self.mover_arriba_ene(self.position())}
    
//si la posicion y del personaje es menor a la posicion y del enemigo, el enemigo avanza abajo 
else if(personaje.position().y() < position.y() and self.puede_avanzar(position.down(1))){
    	self.mover_abajo_ene(self.position())}
  }

	}
    		

