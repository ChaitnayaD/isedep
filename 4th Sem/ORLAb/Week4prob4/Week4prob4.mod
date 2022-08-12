/*********************************************
 * OPL 20.1.0.0 Model
 * Author: hp
 * Creation Date: 03-Mar-2022 at 11:37:23 pm
 *********************************************/
int size = ...;
 range S = 1..size;
 int cost[S][S]=...;
 
 int supply[S]=...;
 int demand[S]=...;
 
 dvar int+ T[S][S];
 
 dexpr float Totalcost=sum(i in S,j in S)cost[i][j]*T[i][j];
 
 minimize Totalcost;
 
 subject to 
 {
  c1: forall(i in S){sum(k in S)T[i][k]<=supply[i] ;}
  c2: forall(j in S){sum(k in S)T[k][j]>=demand[j] ;}
 
  }
    