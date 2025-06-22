#!/usr/bin/env tclsh

# TCL Learning Script 3: File Operations
# This script covers file and directory operations

puts "=== TCL File Operations ==="

# 1. Writing to a file
puts "\n1. Writing to a File:"
set filename "test_data.txt"
set file_handle [open $filename w]
puts $file_handle "This is line 1"
puts $file_handle "This is line 2"
puts $file_handle "This is line 3"
puts $file_handle "Numbers: 1 2 3 4 5"
close $file_handle
puts "Created file: $filename"

# 2. Reading from a file
puts "\n2. Reading from a File:"
set file_handle [open $filename r]
set content [read $file_handle]
close $file_handle
puts "File content:"
puts $content

# 3. Reading file line by line
puts "\n3. Reading File Line by Line:"
set file_handle [open $filename r]
set line_number 1
while {[gets $file_handle line] >= 0} {
    puts "Line $line_number: $line"
    incr line_number
}
close $file_handle

# 4. Appending to a file
puts "\n4. Appending to a File:"
set file_handle [open $filename a]
puts $file_handle "This line was appended"
puts $file_handle "Another appended line"
close $file_handle
puts "Appended to file: $filename"

# 5. File information
puts "\n5. File Information:"
if {[file exists $filename]} {
    puts "File exists: $filename"
    puts "File size: [file size $filename] bytes"
    puts "File readable: [file readable $filename]"
    puts "File writable: [file writable $filename]"
    puts "File type: [file type $filename]"
} else {
    puts "File does not exist: $filename"
}

# 6. Directory operations
puts "\n6. Directory Operations:"
set current_dir [pwd]
puts "Current directory: $current_dir"

# List files in current directory
puts "Files in current directory:"
set files [glob -nocomplain *]
foreach file $files {
    if {[file isfile $file]} {
        puts "  File: $file"
    } elseif {[file isdirectory $file]} {
        puts "  Directory: $file"
    }
}

# 7. Creating and removing files
puts "\n7. Creating and Removing Files:"
set temp_file "temp_file.txt"
set file_handle [open $temp_file w]
puts $file_handle "Temporary file content"
close $file_handle
puts "Created temporary file: $temp_file"

# Check if file exists
if {[file exists $temp_file]} {
    puts "Temporary file exists"
    file delete $temp_file
    puts "Deleted temporary file"
}

# 8. Working with file paths
puts "\n8. File Path Operations:"
set path "/home/user/documents/file.txt"
puts "Original path: $path"
puts "Directory: [file dirname $path]"
puts "Filename: [file tail $path]"
puts "Extension: [file extension $path]"
puts "Root name: [file rootname $path]"

# 9. Copying files
puts "\n9. Copying Files:"
set source_file $filename
set dest_file "copy_of_$filename"
file copy $source_file $dest_file
puts "Copied $source_file to $dest_file"

# Verify copy
if {[file exists $dest_file]} {
    puts "Copy successful"
    file delete $dest_file
    puts "Cleaned up copy"
}

# 10. Error handling with files
puts "\n10. Error Handling:"
set non_existent_file "nonexistent.txt"
if {[catch {open $non_existent_file r} file_handle]} {
    puts "Error opening file: $file_handle"
} else {
    close $file_handle
}

puts "\n=== End of File Operations ===" 