#!/usr/bin/env tclsh

# TCL Learning Script 6: Practical Examples
# This script contains practical examples and useful tools

puts "=== TCL Practical Examples ==="

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

# Uncomment to run calculator interactively
# calculator

# 2. File Processor
puts "\n2. File Processor:"
proc process_file {input_file output_file} {
    if {![file exists $input_file]} {
        error "Input file does not exist: $input_file"
    }
    
    if {[catch {open $input_file r} in_handle]} {
        error "Cannot open input file: $in_handle"
    }
    
    if {[catch {open $output_file w} out_handle]} {
        close $in_handle
        error "Cannot open output file: $out_handle"
    }
    
    set line_count 0
    set word_count 0
    set char_count 0
    
    while {[gets $in_handle line] >= 0} {
        incr line_count
        set char_count [expr $char_count + [string length $line]]
        
        # Count words in the line
        set words [split $line]
        set word_count [expr $word_count + [llength $words]]
        
        # Process the line (convert to uppercase in this example)
        set processed_line [string toupper $line]
        puts $out_handle $processed_line
    }
    
    close $in_handle
    close $out_handle
    
    return [list $line_count $word_count $char_count]
}

# Create a test file and process it
set test_input "test_input.txt"
set test_output "test_output.txt"

# Create test input file
set file_handle [open $test_input w]
puts $file_handle "This is a test file."
puts $file_handle "It contains multiple lines."
puts $file_handle "Each line has different words."
close $file_handle

# Process the file
if {[catch {process_file $test_input $test_output} stats]} {
    puts "Error processing file: $stats"
} else {
    puts "File processed successfully:"
    puts "  Lines: [lindex $stats 0]"
    puts "  Words: [lindex $stats 1]"
    puts "  Characters: [lindex $stats 2]"
}

# 3. Data Analysis Tool
puts "\n3. Data Analysis Tool:"
proc analyze_data {data_list} {
    if {[llength $data_list] == 0} {
        error "Empty data list"
    }
    
    # Calculate statistics
    set sum 0
    set min [lindex $data_list 0]
    set max [lindex $data_list 0]
    
    foreach value $data_list {
        if {![string is double $value]} {
            error "Non-numeric value found: $value"
        }
        
        set sum [expr $sum + $value]
        if {$value < $min} { set min $value }
        if {$value > $max} { set max $value }
    }
    
    set count [llength $data_list]
    set mean [expr $sum / $count]
    
    # Calculate standard deviation
    set variance 0
    foreach value $data_list {
        set variance [expr $variance + ($value - $mean) ** 2]
    }
    set variance [expr $variance / $count]
    set std_dev [expr sqrt($variance)]
    
    return [dict create \
        count $count \
        sum $sum \
        mean $mean \
        min $min \
        max $max \
        std_dev $std_dev \
        range [expr $max - $min] \
    ]
}

# Test data analysis
set test_data {10.5 15.2 8.9 12.1 18.7 9.3 14.6 11.8}
puts "Test data: $test_data"

if {[catch {analyze_data $test_data} stats]} {
    puts "Error analyzing data: $stats"
} else {
    puts "Data Analysis Results:"
    dict for {key value} $stats {
        puts "  $key: $value"
    }
}

# 4. Configuration File Parser
puts "\n4. Configuration File Parser:"
proc parse_config {filename} {
    if {![file exists $filename]} {
        error "Config file does not exist: $filename"
    }
    
    set config [dict create]
    
    if {[catch {open $filename r} file_handle]} {
        error "Cannot open config file: $file_handle"
    }
    
    set line_number 0
    while {[gets $file_handle line] >= 0} {
        incr line_number
        
        # Skip comments and empty lines
        if {[string trim $line] == "" || [string match "#*" [string trim $line]]} {
            continue
        }
        
        # Parse key=value pairs
        if {[regexp {^([^=]+)=(.*)$} $line -> key value]} {
            set key [string trim $key]
            set value [string trim $value]
            
            # Remove quotes if present
            if {[regexp {^"(.*)"$} $value -> unquoted_value]} {
                set value $unquoted_value
            }
            
            dict set config $key $value
        } else {
            puts "Warning: Invalid line $line_number: $line"
        }
    }
    
    close $file_handle
    return $config
}

