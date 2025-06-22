#!/usr/bin/env tclsh

# TCL Learning Script 1: Basics
# This script covers fundamental TCL concepts

puts "=== TCL Basics ==="

# 1. Variables and assignment
puts "\n1. Variables and Assignment:"
set name "TCL Learner"
set age 25
set pi 3.14159
puts "Name: $name"
puts "Age: $age"
puts "Pi: $pi"

# 2. String operations
puts "\n2. String Operations:"
set greeting "Hello, World!"
puts "Original: $greeting"
puts "Length: [string length $greeting]"
puts "Uppercase: [string toupper $greeting]"
puts "Lowercase: [string tolower $greeting]"

# 3. Mathematical operations
puts "\n3. Mathematical Operations:"
set a 10
set b 3
puts "a = $a, b = $b"
puts "Addition: [expr $a + $b]"
puts "Subtraction: [expr $a - $b]"
puts "Multiplication: [expr $a * $b]"
puts "Division: [expr $a / $b]"
puts "Modulo: [expr $a % $b]"
puts "Power: [expr $a ** $b]"

# 4. Lists
puts "\n4. Lists:"
set colors {red green blue yellow}
puts "Colors list: $colors"
puts "First color: [lindex $colors 0]"
puts "Last color: [lindex $colors end]"
puts "Number of colors: [llength $colors]"

# 5. Basic control structures
puts "\n5. Basic Control Structures:"
if {$age >= 18} {
    puts "You are an adult"
} else {
    puts "You are a minor"
}

# 6. Loops
puts "\n6. Loops:"
puts "Counting from 1 to 5:"
for {set i 1} {$i <= 5} {incr i} {
    puts "  Count: $i"
}

puts "Iterating through colors:"
foreach color $colors {
    puts "  Color: $color"
}

puts "\n=== End of Basics ===" 