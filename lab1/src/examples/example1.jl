# Load packages
using JuMP, HiGHS

# Create a model object LP, and use HiGHS as solver
LP = Model(HiGHS.Optimizer)

# Define variables
@variable( LP, x1 >= 0)
@variable( LP, x2 >= 0)
@variable( LP, x3 >= 0)
@variable( LP, x4 >= 0)

# Define the objective function (minimization problem)
@objective( LP, Min, 8*x1 + 14*x2 + 12*x3 + 20*x4 )

# Define the constraints
@constraint( LP, con1, x1 + 3*x2 + 2*x3 + 4*x4 >= 122)
@constraint( LP, con2, 7*x1 + 6*x2 + 6*x3 + 2*x4 >= 200)
@constraint( LP, con3, 3*x1 + x2 + 2*x3 + x4 >= 50)

# Display defined problem
println("Model for Example 1:")
print(LP)

# Solve the optimization problem
solution = optimize!(LP)

# Print solution
println("Optimal Solution x*:")
println("x1 = $(value.(x1))")
println("x2 = $(value.(x2))")
println("x3 = $(value.(x3))")
println("x4 = $(value.(x4))")

println("Optimal objective value:\n $(objective_value(LP))")
