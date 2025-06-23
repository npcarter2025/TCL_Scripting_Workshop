# TCL Scripting Workshop

I made this so I could save examples of TCL scripts, and also practice the syntax. 🙂

## Structure

- **Core_Concepts/**: Contains the main learning scripts that demonstrate TCL concepts
- **Syntax_Practice/**: Contains practice problems that require you to write code from scratch
* The practice problems are the same as the core concepts, just with the script removed. This way you can practice and quiz yourself.

## Learning Path

### Core Concepts Scripts

1. **01_basics.tcl** - Variables, strings, math, lists, control structures, loops
2. **02_functions.tcl** - Procedure definitions, parameters, return values, scope
3. **03_file_operations.tcl** - Reading/writing files, file information, directories
4. **04_advanced_data_structures.tcl** - Arrays, dictionaries, nested structures
5. **05_error_handling.tcl** - Error handling with catch, custom errors, debugging
6. **06_practical_examples.tcl** - Real-world applications combining multiple concepts

### Practice Problems

Each practice script corresponds to a core concept script and contains **actual coding problems** that require you to:

- Write functions and procedures from scratch
- Implement specific functionality based on requirements
- Handle error conditions properly
- Work with various data structures
- Solve practical programming challenges

**Important**: These are NOT just commented-out solutions. You need to write the actual code in the TODO sections.

## Getting Started

1. **Study the Core Concepts**: Start with `01_basics.tcl` and work through each script
2. **Run the Examples**: Execute each script to see the concepts in action
   ```bash
   tclsh Core_Concepts/01_basics.tcl
   ```
3. **Practice with Problems**: Work through the corresponding practice problems
   ```bash
   tclsh Syntax_Practice/01_basics_practice.tcl
   ```
4. **Fill in the TODOs**: Write your code in the TODO sections of each practice script

## Practice Workflow

1. Open a practice script
2. Read the problem descriptions in the TODO comments
3. Write your code in the TODO sections
4. Run the script to test your solutions
5. Compare your approach with the core concepts you learned

## Example Practice Problem

```tcl
# Problem: Create a function that calculates the area of a rectangle
# TODO: Write a function called 'calculate_area' that takes two parameters:
# length and width, and returns the area of a rectangle
# Then call the function with length=10 and width=5, and print the result
```

## Tips for Practice

- **Start Simple**: Begin with basic problems and work your way up
- **Test Incrementally**: Test each function as you write it
- **Use the Core Concepts**: Reference the corresponding core concept script for guidance
- **Handle Errors**: Always consider error conditions in your solutions
- **Think Practically**: These problems simulate real-world TCL programming scenarios

## Running Scripts

Make sure you have TCL installed on your system:

```bash
# Check if TCL is installed
tclsh --version

# Run a script
tclsh script_name.tcl

# Make scripts executable (if needed)
chmod +x script_name.tcl
./script_name.tcl
```

## Contributing



## Next Steps

After completing the practice problems, try:
- Creating your own TCL scripts
- Combining multiple concepts in larger projects
- Working with real-world TCL applications
- Exploring TCL's extensive library ecosystem

Happy TCL programming! 🐢 