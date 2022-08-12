/*********************************************
 * OPL 20.1.0.0 Model
 * Author: Chaitanya Dhuware
 * Creation Date: 20-Feb-2022 at 3:09:26 pm
 *********************************************/
int jobs=...;
int persons=...;

range J =1..jobs;
range P=1..persons;

int Time[J][P] = ...;


dvar boolean X[J][P];

dexpr int Z = sum( i in J, j in P)Time[i][j]*X[i][j];
minimize Z;

subject to{
  forall(i in J)sum(j in P)X[i][j]==1;
  forall(j in P)sum(i in J)X[i][j]==1;
}