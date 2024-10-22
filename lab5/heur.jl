#TAOP33 optimering :D Skapade av Daniel Alchasov och Samuel Åkesson

# Load data file
input_file = "data/floc8.jl"
include(input_file)
println("Running $input_file")


# Start timing
start_time = time()

x = zeros(size(c))  # x-matrix with flows between factory and customer
y = zeros(size(f))  # y-vector with ones for factories to be built

println("Number of factories: $m, number of customers: $n")
println("Total capacity: $(sum(s)), total demand: $(sum(d))")

ss = copy(s)  # remaining factory capacity, decrease as transports occur
dd = copy(d)  # remaining demand, decrease as transports occur
cc = copy(c)  # temp c, can be changed transport cost
ff = copy(f)  # temp f, can be changed factory cost
              # ss, dd, cc, ff can be changed, s, d, f, c should not be changed

# Set the value of e
e = 1
println("e=$e")


while sum(dd) > 0  # loop until all customer demands are met
    # choose factory, choose customer, send, in the cheapest way
    # update x, y, ss, and dd, and possibly ff and cc
    # set temporary values. 
    best_cost = Inf
    best_factory = -1
    best_customer = -1
    flow_possible = 0

    for j in 1:n # for each customer
        if dd[j] > 0 # this customer still has demand?
            for i in 1:m # for each factory
                if ss[i] > 0 # this factory still has supply
                    transport_cost = cc[i, j]
                    factory_cost = e * ff[i]
                    cost = transport_cost + factory_cost
                    
                    # if this is the cheapest way so far, remember it
                    if cost < best_cost
                        best_cost = cost
                        best_factory = i
                        best_customer = j
                        flow_possible = min(ss[i], dd[j])
                    end
                end 
            end
        end
    end
    # Update the solution   
    x[best_factory, best_customer] += flow_possible
    ss[best_factory] -= flow_possible
    dd[best_customer] -= flow_possible

    # if factory isnt built build it. 
    if y[best_factory] == 0
        y[best_factory] = 1
    end
end



println("Number of factories built: $(sum(y))")
final_cost = sum(sum(c .* x)) + e * sum(f .* y)
println("Total cost: $(round(final_cost, digits=2))")
str0 = join(y, " ")
println("Built factories: $str0")

# End timing
end_time = time()
println("Elapsed time: $(end_time - start_time) seconds")
