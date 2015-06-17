include "alldifferent.mzn";

set of int: Size = 1..7;
array [1..7,1..7] of var int: MATRIX;

%Rango del 1 al 7
constraint forall(i in Size, j in Size) 
            (MATRIX[i,j] > 0);
constraint forall(i in Size, j in Size) 
            (MATRIX[i,j] < 8);

%Diferencia en Filas
constraint forall(i in Size) 
            (alldifferent( [MATRIX[1,i], MATRIX[2,i], MATRIX[3,i], MATRIX[4,i], MATRIX[5,i], MATRIX[6,i], MATRIX[7,i] ] ));

%Diferencia en Columnas
constraint forall(i in Size) 
            (alldifferent( [MATRIX[i,1], MATRIX[i,2], MATRIX[i,3], MATRIX[i,4], MATRIX[i,5], MATRIX[i,6], MATRIX[i,7] ] ));

%Diferencia en caminos
constraint alldifferent( [MATRIX[1,1], MATRIX[1,2], MATRIX[1,3], MATRIX[1,4], MATRIX[2,4], MATRIX[2,5], MATRIX[3,5] ] );
constraint alldifferent( [MATRIX[1,5], MATRIX[1,6], MATRIX[1,7], MATRIX[2,6], MATRIX[3,6], MATRIX[4,5], MATRIX[4,4] ] );
constraint alldifferent( [MATRIX[2,1], MATRIX[2,2], MATRIX[3,1], MATRIX[4,1], MATRIX[5,1], MATRIX[6,1], MATRIX[6,2] ] );
constraint alldifferent( [MATRIX[2,3], MATRIX[3,2], MATRIX[3,3], MATRIX[3,4], MATRIX[4,2], MATRIX[4,3], MATRIX[5,3] ] );
constraint alldifferent( [MATRIX[2,7], MATRIX[3,7], MATRIX[4,6], MATRIX[4,7], MATRIX[5,7], MATRIX[6,7], MATRIX[7,7] ] );
constraint alldifferent( [MATRIX[5,2], MATRIX[6,3], MATRIX[5,4], MATRIX[6,4], MATRIX[6,5], MATRIX[5,5], MATRIX[5,6] ] );
constraint alldifferent( [MATRIX[7,1], MATRIX[7,2], MATRIX[7,3], MATRIX[7,4], MATRIX[7,5], MATRIX[7,6], MATRIX[6,6] ] );

%Restricciones de Iniciales
constraint MATRIX[1,3] == 2;
constraint MATRIX[1,5] == 4;
constraint MATRIX[2,2] == 5;
constraint MATRIX[2,6] == 2;
constraint MATRIX[3,7] == 6;
constraint MATRIX[4,2] == 7;
constraint MATRIX[4,6] == 5;
constraint MATRIX[5,7] == 7;
constraint MATRIX[6,2] == 6;
constraint MATRIX[6,6] == 4;
constraint MATRIX[7,3] == 1;
constraint MATRIX[7,5] == 2;  

solve satisfy;


output [show(MATRIX[1,1]), " ", show(MATRIX[1,2]), " ", show(MATRIX[1,3]), " ",
        show(MATRIX[1,4]), " ", show(MATRIX[1,5]), " ", show(MATRIX[1,6]), " ", show(MATRIX[1,7]), "\n",
        show(MATRIX[2,1]), " ", show(MATRIX[2,2]), " ", show(MATRIX[2,3]), " ",
        show(MATRIX[2,4]), " ", show(MATRIX[2,5]), " ", show(MATRIX[2,6]), " ", show(MATRIX[2,7]), "\n",
        show(MATRIX[3,1]), " ", show(MATRIX[3,2]), " ", show(MATRIX[3,3]), " ",
        show(MATRIX[3,4]), " ", show(MATRIX[3,5]), " ", show(MATRIX[3,6]), " ", show(MATRIX[3,7]), "\n",
        show(MATRIX[4,1]), " ", show(MATRIX[4,2]), " ", show(MATRIX[4,3]), " ",
        show(MATRIX[4,4]), " ", show(MATRIX[4,5]), " ", show(MATRIX[4,6]), " ", show(MATRIX[4,7]), "\n",
        show(MATRIX[5,1]), " ", show(MATRIX[5,2]), " ", show(MATRIX[5,3]), " ",
        show(MATRIX[5,4]), " ", show(MATRIX[5,5]), " ", show(MATRIX[5,6]), " ", show(MATRIX[5,7]), "\n",
        show(MATRIX[6,1]), " ", show(MATRIX[6,2]), " ", show(MATRIX[6,3]), " ",
        show(MATRIX[6,4]), " ", show(MATRIX[6,5]), " ", show(MATRIX[6,6]), " ", show(MATRIX[6,7]), "\n",
        show(MATRIX[7,1]), " ", show(MATRIX[7,2]), " ", show(MATRIX[7,3]), " ",
        show(MATRIX[7,4]), " ", show(MATRIX[7,5]), " ", show(MATRIX[7,6]), " ", show(MATRIX[7,7]), "\n",]