/*********************************************
 * OPL 20.1.0.0 Model
 * Author: Chaitanya Dhuware
 * Creation Date: 10-Feb-2022 at 9:58:57 pm
 *********************************************/
int desti =...;
int src =...;
range P=1..desti;
range C = 1..src;
int TC[P][C] = ...;
int capacity[P]=...;
int demand[C]=...;
dvar int+ X[P][C];
dexpr int totalcost = sum(i in P, j in C)TC[i][j]*X[i][j];

minimize totalcost ;
 subject to {
   forall(i in P ){sum(j in C)X[i][j]<=capacity[i];}
    forall(j in C ){sum(i in P)X[i][j]>=demand[j];}
   
 }
 