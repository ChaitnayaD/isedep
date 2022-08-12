from pulp import *
problem=LpProblem("Practice 9 Feb ",LpMinimize)
x1=LpVariable("x1",lowBound=0)
x2=LpVariable("x2",lowBound=0)



problem+=-2*x1+3*x2==3
problem+=4*x1+5*x2>=10
problem+=4*x1+8*x2>=5

problem+=4*x1+6*x2

problem.solve()

output=problem.solve()
print(LpStatus[output])
print("The value of objective function is: ",problem.objective.value())
print("The value of x1 is:",value(x1))
print("The value of x2 is:",value(x2))

