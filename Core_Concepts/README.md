# TCL Learning Scripts

This directory contains a series of TCL (Tool Command Language) scripts that I combined to help understand the syntax. Read through them, and then run them. It's pretty straight-forward (especially if you're already familiar with Bash). Each one contains examples for how to do simple tasks.

## Script Overview

### 1. `01_basics.tcl` - Fundamental Concepts
- Variables and assignment
- String operations
- Mathematical operations
- Lists and list manipulation
- Basic control structures (if/else)
- Loops (for, foreach)

### 2. `02_functions.tcl` - Functions and Procedures
- Basic procedure definitions
- Parameters and return values
- Default parameters
- Variable number of arguments
- Recursive procedures
- Global variables
- Multiple return values

### 3. `03_file_operations.tcl` - File and Directory Operations
- Reading and writing files
- File information and properties
- Directory operations
- File path manipulation
- File copying and deletion
- Error handling with files

### 4. `04_advanced_data_structures.tcl` - Complex Data Management
- Arrays and nested arrays
- Dictionaries (TCL 8.5+)
- Complex lists and matrices
- Data structure manipulation
- Searching and filtering
- Sorting and conversion between structures
- Data validation

### 5. `05_error_handling.tcl` - Error Management
- Basic error handling with `catch`
- Error codes and information
- Custom error procedures
- Try-catch equivalents
- Debugging techniques
- Comprehensive error handling examples

### 6. `06_practical_examples.tcl` - Real-World Applications
- Simple calculator
- File processor
- Data analysis tool
- Configuration file parser
- Log file analyzer
- Text search and replace tool

## How to Run the Scripts

### Prerequisites
Make sure you have TCL installed on your system. You can check by running:
```bash
tclsh --version
```

### Running Individual Scripts
To run any script, use the following command:
```bash
tclsh script_name.tcl
```

For example:
```bash
tclsh 01_basics.tcl
```

### Making Scripts Executable
You can also make the scripts executable and run them directly:
```bash
chmod +x 01_basics.tcl
./01_basics.tcl
```

## Learning Path

1. **Start with `01_basics.tcl`** - Learn fundamental TCL concepts
2. **Move to `02_functions.tcl`** - Understand procedure definitions and usage
3. **Continue with `03_file_operations.tcl`** - Learn file handling
4. **Study `04_advanced_data_structures.tcl`** - Master complex data management
5. **Practice with `05_error_handling.tcl`** - Learn robust error handling
6. **Apply knowledge with `06_practical_examples.tcl`** - See real-world applications

## Key TCL Concepts Covered

### Variables and Data Types
- TCL treats everything as strings
- Variables are created with `set`
- No explicit type declarations needed

### String Operations
- String manipulation with `string` command
- Regular expressions with `regexp`
- Pattern matching with `string match`

### Lists
- Created with curly braces `{}` or `list` command
- Manipulated with `lindex`, `llength`, `lappend`, etc.
- Can contain any data type

### Arrays
- Associative arrays with string keys
- Created with `array set`
- Accessed with `array_name(key)`

### Dictionaries
- Key-value pairs (TCL 8.5+)
- Created with `dict create`
- Accessed with `dict get`

### Control Structures
- `if`/`else` for conditional execution
- `for` for counted loops
- `foreach` for iterating over lists
- `while` for conditional loops

### Procedures
- Defined with `proc`
- Can have default parameters
- Support variable arguments with `args`
- Return values with `return`

### Error Handling
- Use `catch` to handle errors
- Access error information with `errorInfo`
- Create custom errors with `error`

## Common TCL Commands

| Command | Description |
|---------|-------------|
| `set` | Assign values to variables |
| `puts` | Print output |
| `gets` | Read input |
| `expr` | Evaluate mathematical expressions |
| `string` | String manipulation |
| `list` | List operations |
| `array` | Array operations |
| `dict` | Dictionary operations |
| `file` | File operations |
| `open` | Open files |
| `close` | Close files |
| `proc` | Define procedures |
| `catch` | Error handling |
| `if` | Conditional statements |
| `for` | For loops |
| `foreach` | Iterate over lists |
| `while` | While loops |

## Tips for Learning TCL

1. **Everything is a string** - TCL treats all data as strings internally
2. **Command substitution** - Use `[command]` to substitute command results
3. **Variable substitution** - Use `$variable` to substitute variable values
4. **Brace substitution** - Use `{content}` for literal strings
5. **Quotes** - Use quotes for strings with spaces or special characters
6. **Comments** - Use `#` for single-line comments
7. **Error handling** - Always use `catch` for robust scripts

## Practice Exercises

After completing the scripts, try these exercises:

1. Create a script that processes a CSV file
2. Build a simple text-based game
3. Write a script that monitors system resources
4. Create a configuration management tool
5. Build a log analysis utility

## Additional Resources

- [TCL/TK Documentation](https://www.tcl.tk/doc/)
- [TCL Language Reference](https://www.tcl.tk/man/tcl8.6/TclCmd/Tcl.htm)
- [TCL Tutorial](https://www.tcl.tk/man/tcl8.6/tutorial/tcltutorial.html)

## Notes

- All scripts are self-contained and include examples
- Test files are created and cleaned up automatically
- Error handling is demonstrated throughout
- Comments explain each concept in detail

Happy learning! 