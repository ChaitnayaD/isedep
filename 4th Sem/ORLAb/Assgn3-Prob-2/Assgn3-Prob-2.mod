/*********************************************
 * OPL 20.1.0.0 Model
 * Author: Chaitanya Dhuware
 * Creation Date: 19-Feb-2022 at 2:10:30 pm
 *********************************************/
 int size = ...;
 range S = 1..size;
 int Tottime[S][S]=...;
 
 int supply[S]=...;
 int demand[S]=...;
 
 dvar boolean T[S][S];
 
 dexpr int Totaltime=sum(i in S,j in S)Tottime[i][j]*T[i][j];
 
 minimize Totaltime;
 
 subject to 
 {
   forall(i in S){sum(k in S)T[i][k]==supply[i] ;}
   forall(j in S){sum(k in S)T[k][j]==demand[j] ;}
 }   
 
 