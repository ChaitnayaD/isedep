/*********************************************
 * OPL 20.1.0.0 Model
 * Author: Chaitanya Dhuware
 * Creation Date: 02-Feb-2022 at 4:07:50 pm
 *********************************************/
dvar float+ x1;
dvar float+ x2;

//objective function
dexpr float z= 50*x1+40*x2;

//build the model
maximize z;
subject to {
  c1 :3*x1+5*x2<= 150;
  c2 : x2<=20;
  c3: 8*x1+5*x2 <=300;
  
 
  
}
  execute{
   writeln("OBJECTIVE :",cplex.getObjValue());
   writeln("VAlue of X : ",x1);
   writeln("Value of Y : ",x2);
   writeln("Reduced cost  of X1 : ",x1.reducedCost);
   writeln("Reduced cost  of X2 : ",x2.reducedCost);
   writeln("Dual of   of c1 : ",c1.dual);
   writeln("Dual of   of c2 : ",c1.dual);
   writeln("Dual of   of c3 : ",c3.dual);
   writeln("Slack of   of c1 : ",c1.slack);
   writeln("Slack of   of c2 : ",c2.slack);
   writeln("Slack of   of c3 : ",c3.slack);
   
   
   
 }