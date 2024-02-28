(TECLADO)

    @16384
    D=A
    @pantalla
    M=D
     
    @16     //contador a la panta
    D=A
    @cont1
    M=D

    @128
    D=A
    @cont2
    M=D

    @65     //"A" teclado
    D=A
    @24576 
    D=D-M  
    @PINTAR_A
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

(PINTAR_A)

    @pantalla
    A=M
    M=1

    @16
    D=A
    @pantalla
    M=M+D

    @cont1
    MD=M-1

    @pantalla
    A=M
    M=1

   
    @1
    D=A
    @pantalla
    M=M+D

    @cont1
    D=M
    @cont2
    MD=M-D

    @20431
    D=M
    @PINTAR
    D;JEQ
    



(BORRAR)

    @pantalla
    D=M
    @24576
    D=A-D
    @TECLADO
    D;JEQ
    @pantalla
    AM=M+1
    M=0

    @BORRAR
    0;JNE

(FIN)

    @FIN
    0;JMP

