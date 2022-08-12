/*********************************************
 * OPL 20.1.0.0 Model
 * Author: Chaitanya Dhuware
 * Creation Date: 09-Feb-2022 at 4:57:58 pm
 *********************************************/
int products=...;
int processes=...;
range P = 1..products;
range Q = 1..processes;
int cost[P]=...;

int manu[P]=...;
int assembly[P]=...;
int package[P]=...;
int hours[Q]=...;
dvar int+ X[P];

dexpr int totalsellcost = sum(i in P)cost[i]*X[i];

maximize totalsellcost;
subject to{
  sum(i in P)manu[i]*X[i]<=hours[1];
   sum(i in P)assembly[i]*X[i]<=hours[2];
    sum(i in P)package[i]*X[i]<=hours[3];
  
}