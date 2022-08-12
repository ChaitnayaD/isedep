from pulp import *
problem=LpProblem("Question 2 ",LpMinimize)


x1=LpVariable("x1",lowBound=0)
x2=LpVariable("x2",lowBound=0)




problem+=7*x1+2*x2>=28
problem+=2*x1+12*x2>=24


problem+=50*x1+100*x2

output=problem.solve()
print(LpStatus[output])
print("The value of objective function is: ",problem.objective.value())
print("The value of x1 is:",value(x1))
print("The value of x2 is:",value(x2))


