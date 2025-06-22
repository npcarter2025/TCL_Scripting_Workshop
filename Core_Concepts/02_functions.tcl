#!/usr/bin/env tclsh

# TCL Learning Script 2: Functions and Procedures
# This script covers function definitions and usage

puts "=== TCL Functions and Procedures ==="

# 1. Basic procedure definition
puts "\n1. Basic Procedure:"
proc greet {name} {
    puts "Hello, $name! Welcome to TCL!"
}

# Call the procedure
greet "Alice"
greet "Bob"

# 2. Procedure with multiple parameters
puts "\n2. Procedure with Multiple Parameters:"
proc calculate {operation a b} {
    switch $operation {
        "add" { return [expr $a + $b] }
        "subtract" { return [expr $a - $b] }
        "multiply" { return [expr $a * $b] }
        "divide" { 
            if {$b == 0} {
                return "Error: Division by zero"
            }
            return [expr $a / $b]
        }
        default { return "Error: Unknown operation" }
    }
}

# Test the calculate procedure
puts "10 + 5 = [calculate add 10 5]"
puts "10 - 5 = [calculate subtract 10 5]"
puts "10 * 5 = [calculate multiply 10 5]"
puts "10 / 5 = [calculate divide 10 5]"
puts "10 / 0 = [calculate divide 10 0]"

# 3. Procedure with default parameters
puts "\n3. Procedure with Default Parameters:"
proc power {base {exponent 2}} {
    return [expr $base ** $exponent]
}

puts "5^2 = [power 5]"
puts "5^3 = [power 5 3]"

# 4. Procedure with variable number of arguments
puts "\n4. Procedure with Variable Arguments:"
proc sum {args} {
    set total 0
    foreach num $args {
        set total [expr $total + $num]
    }
    return $total
}

puts "Sum of 1, 2, 3 = [sum 1 2 3]"
puts "Sum of 10, 20, 30, 40 = [sum 10 20 30 40]"

# 5. Recursive procedure (factorial)
puts "\n5. Recursive Procedure (Factorial):"
proc factorial {n} {
    if {$n <= 1} {
        return 1
    } else {
        return [expr $n * [factorial [expr $n - 1]]]
    }
}

puts "5! = [factorial 5]"
puts "6! = [factorial 6]"

# 6. Procedure that returns multiple values
puts "\n6. Procedure Returning Multiple Values:"
proc minmax {args} {
    if {[llength $args] == 0} {
        return "Error: No arguments provided"
    }
    
    set min [lindex $args 0]
    set max [lindex $args 0]
    
    foreach num $args {
        if {$num < $min} { set min $num }
        if {$num > $max} { set max $num }
    }
    
    return [list $min $max]
}

set result [minmax 5 2 8 1 9 3]
puts "Numbers: 5, 2, 8, 1, 9, 3"
puts "Min: [lindex $result 0], Max: [lindex $result 1]"

# 7. Global variables in procedures
puts "\n7. Global Variables in Procedures:"
set counter 0

proc increment_counter {} {
    global counter
    incr counter
    return $counter
}

puts "Counter: [increment_counter]"
puts "Counter: [increment_counter]"
puts "Counter: [increment_counter]"

puts "\n=== End of Functions ===" 