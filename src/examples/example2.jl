# Load packages
using JuMP, HiGHS

# Parameters
c = [ 8 14 12 20 ]

a = [ -1 -3 -2 -4 ;
       7  6  6  2 ;
       3  1  2  1 ]

b = [ -122 200 50 ]

# number of constraints
m = length(b)
# number of variables
n = length(c)

# Create a model object LP, and use HiGHS as solver
LP = Model(HiGHS.Optimizer)

# Define variables
@variable( LP, x[1:n] >= 0 )

# Define the objective function (minimization problem)
@objective( LP, Min, sum( c[j]*x[j] for j in 1:n ) )

# Define constraints (as <= constraints)
@constraint( LP, con[i in 1:m], sum( a[i,j]*x[j] for j in 1:n ) <= b[i] )

# Display defined problem
println("Model for Example 2:")
print(LP)

# Solve the optimization problem
solution = optimize!(LP)

# Print solution
println("Optimal solution:\n ", value.(x) )
println("Optimal objective value:\n $(objective_value(LP))")
