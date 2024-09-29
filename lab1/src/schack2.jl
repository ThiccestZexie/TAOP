#  Load packages
#-------------------------------------------------------------------------------
using JuMP, HiGHS

#-------------------------------------------------------------------------------
# Additional functions
#-------------------------------------------------------------------------------

include("additional_functions.jl")

CHESTER = Model(HiGHS.Optimizer)    

@variable(CHESTER, x[i in 1:8, j in 1:8], Bin)

@objective(CHESTER, Max, sum(x[i,j] for i in 1:8 , j in 1:8 ))

@constraint(CHESTER, con5[i in 1:8], sum(x[i,j] for j in 1:8) <=1)
@constraint(CHESTER, con6[j in 1:8], sum(x[i,j] for i in 1:8) <=1)

@constraint(CHESTER, con1[k in 0:6], sum(x[i+k,i] for i in 1:(8-k)) <=1)
@constraint(CHESTER, con2[k in 1:6], sum(x[i,i+k] for i in 1:(8-k)) <=1)
@constraint(CHESTER, con3[k in 1:6], sum(x[i,9-k-i] for i in 1:(8-k)) <=1)
@constraint(CHESTER, con4[k in 0:6], sum(x[i+k,9-i] for i in 1:(8-k)) <=1)

println("\n\n\n>>> SOLVING SET COVERING PROBLEM <<<\n")

solution = optimize!(CHESTER)

println("\n\n\n>>> OPTIMAL SOLUTION <<<\n")
println(avdelare)
zStar = objective_value(CHESTER)
zStar = round(zStar,digits=2)
println( "Optimal objective value:\n $(zStar)")
println(avdelare)
#-------------------------------------------------------------------------------
println("Optimal Solution:")
println(avdelare)
#-------------------------------------------------------------------------------
print_chess(value.(x))