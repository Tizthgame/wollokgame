import wollok.game.*

/*class Colicionables{
	var property x
	var property y
	method identificador() = "pared"
	method position() = game.at(x,y)


method image(){
	return "pared.png"
}

}*/
//const pared = new Colicionables(x =3, y = 4)
object pared{
	var property x = 3
	var property y = 4
	method identificador() = "pared"
	method position() = game.at(x,y)


method image(){
	return "pared.png"
}

	
}