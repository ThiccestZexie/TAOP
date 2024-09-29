# Load packages
using JuMP, HiGHS

# Create a model object LP, and use HiGHS as solver
LP = Model(HiGHS.Optimizer)

# Define variables
@variable( LP, 0 <= x1 <= 4)
@variable( LP, 0 <= x2 <= 3)
@variable( LP, 0 <= x3 <= 2)
@variable( LP, 0 <= x4 <= 8)
@variable( LP, 0 <= x5 <= 2)
@variable( LP, 0 <= x6 <= 2)

# Define the objective function (minimization problem)
@objective( LP, Min, 3*x1 + 2*x2 + 13*x3 + 9*x4 + 20*x5 + 19*x6 )

# Define the constraints
@constraint( LP, con1, 110*x1 + 205*x2 + 160*x3 + 160*x4 + 420*x5 + 260*x6 <= 2000)
@constraint( LP, con2, 4*x1 + 32*x2 + 13*x3 + 8*x4 + 4*x5 + 14*x6 <= 55)
@constraint( LP, con3, 2*x1 + 12*x2 + 54*x3 + 285*x4 + 22*x5 + 80*x6 <= 800)

# Display defined problem
println("Model for 2.2 diet problem:")
print(LP)

# Solve the optimization problem
solution = optimize!(LP)

# Print solution
println("Optimal Solution x*:")
println("x1 = $(value.(x1))")
println("x2 = $(value.(x2))")
println("x3 = $(value.(x3))")
println("x4 = $(value.(x4))")
println("x5 = $(value.(x5))")
println("x6 = $(value.(x6))")

println("Optimal objective value:\n $(objective_value(LP))")
