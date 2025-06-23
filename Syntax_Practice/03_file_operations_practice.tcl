#!/usr/bin/env tclsh

# TCL File Operations Practice Problems
# Write your code in the TODO sections

puts "=== TCL File Operations Practice Problems ==="

# Problem 1: Writing to a File
puts "\n1. Writing to a File:"
# TODO: Create a file called "my_notes.txt" and write the following lines:
# - "My TCL Learning Notes"
# - "Today's date: [current date]"
# - "I am learning file operations in TCL"
# - "This is line 4 of my notes"
# Print a message confirming the file was created

# Problem 2: Reading from a File
puts "\n2. Reading from a File:"
# TODO: Read the entire content of "my_notes.txt" and print it
# (Make sure the file exists from Problem 1)

# Problem 3: Reading File Line by Line
puts "\n3. Reading File Line by Line:"
# TODO: Read "my_notes.txt" line by line and print each line with its line number
# Format: "Line X: [content]"

# Problem 4: Appending to a File
puts "\n4. Appending to a File:"
# TODO: Append the following lines to "my_notes.txt":
# - "Additional note: File operations are fun!"
# - "End of notes"
# Print a message confirming the lines were appended

# Problem 5: File Information
puts "\n5. File Information:"
# TODO: Check if "my_notes.txt" exists and print the following information:
# - File exists (yes/no)
# - File size in bytes
# - File readable (yes/no)
# - File writable (yes/no)
# - File type

# Problem 6: Directory Operations
puts "\n6. Directory Operations:"
# TODO: Print the current working directory
# List all files in the current directory, showing:
# - File names (not directories)
# - Directory names (not files)

# Problem 7: Creating and Removing Files
puts "\n7. Creating and Removing Files:"
# TODO: Create a temporary file called "temp_practice.txt" with some content
# Check if the file exists and print "Temporary file created"
# Delete the temporary file
# Check if the file still exists and print "Temporary file deleted"

# Problem 8: File Path Operations
puts "\n8. File Path Operations:"
set sample_path "/home/user/documents/my_file.txt"
# TODO: Using the sample_path, print:
# - Directory name
# - File name
# - File extension
# - Root name (filename without extension)

# Problem 9: Copying Files
puts "\n9. Copying Files:"
# TODO: Copy "my_notes.txt" to "my_notes_backup.txt"
# Verify the copy was successful by checking if the backup file exists
# Print "File copied successfully"

# Problem 10: Error Handling with Files
puts "\n10. Error Handling with Files:"
# TODO: Try to open a non-existent file called "nonexistent.txt"
# Use catch to handle the error and print an appropriate error message
# Try to read from a file that doesn't exist and handle the error gracefully

puts "\n=== End of File Operations Practice ==="
puts "Write your code in the TODO sections above!"
puts "Note: Make sure to handle file operations carefully and clean up temporary files!" 