#!/usr/bin/env tclsh

# TCL Learning Script 4: Advanced Data Structures
# This script covers arrays, dictionaries, and complex data manipulation

puts "=== TCL Advanced Data Structures ==="

# 1. Arrays
puts "\n1. Arrays:"
array set person {
    name "John Doe"
    age 30
    city "New York"
    occupation "Engineer"
}

puts "Person array:"
foreach key [array names person] {
    puts "  $key: $person($key)"
}

# Array operations
puts "Number of elements: [array size person]"
puts "Array keys: [array names person]"
puts "Array exists: [array exists person]"

# 2. Nested arrays
puts "\n2. Nested Arrays:"
array set students {
    alice,name "Alice Smith"
    alice,age 20
    alice,grade "A"
    bob,name "Bob Johnson"
    bob,age 22
    bob,grade "B"
    carol,name "Carol Davis"
    carol,age 21
    carol,grade "A-"
}

puts "Students:"
foreach student {alice bob carol} {
    puts "  $student:"
    puts "    Name: $students($student,name)"
    puts "    Age: $students($student,age)"
    puts "    Grade: $students($student,grade)"
}

# 3. Dictionaries (TCL 8.5+)
puts "\n3. Dictionaries:"
set employee [dict create name "Jane Doe" age 28 department "IT" salary 75000]
puts "Employee dictionary: $employee"

# Accessing dictionary values
puts "Name: [dict get $employee name]"
puts "Age: [dict get $employee age]"
puts "Department: [dict get $employee department]"

# Iterating through dictionary
puts "Dictionary contents:"
dict for {key value} $employee {
    puts "  $key: $value"
}

# 4. Complex lists
puts "\n4. Complex Lists:"
set matrix {
    {1 2 3}
    {4 5 6}
    {7 8 9}
}

puts "Matrix:"
foreach row $matrix {
    puts "  $row"
}

# Accessing matrix elements
puts "Element at \[1,1\]: [lindex [lindex $matrix 1] 1]"

# 5. List of dictionaries
puts "\n5. List of Dictionaries:"
set books [list \
    [dict create title "The Great Gatsby" author "F. Scott Fitzgerald" year 1925] \
    [dict create title "1984" author "George Orwell" year 1949] \
    [dict create title "Pride and Prejudice" author "Jane Austen" year 1813] \
]

puts "Books:"
foreach book $books {
    puts "  [dict get $book title] by [dict get $book author] ([dict get $book year])"
}

# 6. Data structure manipulation
puts "\n6. Data Structure Manipulation:"

# Adding to arrays
set person(phone) "555-1234"
set person(email) "john.doe@email.com"
puts "Added phone and email to person array"

# Modifying dictionaries
dict set employee salary 80000
dict set employee start_date "2023-01-15"
puts "Updated employee dictionary: $employee"

# 7. Searching and filtering
puts "\n7. Searching and Filtering:"

# Find students with grade A
puts "Students with grade A:"
foreach student {alice bob carol} {
    if {$students($student,grade) == "A"} {
        puts "  $students($student,name)"
    }
}

# Find books after 1900
puts "Books published after 1900:"
foreach book $books {
    if {[dict get $book year] > 1900} {
        puts "  [dict get $book title] ([dict get $book year])"
    }
}

# 8. Sorting data structures
puts "\n8. Sorting:"

# Sort students by age
set student_list {}
foreach student {alice bob carol} {
    lappend student_list [list $student $students($student,age)]
}
set sorted_students [lsort -integer -index 1 $student_list]

puts "Students sorted by age:"
foreach student_info $sorted_students {
    set student [lindex $student_info 0]
    puts "  $students($student,name): $students($student,age) years old"
}

# 9. Converting between data structures
puts "\n9. Converting Between Data Structures:"

# Array to list
set person_list {}
foreach key [array names person] {
    lappend person_list [list $key $person($key)]
}
puts "Person array as list: $person_list"

# List to array
array set converted_person {}
foreach item $person_list {
    set converted_person([lindex $item 0]) [lindex $item 1]
}
puts "Converted back to array - name: $converted_person(name)"

# 10. Complex data validation
puts "\n10. Data Validation:"
proc validate_student {student_data} {
    set required_fields {name age grade}
    set errors {}
    
    foreach field $required_fields {
        if {![info exists student_data($field)]} {
            lappend errors "Missing required field: $field"
        }
    }
    
    if {[info exists student_data(age)]} {
        if {![string is integer $student_data(age)] || $student_data(age) < 0} {
            lappend errors "Invalid age: $student_data(age)"
        }
    }
    
    if {[llength $errors] > 0} {
        return [list 0 $errors]
    } else {
        return [list 1 "Valid"]
    }
}

# Test validation
array set test_student {name "Test Student" age 25 grade "B"}
set validation_result [validate_student test_student]
puts "Validation result: $validation_result"

puts "\n=== End of Advanced Data Structures ===" 