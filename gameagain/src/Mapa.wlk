import wollok.game.*
import colisionables.*

object mapa{
	var property lista_mapa = []
	
	
}
object nivel_1{	
	var property indi_x = 0
	var property indi_y = 6
	
	var property posicion_visuales =
	   [0,0,1,0,0,0,0,1,1,0,0,0,2,
		1,0,0,0,1,1,0,0,0,0,1,1,0,
		1,0,1,0,0,1,1,1,1,0,0,0,0,
		0,0,0,1,1,1,0,0,0,0,1,1,0,
		0,1,0,1,0,0,0,1,1,0,1,0,0,
		0,1,0,0,0,1,0,1,1,0,1,1,0,
		0,0,0,1,1,1,0,0,1,0,3,0,0]
		
		method generar_visuales(){
			posicion_visuales.forEach({ n =>
				if(	n == 1){
					const pared = new Pared(x_pare = indi_x, y_pare= indi_y)
					game.addVisual(pared)}
				else if(n == 2){
					const llave = new Llave(x_lla = indi_x, y_lla= indi_y)
					game.addVisual(llave)}
				else if(n == 3){
					puerta.x_puerta(indi_x)
					puerta.y_puerta(indi_y)
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
}
