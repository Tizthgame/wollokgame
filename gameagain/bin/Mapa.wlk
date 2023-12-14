import wollok.game.*
import colisionables.*
import personaje.*
import enemigo.*

object fondo_oscuras{
	var property x 
	var property y 
	var property position = game.at(x,y)
	var property contador = 1
method volver_inicio(){
	position = game.at(personaje.position().x()-12,personaje.position().y()-6)
}

	method identificador() = "fondo_oscuras"

	method image(){ 
	return "fondo" + contador + ".png"	
}
}


object cargar_mapa{
	var property indi_x = 0
	var property indi_y = 6
	var property niv_actual = 0
	var property lista_niveles = [/*nivel_0,*/ nivel_1,nivel_2,nivel_3,nivel_4]
	
	method generar_visuales(posicion_visuales){
			posicion_visuales.forEach({ n =>
				 if(n == 1){
					const pared = new Pared(x_pare = indi_x, y_pare= indi_y)
					game.addVisual(pared)}
				else if(n == 5){
					personaje.position(game.at(indi_x, indi_y))
					game.addVisual(personaje)
					}
				else if(n == 2){
					llave.x_lla(indi_x)
					llave.y_lla(indi_y)
					game.addVisual(llave)
					}
				else if(n == 3){
					puerta.x_puerta(indi_x)
					puerta.y_puerta(indi_y)
					game.addVisual(puerta)
					
				}
				else if(n == 4){
					enemigo.position(game.at(indi_x, indi_y))
					game.addVisual(enemigo)
				}
				else if(n == 6){
					antorcha_mano.position(game.at(indi_x,indi_y))
					game.addVisual(antorcha_mano)
				}
				if (indi_x == 12){
					indi_y -= 1
					indi_x = 0
				}
				else{
					indi_x += 1
				}
					
			}
			)
			indi_y = 6
		}
	method cargar_nivel(){
		game.allVisuals().forEach({n =>
		game.removeVisual(n)})
	//genera los visuales de la lista niveles del nivel actual de la lista posicion_visuales
		if(niv_actual != lista_niveles.size()){
			self.generar_visuales(lista_niveles.get(niv_actual).posicion_visuales())
			fondo_oscuras.volver_inicio()
			game.addVisual(fondo_oscuras)
			niv_actual += 1}
			else{game.stop()}
	}
}
/*object nivel_0{
	var property posicion_visuales =
	   [0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,0,0,0,
		4,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,0,5,0,
		0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,0,0,0]
}*/
object nivel_1{	
	
	var property posicion_visuales =
	   [3,0,1,0,0,0,0,1,1,0,0,0,0,
		1,0,0,0,1,1,0,0,0,0,1,1,0,
		1,0,1,0,0,1,1,1,1,0,0,0,0,
		5,0,6,1,1,1,0,0,0,0,1,1,0,
		0,1,0,1,0,0,0,1,1,0,1,4,0,
		0,1,0,0,0,1,0,1,1,0,1,1,0,
		0,0,0,1,1,1,0,0,1,0,0,0,2]

} 
object nivel_2{	
	
	var property posicion_visuales =
	   [
	   	6,0,0,0,0,0,0,1,1,4,1,0,2,
		1,1,0,0,1,1,0,0,0,0,1,1,0,
		0,1,1,0,0,1,1,1,1,0,0,0,0,
		0,0,0,1,0,0,0,0,0,0,1,1,0,
		1,1,0,1,0,1,0,1,0,0,0,0,0,
		0,0,0,0,0,0,0,1,1,1,0,1,1,
		5,1,1,1,1,1,0,0,1,0,3,0,1]
		
		}
object nivel_3{
	var property posicion_visuales =
	   [0,6,2,1,3,0,0,0,1,0,0,4,0,
		0,1,1,1,1,1,1,0,1,0,1,1,1,
		0,0,0,0,0,1,0,0,1,0,0,0,0,
		1,1,1,1,0,1,1,0,1,0,0,0,0,
		0,1,1,0,0,0,1,0,0,0,1,5,0,
		0,1,0,0,1,0,1,1,1,1,1,0,0,
		0,0,0,1,1,0,0,0,0,0,0,0,1]
}
object nivel_4{
	var property posicion_visuales =
	   [1,3,1,0,1,6,1,0,0,0,0,0,0,
		0,0,0,0,1,0,0,0,1,0,0,1,2,
		1,1,0,1,1,1,0,1,1,0,0,1,1,
		0,1,0,1,0,1,5,1,4,0,0,0,1,
		0,1,0,0,0,1,1,1,0,0,1,0,0,
		0,1,1,0,0,0,1,1,0,0,1,0,0,
		0,0,0,0,1,0,0,0,0,1,1,0,0]/*1 pared 2llave 3puerta 4enemigo 5 personaje 6 antorcha */
}
object nivel_5{
	var property posicion_visuales =
	   [0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,0,0,0,
		4,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,0,5,0,
		0,0,0,0,0,0,0,0,0,0,0,0,0,
		0,0,0,0,0,0,0,0,0,0,0,0,0]
}

