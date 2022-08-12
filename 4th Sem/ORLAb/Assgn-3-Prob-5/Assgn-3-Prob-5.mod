/*********************************************
 * OPL 20.1.0.0 Model
 * Author: Chaitanya Dhuwrae
 * Creation Date: 19-Feb-2022 at 7:14:15 pm
 *********************************************/

int halls=...;
int toppers=...;

range J =1..halls;
range P=1..toppers;

int allotmentpref[P][J] = ...;


dvar boolean X[P][J];

dexpr int Z = sum( i in P, j in J)allotmentpref[i][j]*X[i][j];
maximize Z;//maximizing the preference the weights in given in the excel

subject to{
  forall(i in P)sum(j in J)X[i][j]==1;
  forall(j in J)sum(i in P)X[i][j]==1;
}


