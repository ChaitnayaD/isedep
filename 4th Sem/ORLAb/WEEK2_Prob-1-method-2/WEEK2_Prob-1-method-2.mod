/*********************************************
 * OPL 20.1.0.0 Model
 * Author: Chaitanya Dhuware
 * Creation Date: 09-Feb-2022 at 3:43:47 pm
 *********************************************/
int plant =...;
int DC =...;
range P=1..plant;
range C = 1..DC;
int TC[P][C] = ...;
int plantcapacity[P]=...;
int demand[C]=...;
dvar int+ X[P][C];
dexpr int totalcost = sum(i in P, j in C)TC[i][j]*X[i][j];

minimize totalcost ;
 subject to {
   forall(i in P ){sum(j in C)X[i][j]<=plantcapacity[i];}
    forall(j in C ){sum(i in P)X[i][j]>=demand[j];}
   
 }
 