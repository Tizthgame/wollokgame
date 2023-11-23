import wollok.game.*
import colisionables.*
//Paredes dentro de la pantalla
const pared_0 = new Pared(x_pare =0, y_pare = 4, identificador = "pared")
const pared_1 = new Pared(x_pare= 0, y_pare = 5, identificador = "pared")
const pared_2 = new Pared(x_pare =1, y_pare = 1, identificador = "pared")
const pared_3 = new Pared(x_pare =1, y_pare = 2, identificador = "pared")
const pared_4 = new Pared(x_pare =2, y_pare = 4, identificador = "pared")
const pared_5 = new Pared(x_pare =2, y_pare = 6, identificador = "pared")
const pared_6 = new Pared(x_pare =3, y_pare = 0, identificador = "pared")
const pared_7 = new Pared(x_pare =3, y_pare = 1, identificador = "pared")
const pared_8 = new Pared(x_pare =3, y_pare = 3, identificador = "pared")
const pared_9 = new Pared(x_pare =4, y_pare = 0, identificador = "pared")
const pared_10 = new Pared(x_pare =4, y_pare = 3, identificador = "pared")
const pared_11 = new Pared(x_pare =4, y_pare = 5, identificador = "pared")
const pared_12 = new Pared(x_pare =5, y_pare = 0, identificador = "pared")
const pared_13 = new Pared(x_pare =5, y_pare = 2, identificador = "pared")
const pared_14 = new Pared(x_pare =5, y_pare = 3, identificador = "pared")
const pared_15 = new Pared(x_pare =5, y_pare = 5, identificador = "pared")
const pared_16 = new Pared(x_pare =6, y_pare = 4, identificador = "pared")
const pared_17 = new Pared(x_pare =7, y_pare = 1, identificador = "pared")
const pared_18 = new Pared(x_pare =7, y_pare = 2, identificador = "pared")
const pared_19 = new Pared(x_pare =7, y_pare = 4, identificador = "pared")
const pared_20 = new Pared(x_pare =7, y_pare = 6, identificador = "pared")
const pared_21 = new Pared(x_pare =8, y_pare = 0, identificador = "pared")
const pared_22 = new Pared(x_pare =8, y_pare = 1, identificador = "pared")
const pared_23 = new Pared(x_pare =8, y_pare = 2, identificador = "pared")
const pared_24 = new Pared(x_pare =8, y_pare = 4, identificador = "pared")
const pared_25 = new Pared(x_pare =8, y_pare = 6, identificador = "pared")
const pared_26 = new Pared(x_pare =10, y_pare = 1, identificador = "pared")
const pared_27 = new Pared(x_pare =10, y_pare = 2, identificador = "pared")
const pared_28 = new Pared(x_pare =10, y_pare = 3, identificador = "pared")
const pared_29 = new Pared(x_pare =10, y_pare = 5, identificador = "pared")
const pared_30 = new Pared(x_pare =11, y_pare = 1, identificador = "pared")
const pared_31 = new Pared(x_pare =11, y_pare = 3, identificador = "pared")
const pared_32 = new Pared(x_pare =11, y_pare = 5, identificador = "pared")
const pared_33 = new Pared(x_pare =5, y_pare = 4, identificador = "pared")

//Limite izquierda abajo
const pared_lim_1 = new Pared(x_pare =-1, y_pare = -1, identificador = "pared")

