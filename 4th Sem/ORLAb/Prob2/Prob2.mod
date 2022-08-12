/*********************************************
 * OPL 20.1.0.0 Model
 * Author: Chaitanya Dhuware
 * Creation Date: 06-Feb-2022 at 6:11:25 pm
 *********************************************/

 dvar float+ x1;
dvar float+ x2;

//objective function
dexpr float z= 50*x1+100*x2;

//build the model
minimize z;
subject to {
  c1 :7*x1+2*x2>= 28;

  c2: 2*x1+12*x2 >=24;
  
 
  
}
  execute{
   writeln("OBJECTIVE :",cplex.getObjValue());
   writeln("VAlue of X : ",x1);
   writeln("Value of Y : ",x2);
   writeln("Reduced cost  of X1 : ",x1.reducedCost);
   writeln("Reduced cost  of X2 : ",x2.reducedCost);
   writeln("Dual of   of c1 : ",c1.dual);
   writeln("Dual of   of c2 : ",c1.dual);
   writeln("Slack of   of c1 : ",c1.slack);
   writeln("Slack of   of c2 : ",c2.slack);
   
   
   
 }