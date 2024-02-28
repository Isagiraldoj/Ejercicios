//*********Programa para controlar la pantalla del computador Hack**************
//Ingrese su nombre: Alejandro Villegas
//Ingrese su ID: 481571
//
//A continuación puede agregar su código en Assembler para resolver el probmema
//@KBD(24576)                 @SCREEN


@24416 // Puntero de la última posición de pantalla dejando 5 pixeles abajo
D=A
@Maximo
M=D

@16543
D=A
@Minimo // Puntero de la última posición de pantalla dejando 5 pixeles arriba
M=D

(LetraA) //Método para reconocer letra "A"
@16544
D=A
@posicion //Puntero de posición donde pinta
M=D
@KBD
D=M
@65
D=D-A
@PantallaNegra 
D;JEQ //Salto si la salida es la letra "A"
@LetraA
0;JMP //Bucle


(PantallaNegra) //Método pintar pantalla negra
@posicion
A=M
M=-1
@posicion
M=M+1 //Puntero aumenta de forma ascendente
D=M
@Maximo 
A=M
D=D-A // Condición para que deje de pintar
@LetraB
D;JEQ // Salto si llegó a la última posición a pintar
@PantallaNegra
0;JMP // Bucle para pintar



(LetraB) //Método para reconocer letra "B"
@KBD
D=M
@66
D=D-A //Operación que reconoce que si es la tecla "B"
@PantallaBlanca
D;JEQ // Salto si la salida es la tecla "B"
@LetraB
0;JMP

(PantallaBlanca) //Método para pintar la pantalla
@posicion
A=M
M=0
@posicion
M=M-1 //Cambia posición de manera descendente
D=M
@Minimo
A=M
D=D-A 
@LetraA
D;JEQ // Salto si llega posición a pintar a puntero mínimo
@PantallaBlanca
0;JMP //Bucle para pintar

