#!/usr/bin/env tclsh

# TCL Learning Script 7: Basic Calculator

puts "=== TCL Basic Calculator ==="

# 1. Simple Calculator
puts "\n1. Simple Calculator:"
proc calculator {} {
    puts "Simple Calculator"
    puts "Operations: +, -, *, /, ^, sqrt"
    puts "Type 'quit' to exit"
    
    while {1} {
        puts -nonewline "Enter expression: "
        flush stdout
        gets stdin input
        
        if {$input == "quit"} {
            puts "Goodbye!"
            break
        }
        
        if {[catch {expr $input} result]} {
            puts "Error: $result"
        } else {
            puts "Result: $result"
        }
    }
}

calculator
