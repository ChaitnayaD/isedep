/*********************************************
 * OPL 20.1.0.0 Model
 * Author: Chaitanya Dhuware
 * Creation Date: 19-Feb-2022 at 6:45:20 pm
 *********************************************/
int assets=...;
int bidders=...;

range J =1..assets;
range P=1..bidders;

int Revenue[J][P] = ...;


dvar boolean X[J][P];

dexpr int Z = sum( i in J, j in P)Revenue[i][j]*X[i][j];
maximize Z;

subject to{
  forall(i in J)sum(j in P)X[i][j]==1;
  forall(j in P)sum(i in J)X[i][j]==1;
}




