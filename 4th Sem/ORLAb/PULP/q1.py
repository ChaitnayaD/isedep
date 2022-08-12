from pulp import *
problem=LpProblem("Question 1 ",LpMaximize)


x1=LpVariable("x1",lowBound=0)
x2=LpVariable("x2",lowBound=0)




problem+=3*x1+5*x2<=150
problem+=x2<=20
problem+=8*x1+5*x2<=300

problem+=50*x1+40*x2

output=problem.solve()
print(LpStatus[output])
print("The value of objective function is: ",problem.objective.value())
print("The value of x1 is:",value(x1))
print("The value of x2 is:",value(x2))

