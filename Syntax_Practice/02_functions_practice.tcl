#!/usr/bin/env tclsh

# TCL Functions Practice Problems
# Write your functions in the TODO sections

puts "=== TCL Functions Practice Problems ==="

# Problem 1: Basic Procedure
puts "\n1. Basic Procedure:"
# TODO: Define a procedure called 'greet' that takes a name parameter
# and prints "Hello, [name]! Welcome to TCL!"
# Then call the procedure with your name

# Problem 2: Procedure with Multiple Parameters
puts "\n2. Procedure with Multiple Parameters:"
# TODO: Define a procedure called 'calculate' that takes three parameters:
# - operation (string: "add", "subtract", "multiply", "divide")
# - a (number)
# - b (number)
# The procedure should perform the specified operation and return the result

# TODO: Test your calculate procedure with different operations
# puts "10 + 5 = [calculate add 10 5]"
# puts "10 - 5 = [calculate subtract 10 5]"
# puts "10 * 5 = [calculate multiply 10 5]"
# puts "10 / 5 = [calculate divide 10 5]"

# Problem 3: Procedure with Default Parameters
puts "\n3. Procedure with Default Parameters:"
# TODO: Define a procedure called 'power' that takes two parameters:
# - base (required)
# - exponent (optional, default to 2)
# The procedure should return base raised to the power of exponent

# TODO: Test your power procedure
# puts "5^2 = [power 5]"
# puts "5^3 = [power 5 3]"

# Problem 4: Procedure with Variable Arguments
puts "\n4. Procedure with Variable Arguments:"
# TODO: Define a procedure called 'sum' that takes any number of arguments
# and returns their sum
# Test it with different numbers of arguments

# Problem 5: Recursive Procedure
puts "\n5. Recursive Procedure:"
# TODO: Define a recursive procedure called 'factorial' that takes a number n
# and returns the factorial of n (n!)
# Remember: factorial(0) = 1, factorial(1) = 1, factorial(n) = n * factorial(n-1)
# Test it with different numbers

# Problem 6: Procedure Returning Multiple Values
puts "\n6. Procedure Returning Multiple Values:"
# TODO: Define a procedure called 'minmax' that takes any number of arguments
# and returns a list containing the minimum and maximum values
# Test it with different sets of numbers

# Problem 7: Global Variables in Procedures
puts "\n7. Global Variables in Procedures:"
# TODO: Create a global variable called 'counter' and set it to 0
# Then define a procedure called 'increment_counter' that:
# - Uses the global counter variable
# - Increments it by 1
# - Returns the new value
# Test it multiple times to see the counter increase

puts "\n=== End of Functions Practice ==="
puts "Write your functions in the TODO sections above!" 