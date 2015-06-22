int: m;
int: n;
 
array[1..m, 1..n] of int: c;
array[1..m] of var 0..1: x;

var int: sumx = sum(i in 1..m) (x[i]);

%solve :: int_search(x, first_fail, indomain_min, complete) minimize sumx;
solve minimize sumx;
% solve satisfy;

% each pair of floors connected by at least one elevator
constraint 
 forall(j in 1..n, k in 1..n) (
        sum(i in 1..m) (c[i,j]*c[i,k]*x[i]) >= 1
)
;

%% Plain output of x
% output [
%  if i = 1 then 
%     "sumx: " ++ show(sumx) ++ "\n"
%   else "" endif ++
%   show(i) ++ ": " ++ show(x[i]) ++ "\n"
%   | i in 1..m
% ];


output [ 
  "sumx: ", show(sumx), "\n"] ++ [show(x[i]) | i in 1..m]
++
[
  if i = 1 then "\n" else "" endif ++
    if (fix(x[i]) = 1) then show(c[i,j]) else "" endif
  | j in 1..n, i in 1..m
] ++ ["\n"];