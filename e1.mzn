include "alldifferent.mzn";

var int: A;
var int: B;
var int: C;
var int: D;
var int: E;
var int: F;
var int: G;
var int: H;
var int: I;

var float: FA;
var float: FB;
var float: FC;
var float: FD;
var float: FE;
var float: FF;
var float: FG;
var float: FH;
var float: FI;

%Restriccion Mayor a 0
constraint A > 0;
constraint B > 0;
constraint C > 0;
constraint D > 0;
constraint E > 0;
constraint F > 0;
constraint G > 0;
constraint H > 0;
constraint I > 0;

%Restriccion elementos diferentes
constraint alldifferent([A,B,C,D,E,F,G,H,I]);

%Tranformacion a flotante de los elementos
constraint FA == A;
constraint FB == B;
constraint FC == C;
constraint FD == D;
constraint FE == E;
constraint FF == F;
constraint FG == G;
constraint FH == H;
constraint FI == I;

%Restriccion de la ecuacion
constraint 1 == ((FA /(FB*FC))+(FD /(FE*FF))+(FG /(FH*FI)));

solve satisfy;

output ["A: ", show(A), "\n", "B: ", show(B), "\n", "C: ", show(C), "\n", 
        "D: ", show(D), "\n", "E: ", show(E), "\n", "F: ", show(F), "\n",
        "G: ", show(G), "\n", "H: ", show(H), "\n", "I: ", show(I), "\n"]