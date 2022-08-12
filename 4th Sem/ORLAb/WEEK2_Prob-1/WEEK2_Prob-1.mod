/*********************************************
 * OPL 20.1.0.0 Model
 * Author: Chaitanya Dhuware
 * Creation Date: 09-Feb-2022 at 3:30:06 pm
 *********************************************/
int plant =3;
int DC =2;
range P=1..plant;
range C = 1..DC;
int TC[P][C] = [[50,300],[100,250],[500,125]];
int plantcapacity[P]=[1000,1500,1200];
int demand[C]=[2300,1400];
dvar int+ X[P][C];
dexpr int totalcost = sum(i in P, j in C)TC[i][j]*X[i][j];

minimize totalcost ;
 subject to {
   forall(i in P ){sum(j in C)X[i][j]<=plantcapacity[i];}
    forall(j in C ){sum(i in P)X[i][j]>=demand[j];}
   
 }
