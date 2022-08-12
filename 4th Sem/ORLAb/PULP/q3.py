from pulp import *
problem=LpProblem("Question 3  ",LpMinimize)

#Decision Variables : Quantities of Each outlet from each 
x11=LpVariable("x11",lowBound=0)
x12=LpVariable("x12",lowBound=0)
x13=LpVariable("x13",lowBound=0)
x14=LpVariable("x14",lowBound=0)
x15=LpVariable("x15",lowBound=0)

x21=LpVariable("x21",lowBound=0)
x22=LpVariable("x22",lowBound=0)
x23=LpVariable("x23",lowBound=0)
x24=LpVariable("x24",lowBound=0)
x25=LpVariable("x25",lowBound=0)

x31=LpVariable("x31",lowBound=0)
x32=LpVariable("x32",lowBound=0)
x33=LpVariable("x33",lowBound=0)
x34=LpVariable("x34",lowBound=0)
x35=LpVariable("x35",lowBound=0)

#Balanced Transportation Problem(Demand== Supply)

#Supply Constraints
problem+=x11+x12+x13+x14+x15==40
problem+=x21+x22+x23+x24+x25==20
problem+=x31+x32+x33+x34+x35==40

#Demand Constraints
problem+=x11+x21+x31==25
problem+=x12+x22+x32==10
problem+=x13+x23+x33==20
problem+=x14+x24+x34==30
problem+=x15+x25+x35==15

problem+=55*x11+30*x12+40*x13+50*x14+40*x15+35*x21+30*x22+100*x23+45*x24+60*x25+40*x31+60*x32+95*x33+35*x34+30*x35

output=problem.solve()
print(LpStatus[output])
print("The value of objective function is: ",problem.objective.value())
print("The value of x11 is:",value(x11))
print("The value of x12 is:",value(x12))
print("The value of x13 is:",value(x13))
print("The value of x14 is:",value(x14))
print("The value of x15 is:",value(x15))

print("The value of x21 is:",value(x21))
print("The value of x22 is:",value(x22))
print("The value of x23 is:",value(x23))
print("The value of x24 is:",value(x24))
print("The value of x25 is:",value(x25))

print("The value of x31 is:",value(x31))
print("The value of x32 is:",value(x32))
print("The value of x33 is:",value(x33))
print("The value of x34 is:",value(x34))
print("The value of x35 is:",value(x35))