//Limite de abajo
const pared_lim_2 = new Pared(x_pare =0, y_pare = -1, identificador = "pared")
const pared_lim_3 = new Pared(x_pare =1, y_pare = -1, identificador = "pared")
const pared_lim_4 = new Pared(x_pare =2, y_pare = -1, identificador = "pared")
const pared_lim_5 = new Pared(x_pare =3, y_pare = -1, identificador = "pared")
const pared_lim_6 = new Pared(x_pare =4, y_pare = -1, identificador = "pared")
const pared_lim_7 = new Pared(x_pare =5, y_pare = -1, identificador = "pared")
const pared_lim_8 = new Pared(x_pare =6, y_pare = -1, identificador = "pared")
const pared_lim_9 = new Pared(x_pare =7, y_pare = -1, identificador = "pared")
const pared_lim_10 = new Pared(x_pare =8, y_pare = -1, identificador = "pared")
const pared_lim_11 = new Pared(x_pare =9, y_pare = -1, identificador = "pared")
const pared_lim_12 = new Pared(x_pare =10, y_pare = -1, identificador = "pared")
const pared_lim_13 = new Pared(x_pare =11, y_pare = -1, identificador = "pared")
const pared_lim_14 = new Pared(x_pare =12, y_pare = -1, identificador = "pared")

//Esquina derecha abajo
const pared_lim_15 = new Pared(x_pare =13, y_pare = -1, identificador = "pared")

//Limite de la Derecha
const pared_lim_22 = new Pared(x_pare = 13, y_pare = 0, identificador = "pared")
const pared_lim_16 = new Pared(x_pare = 13, y_pare = 1, identificador = "pared")
const pared_lim_17 = new Pared(x_pare = 13, y_pare = 2, identificador = "pared")
const pared_lim_18 = new Pared(x_pare = 13, y_pare = 3, identificador = "pared")
const pared_lim_19 = new Pared(x_pare = 13, y_pare = 4, identificador = "pared")
const pared_lim_20 = new Pared(x_pare = 13, y_pare = 5, identificador = "pared")
const pared_lim_21 = new Pared(x_pare = 13, y_pare = 6, identificador = "pared")


//Limite derecha arriba
const pared_lim_23 = new Pared(x_pare = 13, y_pare = 7, identificador = "pared")

//Limite a la Izquierda
const pared_lim_24 = new Pared(x_pare =-1, y_pare = 0, identificador = "pared")
const pared_lim_25 = new Pared(x_pare =-1, y_pare = 1, identificador = "pared")
const pared_lim_26 = new Pared(x_pare =-1, y_pare = 2, identificador = "pared")
const pared_lim_27 = new Pared(x_pare =-1, y_pare = 3, identificador = "pared")
const pared_lim_28 = new Pared(x_pare =-1, y_pare = 4, identificador = "pared")
const pared_lim_29 = new Pared(x_pare =-1, y_pare = 5, identificador = "pared")
const pared_lim_30 = new Pared(x_pare =-1, y_pare = 6, identificador = "pared")

//Limite izquierda arriba
const pared_lim_31 = new Pared(x_pare = -1, y_pare = 7, identificador = "pared")

//Limite Arriba
const pared_lim_32 = new Pared(x_pare = 0, y_pare = 7, identificador = "pared")
const pared_lim_33 = new Pared(x_pare = 1, y_pare = 7, identificador = "pared")
const pared_lim_34 = new Pared(x_pare = 2, y_pare = 7, identificador = "pared")
const pared_lim_35 = new Pared(x_pare = 3, y_pare = 7, identificador = "pared")
const pared_lim_36 = new Pared(x_pare = 4, y_pare = 7, identificador = "pared")
const pared_lim_37 = new Pared(x_pare = 5, y_pare = 7, identificador = "pared")
const pared_lim_38 = new Pared(x_pare = 6, y_pare = 7, identificador = "pared")
const pared_lim_39 = new Pared(x_pare = 7, y_pare = 7, identificador = "pared")
const pared_lim_40 = new Pared(x_pare = 8, y_pare = 7, identificador = "pared")
const pared_lim_41 = new Pared(x_pare = 9, y_pare = 7, identificador = "pared")
const pared_lim_42 = new Pared(x_pare = 10, y_pare = 7, identificador = "pared")
const pared_lim_43 = new Pared(x_pare = 11, y_pare = 7, identificador = "pared")
const pared_lim_44 = new Pared(x_pare = 12, y_pare = 7, identificador = "pared")

//Llave 
const llave = new Llave(x_lla = 12,y_lla = 6, identificador = "llave")

