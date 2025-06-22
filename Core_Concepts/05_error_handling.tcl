#!/usr/bin/env tclsh

# TCL Learning Script 5: Error Handling
# This script covers error handling, exception management, and debugging

puts "=== TCL Error Handling ==="

# 1. Basic error handling with catch
puts "\n1. Basic Error Handling with catch:"

# Example 1: Division by zero
if {[catch {expr 10 / 0} result]} {
    puts "Error caught: $result"
} else {
    puts "Result: $result"
}

# Example 2: Invalid variable access
if {[catch {puts $undefined_variable} result]} {
    puts "Error caught: $result"
} else {
    puts "Result: $result"
}

# Example 3: File operations
if {[catch {open "nonexistent_file.txt" r} file_handle]} {
    puts "Error opening file: $file_handle"
} else {
    close $file_handle
}

# 2. Error handling with error codes
puts "\n2. Error Handling with Error Codes:"

proc safe_divide {a b} {
    if {$b == 0} {
        error "Division by zero" "DIVIDE_BY_ZERO"
    }
    return [expr $a / $b]
}

# Test the safe_divide function
foreach test {{10 2} {10 0} {5 3}} {
    set a [lindex $test 0]
    set b [lindex $test 1]
    
    if {[catch {safe_divide $a $b} result error_info]} {
        puts "Error dividing $a by $b: $result"
        puts "  Error code: [dict get $error_info -code]"
        puts "  Error level: [dict get $error_info -level]"
    } else {
        puts "$a / $b = $result"
    }
}

# 3. Custom error procedures
puts "\n3. Custom Error Procedures:"

proc custom_error {message {code 1}} {
    puts "CUSTOM ERROR: $message"
    puts "Error code: $code"
    error $message $code
}

# Test custom error
if {[catch {custom_error "This is a custom error message" 42} result]} {
    puts "Caught custom error: $result"
}

# 4. Error handling in procedures
puts "\n4. Error Handling in Procedures:"

proc process_data {data} {
    # Validate input
    if {![string is integer $data]} {
        error "Input must be an integer, got: $data"
    }
    
    if {$data < 0} {
        error "Input must be positive, got: $data"
    }
    
    # Process the data
    return [expr $data * 2]
}

# Test with various inputs
set test_inputs {5 -3 "abc" 10}
foreach input $test_inputs {
    if {[catch {process_data $input} result]} {
        puts "Error processing '$input': $result"
    } else {
        puts "Processed '$input' -> $result"
    }
}

# 5. Try-catch equivalent in TCL
puts "\n5. Try-Catch Equivalent:"

proc try_catch {try_block catch_block} {
    if {[catch $try_block result]} {
        uplevel $catch_block
        return $result
    } else {
        return $result
    }
}

# Example usage
set result [try_catch {
    expr 10 / 0
} {
    puts "Caught division by zero error"
}]
puts "Try-catch result: $result"

# 6. Error handling with file operations
puts "\n6. Error Handling with File Operations:"

proc safe_file_operations {} {
    set filename "test_file.txt"
    
    # Create a test file
    if {[catch {open $filename w} file_handle]} {
        puts "Error creating file: $file_handle"
        return
    }
    puts $file_handle "Test data"
    close $file_handle
    
    # Try to read the file
    if {[catch {open $filename r} file_handle]} {
        puts "Error opening file for reading: $file_handle"
        return
    }
    
    set content [read $file_handle]
    close $file_handle
    puts "File content: $content"
    
    # Clean up
    if {[catch {file delete $filename} result]} {
        puts "Error deleting file: $result"
    } else {
        puts "File deleted successfully"
    }
}

safe_file_operations

# 7. Debugging with puts and errorInfo
puts "\n7. Debugging with errorInfo:"

proc debug_function {x} {
    puts "Debug: Entering function with x = $x"
    
    if {[catch {expr $x * 2} result]} {
        puts "Debug: Error occurred: $result"
        puts "Debug: Error info: $::errorInfo"
        return "ERROR"
    }
    
    puts "Debug: Function completed successfully"
    return $result
}

# Test debugging
puts "Result: [debug_function 5]"
puts "Result: [debug_function abc]"

# 8. Error handling with arrays
puts "\n8. Error Handling with Arrays:"

proc safe_array_access {array_name key} {
    if {![array exists $array_name]} {
        error "Array '$array_name' does not exist"
    }
    
    if {![info exists ${array_name}($key)]} {
        error "Key '$key' does not exist in array '$array_name'"
    }
    
    return [set ${array_name}($key)]
}

# Test array access
array set test_array {a 1 b 2 c 3}

foreach test {{test_array a} {test_array x} {nonexistent_array a}} {
    set array_name [lindex $test 0]
    set key [lindex $test 1]
    
    if {[catch {safe_array_access $array_name $key} result]} {
        puts "Error accessing $array_name\($key\): $result"
    } else {
        puts "$array_name\($key\) = $result"
    }
}

# 9. Error handling with regular expressions
puts "\n9. Error Handling with Regular Expressions:"

proc safe_regex_match {pattern string} {
    if {[catch {regexp $pattern $string} result]} {
        puts "Regex error: $result"
        return 0
    }
    return $result
}

# Test regex
puts "Regex test 1: [safe_regex_match {[0-9]+} abc123def]"
puts "Regex test 2: [safe_regex_match {[invalid} test]"

# 10. Comprehensive error handling example
puts "\n10. Comprehensive Error Handling Example:"

proc robust_calculator {operation a b} {
    # Input validation
    if {![string is double $a] || ![string is double $b]} {
        error "Both arguments must be numbers"
    }
    
    # Operation validation
    set valid_operations {+ - * /}
    if {[lsearch $valid_operations $operation] == -1} {
        error "Invalid operation: $operation. Valid operations: $valid_operations"
    }
    
    # Division by zero check
    if {$operation == "/" && $b == 0} {
        error "Division by zero"
    }
    
    # Perform calculation
    if {[catch {expr $a $operation $b} result]} {
        error "Calculation error: $result"
    }
    
    return $result
}

# Test the robust calculator
set test_cases {
    {+ 5 3}
    {- 10 4}
    {* 6 7}
    {/ 15 3}
    {/ 10 0}
    {+ abc 5}
    {^ 2 3}
}

foreach test_case $test_cases {
    set op [lindex $test_case 0]
    set a [lindex $test_case 1]
    set b [lindex $test_case 2]
    
    if {[catch {robust_calculator $op $a $b} result]} {
        puts "Error: $op $a $b -> $result"
    } else {
        puts "Success: $op $a $b = $result"
    }
}

puts "\n=== End of Error Handling ===" 