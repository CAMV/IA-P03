int: m;
int: k;
int: n;
array[1..n, 1..m] of var 0..1: elevators;

solve satisfy;

constraint
  forall(i in 1..n-1, j in (i+1)..n) (
    exists(k in 1..m) (
      (elevators[i,k]*elevators[j,k]) == 1
    )
  );

constraint
  forall(i in 1..n) ((sum(j in 1..m) (elevators[i, j])) == k);

output [
  "El número m de ascensores requeridos es: ", show(m)
] ++ [
  if i = 1 then "\n" else "" endif ++
    show(elevators[i,j]) | i in 1..n, j in 1..m
] ++ ["\n"];
    