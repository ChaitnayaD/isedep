from pulp import *
problem=LpProblem("Question 4 ",LpMaximize)


x1=LpVariable("x1",lowBound=0) #Child Saddles
x2=LpVariable("x2",lowBound=0) #Adult Saddles

#Constraints
problem+=20*x1+30*x2<=300
problem+=15*x1+10*x2<=150
#Objective Function
problem+=255*x1+375*x2

output=problem.solve()
print(LpStatus[output])

print("The value of objective function is: ",problem.objective.value())
print("The value of x1 is:",value(x1))
print("The value of x2 is:",value(x2))
