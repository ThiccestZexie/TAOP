#-------------------------------------------------------------------------------
# Kapaciterade Lokaliseringsproblemet
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
#-------------------------------------------------------------------------------
using JuMP, HiGHS, Printf, GLPK
#-------------------------------------------------------------------------------
avdelare = repeat('-',60)


#-------------------------------------------------------------------------------
# Input data file
#-------------------------------------------------------------------------------
include("floc6.jl")
e = 1
#-------------------------------------------------------------------------------
# m						
# n
# s[i]
# d[j]
# f[i]
# c[i,j]						
#-------------------------------------------------------------------------------

 
#-------------------------------------------------------------------------------
# The model saved with name LOKAL
#-------------------------------------------------------------------------------
LOKAL = Model(GLPK.Optimizer)
set_optimizer_attribute(LOKAL, "msg_lev", GLPK.GLP_MSG_ON)

#----------------------------------------------------------------
# Define variables
# n = j, m = i
#----------------------------------------------------------------
@variable(LOKAL,x[1:m,1:n] >= 0) 
@variable(LOKAL,0 <= y[1:m] <= 1)
# @variable(LOKAL,y[1:m], Bin)
#----------------------------------------------------------------
#----------------------------------------------------------------
# Add Objective function
#----------------------------------------------------------------

@objective(LOKAL, Min, 
	sum(c[i,j]*x[i,j] for i in 1:m, j in 1:n)
	+
	sum(e*f[i]*y[i] for i in 1:m)
	)
#----------------------------------------------------------------
# Add Constraints
#----------------------------------------------------------------

@constraint(LOKAL, [i in 1:m], sum(x[i,j] for j in 1:n) <= s[i]*y[i])

@constraint(LOKAL, [j in 1:n], sum(x[i,j] for i in 1:m) == d[j])
#----------------------------------------------------------------
# Uppgift 6 constraint
#----------------------------------------------------------------
#@constraint(LOKAL, con3[j in 1:n, i in 1:m], x[i,j] <= d[j]*y[i])

#-------------------------------------------------------------------------------
# Solve the optimization problem
#-------------------------------------------------------------------------------
println(avdelare)
println("\n\n\n>>> SOLVING LOKAL PROBLEM <<<\n")
solution = optimize!(LOKAL)
println("\n Time: $(solve_time(LOKAL))")
println(avdelare)

#-------------------------------------------------------------------------------
# Print the objective function value and solution
#-------------------------------------------------------------------------------

status = termination_status(LOKAL)
isopt = cmp(string(status),"OPTIMAL")
isinfeas = cmp(string(status),"INFEASIBLE")
istime = cmp(string(status),"TIME_LIMIT")


#------------------------------------------------------------------------------------------
# In the following, the objective function value and the opened facilitities (y[i]=1).
# If you have another name for variable "y", change y[i] to your variable in the following.
#------------------------------------------------------------------------------------------
if isopt == 0
	println("\n>>> OPTIMAL SOLUTION <<<\n")
    println("Optimal objective value: ", round(objective_value(LOKAL),digits=3))
    println("\nOpened facilities:\n")
	for i in 1:m
		if round(value(y[i]),digits=3) > 0
			@printf("%s =   %s \n", name(y[i]), round(value(y[i]),digits=3) )
		end
	end
elseif istime == 0
	println("\n>>> Time limit reached <<<\n")
    println("Best found objective value: ", round(objective_value(LOKAL),digits=3))
	println("Relative gap: %", round(100*relative_gap(LOKAL),digits=3))
    println("\nOpened facilities:\n")
	for i in 1:m
		if round(value(y[i]),digits=3) > 0
			@printf("%s =   %s \n", name(y[i]), round(value(y[i]),digits=3) )
		end
	end
elseif isinfeas==0
    println("Model infeasible")
end

println(avdelare)
#-------------------------------------------------------------------------------


