import wollok.game.*

class Colicionables{
	var property x
	var property y
	method identificador() = "pared"
	method position() = game.at(x,y)


method image(){
	return "pared.png"
}

}
const pared = new Colicionables(x =3, y = 4)