using Plots

print("Hello World")

# Generate test data
x = range(0, 2π, length=100)
y1 = sin.(x)
y2 = cos.(x)

# Create the initial plot
p = plot(x, y1, 
    label="sin(x)", 
    lw=2, 
    title="Julia Test Plot", 
    xlabel="x", 
    ylabel="y"
)

# Mutate the plot to add a second series
plot!(p, x, y2, label="cos(x)", lw=2, ls=:dash)

# Display or save
display(p)