# Create a test config file
set config_file "test_config.conf"
set file_handle [open $config_file w]
puts $file_handle "# Test configuration file"
puts $file_handle "server_name=localhost"
puts $file_handle "port=8080"
puts $file_handle "debug=true"
puts $file_handle "log_level=INFO"
puts $file_handle "data_path=\"/var/data\""
close $file_handle

# Parse the config file
if {[catch {parse_config $config_file} config]} {
    puts "Error parsing config: $config"
} else {
    puts "Configuration:"
    dict for {key value} $config {
        puts "  $key = $value"
    }
}

# 5. Log File Analyzer
puts "\n5. Log File Analyzer:"
proc analyze_log {log_file} {
    if {![file exists $log_file]} {
        error "Log file does not exist: $log_file"
    }
    
    set stats [dict create \
        total_lines 0 \
        error_count 0 \
        warning_count 0 \
        info_count 0 \
        ip_addresses [list] \
        timestamps [list] \
    ]
    
    if {[catch {open $log_file r} file_handle]} {
        error "Cannot open log file: $file_handle"
    }
    
    while {[gets $file_handle line] >= 0} {
        dict incr stats total_lines
        
        # Count log levels
        if {[regexp -nocase {error} $line]} {
            dict incr stats error_count
        }
        if {[regexp -nocase {warning} $line]} {
            dict incr stats warning_count
        }
        if {[regexp -nocase {info} $line]} {
            dict incr stats info_count
        }
        
        # Extract IP addresses
        if {[regexp {(\d+\.\d+\.\d+\.\d+)} $line -> ip]} {
            dict lappend stats ip_addresses $ip
        }
        
        # Extract timestamps (simple pattern)
        if {[regexp {(\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2})} $line -> timestamp]} {
            dict lappend stats timestamps $timestamp
        }
    }
    
    close $file_handle
    return $stats
}

# Create a test log file
set log_file "test.log"
set file_handle [open $log_file w]
puts $file_handle "2024-01-15 10:30:15 INFO Server started on 192.168.1.100"
puts $file_handle "2024-01-15 10:30:16 INFO User connected from 192.168.1.101"
puts $file_handle "2024-01-15 10:30:20 WARNING High memory usage detected"
puts $file_handle "2024-01-15 10:30:25 ERROR Database connection failed"
puts $file_handle "2024-01-15 10:30:30 INFO Connection restored"
close $file_handle

# Analyze the log file
if {[catch {analyze_log $log_file} log_stats]} {
    puts "Error analyzing log: $log_stats"
} else {
    puts "Log Analysis Results:"
    dict for {key value} $log_stats {
        puts "  $key: $value"
    }
}

# 6. Text Search and Replace Tool
puts "\n6. Text Search and Replace Tool:"
proc search_replace {filename search_pattern replace_pattern {backup 1}} {
    if {![file exists $filename]} {
        error "File does not exist: $filename"
    }
    
    # Read the file
    if {[catch {open $filename r} file_handle]} {
        error "Cannot open file: $file_handle"
    }
    
    set content [read $file_handle]
    close $file_handle
    
    # Create backup if requested
    if {$backup} {
        set backup_file "${filename}.bak"
        if {[catch {open $backup_file w} backup_handle]} {
            error "Cannot create backup: $backup_handle"
        }
        puts $backup_handle $content
        close $backup_handle
        puts "Backup created: $backup_file"
    }
    
    # Perform search and replace
    set new_content [regsub -all $search_pattern $content $replace_pattern]
    
    # Write the modified content
    if {[catch {open $filename w} file_handle]} {
        error "Cannot write to file: $file_handle"
    }
    puts $file_handle $new_content
    close $file_handle
    
    # Count replacements
    set count [regexp -all $search_pattern $content]
    
    return $count
}

# Test search and replace
set test_file "search_test.txt"
set file_handle [open $test_file w]
puts $file_handle "Hello world"
puts $file_handle "Hello there"
puts $file_handle "Goodbye world"
close $file_handle

puts "Original file content:"
set file_handle [open $test_file r]
puts [read $file_handle]
close $file_handle

if {[catch {search_replace $test_file "Hello" "Hi"} count]} {
    puts "Error in search/replace: $count"
} else {
    puts "Replaced $count occurrences"
    puts "Modified file content:"
    set file_handle [open $test_file r]
    puts [read $file_handle]
    close $file_handle
}

# Clean up test files
foreach file [list $test_input $test_output $config_file $log_file $test_file] {
    if {[file exists $file]} {
        file delete $file
    }
}

puts "\n=== End of Practical Examples ===" 