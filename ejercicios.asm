(TECLADO)

    @16400
    D=A
    @pantalla_vertical
    M=D

    @20416
    D=A
    @pantalla_horizontal
    M=D
     
    @16
    D=A
    @cont
    M=D

    @128
    D=A
    @cont2
    M=D

    @65     //"A" teclado
    D=A
    @24576 
    D=D-M  
    @PINTAR
    D;JEQ

    @66     // "B" teclado
    D=A
    @24576 
    D=D-M  
    @PINTAR_B
    D;JEQ
    
    @67     // "C" teclado
    D=A
    @24576 
    D=D-M  
    @BORRAR
    D;JEQ

    @TECLADO
    0;JMP

(PINTAR)

    @pantalla_vertical
    A=M
    M=-1

    @1
    D=A
    @pantalla_vertical
    M=M+D

    @cont
    MD=M-1

    @PINTAR
    D;JNE

    @pantalla_horizontal
    A=M
    M=-1

    @16
    D=A
    @pantalla_horizontal
    M=M+D

    @cont2
    D=M
    @cont2
    MD=M-1

    @PINTAR
    D;JNE
(BORRAR)

    @SCREEN 
    D=M
    @24576
    D=A-D
    @TECLADO
    D;JEQ
    @SCREEN
    AM=M+1
    M=0

    @BORRAR
    0;JNE
(FIN)

    @FIN
    0;JMP

