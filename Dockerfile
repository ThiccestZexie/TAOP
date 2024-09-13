FROM julia:1.6.4

# Install the required packages: JumP
RUN julia -e \
'using Pkg;\
Pkg.add("JuMP");\
Pkg.add("HiGHS");\
Pkg.add("Ipopt")\
Pkg.add("Plots")\
Pkg.add("DataFrames")\
Pkg.add("JSON3")'

CMD ["tail", "-f", "/dev/null"]
