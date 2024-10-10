FROM julia:1.6.4

# Install the required packages: JuMP, HiGHS, Ipopt, Plots, DataFrames, JSON3
RUN julia -e \
'using Pkg; \
Pkg.add("JuMP"); \
Pkg.add("HiGHS"); \
Pkg.add("Ipopt"); \
Pkg.add("Plots"); \
Pkg.add("DataFrames"); \
Pkg.add("JSON3"); \
Pkg.add("GLPK")'

CMD ["tail", "-f", "/dev/null"]
