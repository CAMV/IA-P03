include "alldifferent.mzn";

var 0..9: A;
var 0..9: B;
var 0..9: C;
var 0..9: D;
var 0..9: E;
var 0..9: F;
var 0..9: G;
var 0..9: H;
var 0..9: I;
var 0..9: J;

%Cada elemento diferente
constraint alldifferent([A,B,C,D,E,F,G,H,I,J]);
%Diferencia positica
constraint 0 <= A*B*C*D*E - F*G*H*I*J;
%Minimizamos resta
solve minimize A*B*C*D*E - F*G*H*I*J;

output ["A: ", show(A), "\n", "B: ", show(B), "\n", "C: ", show(C), "\n", 
        "D: ", show(D), "\n", "E: ", show(E), "\n", "F: ", show(F), "\n",
        "G: ", show(G), "\n", "H: ", show(H), "\n", "I: ", show(I), "\n",
        "J: ", show(J), "\n", show(A*B*C*D*E - F*G*H*I*J) ];