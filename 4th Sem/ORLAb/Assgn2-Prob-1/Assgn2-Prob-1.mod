/*********************************************
 * OPL 20.1.0.0 Model
 * Author: Chaitanya Dhuware
 * Creation Date: 09-Feb-2022 at 4:40:21 pm
 *********************************************/

 dvar float+ x1;//no of child sadle
 
dvar float+ x2;//no of adult sadle

//objective function
dexpr float z= 255*x1+375*x2;

//build the model
maximize z;
subject to {
  c1 :20*x1+30*x2<=300;

  c2: 15*x1+10*x2 <=150;
  
 
  
}