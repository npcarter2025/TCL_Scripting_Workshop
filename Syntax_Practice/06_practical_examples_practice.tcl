#!/usr/bin/env tclsh

# TCL Practical Examples Practice Problems
# Write your code in the TODO sections

puts "=== TCL Practical Examples Practice Problems ==="

# Problem 1: Simple Calculator
puts "\n1. Simple Calculator:"
# TODO: Create an interactive calculator that:
# - Prompts the user for mathematical expressions
# - Supports +, -, *, /, ^ operations
# - Handles errors gracefully
# - Continues until user types 'quit'

# TODO: Test your calculator with various expressions

# Problem 2: File Processor
puts "\n2. File Processor:"
# TODO: Create a procedure called 'process_file' that:
# - Takes input_file and output_file as parameters
# - Reads the input file line by line
# - Converts each line to uppercase
# - Writes the processed lines to the output file
# - Returns statistics: {line_count word_count char_count}

# TODO: Create a test file and process it using your procedure

# Problem 3: Data Analysis Tool
puts "\n3. Data Analysis Tool:"
# TODO: Create a procedure called 'analyze_data' that:
# - Takes a list of numbers as input
# - Calculates and returns a dictionary with:
#   - count, sum, mean, min, max, std_dev, range
# - Handles empty lists and invalid data

# TODO: Test your data analysis tool with sample data

# Problem 4: Configuration File Parser
puts "\n4. Configuration File Parser:"
# TODO: Create a procedure called 'parse_config' that:
# - Takes a filename as parameter
# - Reads key=value pairs from the file
# - Skips comments (lines starting with #)
# - Skips empty lines
# - Returns a dictionary of configuration values
# - Handles quoted values

# TODO: Create a test config file and parse it

# Problem 5: Log File Analyzer
puts "\n5. Log File Analyzer:"
# TODO: Create a procedure called 'analyze_log' that:
# - Takes a log filename as parameter
# - Counts total lines, errors, warnings, info messages
# - Extracts IP addresses using regex
# - Extracts timestamps
# - Returns a dictionary with statistics

# TODO: Create a test log file and analyze it

# Problem 6: Text Search and Replace Tool
puts "\n6. Text Search and Replace Tool:"
# TODO: Create a procedure called 'search_replace' that:
# - Takes filename, search_pattern, replace_pattern as parameters
# - Creates a backup of the original file
# - Performs search and replace
# - Returns the number of replacements made
# - Handles errors gracefully

# TODO: Create a test file and perform search/replace operations

# Problem 7: Simple Database
puts "\n7. Simple Database:"
# TODO: Create a simple database system with procedures:
# - add_record: adds a new record to a file
# - find_record: searches for records by a field
# - list_records: displays all records
# - delete_record: removes a record by ID

# TODO: Test your database with sample records

# Problem 8: Password Generator
puts "\n8. Password Generator:"
# TODO: Create a procedure called 'generate_password' that:
# - Takes length as parameter
# - Generates a random password with:
#   - Uppercase letters, lowercase letters, numbers, symbols
# - Ensures at least one character from each category
# - Returns the generated password

# TODO: Generate and test several passwords

# Problem 9: File Backup System
puts "\n9. File Backup System:"
# TODO: Create a procedure called 'backup_file' that:
# - Takes a filename as parameter
# - Creates a timestamped backup (e.g., file_20240115_143022.txt)
# - Checks if backup already exists
# - Returns success/failure status

# TODO: Test your backup system with a test file

# Problem 10: Simple Web Scraper (Text Processing)
puts "\n10. Simple Web Scraper (Text Processing):"
# TODO: Create a procedure called 'extract_links' that:
# - Takes HTML content as a string
# - Uses regex to find all href="..." links
# - Returns a list of extracted URLs
# - Handles malformed HTML gracefully

# TODO: Test with sample HTML content

puts "\n=== End of Practical Examples Practice ==="
puts "Write your code in the TODO sections above!"
puts "These problems simulate real-world TCL applications!" 