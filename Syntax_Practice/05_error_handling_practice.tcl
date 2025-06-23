#!/usr/bin/env tclsh

# TCL Error Handling Practice Problems
# Write your code in the TODO sections

puts "=== TCL Error Handling Practice Problems ==="

# Problem 1: Basic Error Handling with catch
puts "\n1. Basic Error Handling with catch:"
# TODO: Use catch to handle division by zero
# Try to divide 10 by 0 and print "Error caught: [error message]" if it fails

# TODO: Use catch to handle accessing an undefined variable
# Try to print an undefined variable and handle the error

# Problem 2: Error Handling with Error Codes
puts "\n2. Error Handling with Error Codes:"
# TODO: Create a procedure called 'safe_divide' that:
# - Takes two parameters: dividend and divisor
# - Returns the result if division is successful
# - Throws a custom error with code "DIVIDE_BY_ZERO" if divisor is 0

# TODO: Test safe_divide with valid and invalid inputs
# Use catch to capture both the error message and error code

# Problem 3: Custom Error Procedures
puts "\n3. Custom Error Procedures:"
# TODO: Create a procedure called 'custom_error' that:
# - Takes a message and optional error code
# - Prints "CUSTOM ERROR: [message]"
# - Throws an error with the given message and code

# TODO: Test your custom_error procedure and catch the error

# Problem 4: Error Handling in Procedures
puts "\n4. Error Handling in Procedures:"
# TODO: Create a procedure called 'validate_input' that:
# - Takes a single parameter
# - Checks if the input is a positive integer
# - Throws an error if the input is invalid
# - Returns the input if valid

# TODO: Test validate_input with various inputs (valid and invalid)
# Use catch to handle the errors gracefully

# Problem 5: Try-Catch Equivalent
puts "\n5. Try-Catch Equivalent:"
# TODO: Create a procedure called 'try_catch' that:
# - Takes two parameters: try_block and catch_block
# - Executes try_block
# - If an error occurs, executes catch_block
# - Returns the result or error

# TODO: Test your try_catch procedure with a division by zero error

# Problem 6: Error Handling with File Operations
puts "\n6. Error Handling with File Operations:"
# TODO: Create a procedure called 'safe_file_read' that:
# - Takes a filename as parameter
# - Attempts to read the file
# - Returns the file content if successful
# - Returns an error message if the file doesn't exist

# TODO: Test safe_file_read with existing and non-existing files

# Problem 7: Debugging with errorInfo
puts "\n7. Debugging with errorInfo:"
# TODO: Create a procedure called 'debug_function' that:
# - Takes a parameter x
# - Attempts to multiply x by 2
# - If an error occurs, prints the error and the full errorInfo
# - Returns the result or "ERROR"

# TODO: Test debug_function with valid and invalid inputs

# Problem 8: Error Handling with Arrays
puts "\n8. Error Handling with Arrays:"
# TODO: Create a procedure called 'safe_array_access' that:
# - Takes array_name and key as parameters
# - Checks if the array exists
# - Checks if the key exists in the array
# - Returns the value or throws an appropriate error

# TODO: Test safe_array_access with existing and non-existing arrays/keys

# Problem 9: Error Handling with Regular Expressions
puts "\n9. Error Handling with Regular Expressions:"
# TODO: Create a procedure called 'safe_regex_match' that:
# - Takes pattern and string as parameters
# - Attempts to match the pattern against the string
# - Returns 1 if match found, 0 if no match, or error message if pattern is invalid

# TODO: Test safe_regex_match with valid and invalid patterns

# Problem 10: Comprehensive Error Handling
puts "\n10. Comprehensive Error Handling:"
# TODO: Create a procedure called 'robust_calculator' that:
# - Takes operation, a, and b as parameters
# - Validates that a and b are numbers
# - Validates that operation is one of: +, -, *, /
# - Checks for division by zero
# - Performs the calculation and returns the result
# - Throws appropriate errors for invalid inputs

# TODO: Test robust_calculator with various valid and invalid inputs

puts "\n=== End of Error Handling Practice ==="
puts "Write your code in the TODO sections above!"
puts "Remember: Good error handling makes your programs more robust!" 