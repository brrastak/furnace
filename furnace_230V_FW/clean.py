# Script to "clean" C code for WASM in order to compile it by SDCC

import sys
import os


def remove_lines_containing_substring(lines, substring):
    try:
        new_lines = []
        skip_mode = False

        for i, line in enumerate(lines):
            # Check if we're in 'skip mode', where lines are being removed
            if skip_mode:
                if not line.strip().endswith('\\'):
                    skip_mode = False  # Stop skipping if line doesn't end with '\'
                continue  # Continue skipping lines

            # If the substring is found in the current line, start skipping
            if substring in line:
                skip_mode = True
                continue  # Skip the current line and activate 'skip mode'

            # Add lines that should remain in the new_lines list
            new_lines.append(line)

        print(f"Lines containing '{substring}' and subsequent '\\' lines removed.")
        return new_lines
    
    except Exception as e:
        print(f"An error occurred: {e}")

def remove_function(lines, function_name):
    try:
        new_lines = []
        skip_mode = False

        for i, line in enumerate(lines):
            # Check if we're in 'skip mode' where lines are being removed
            if skip_mode:
                # Stop skipping when we encounter a line that contains '}'
                if '}' in line:
                    skip_mode = False
                    continue
                continue  # Skip this line if it's still in "skip mode"

            # If the substring is found in the current line, start skipping
            if function_name in line:
                skip_mode = True
                continue  # Skip the current line and activate 'skip mode'

            # Add lines that should remain to the new_lines list
            new_lines.append(line)

        print(f"Function '{function_name}' and up to '}}' was removed.")
        return new_lines
    
    except Exception as e:
        print(f"An error occurred: {e}")

def remove_substring(lines, substring):
    try:
        # Remove the specified substring from each line
        new_lines = [line.replace(substring, '') for line in lines]

        print(f"Substring '{substring}' removed from all lines.")
        return new_lines
    
    except Exception as e:
        print(f"An error occurred: {e}")

def replace_substring(lines, substring, to_replace):
    try:
        # Remove the specified substring from each line
        new_lines = [line.replace(substring, to_replace) for line in lines]

        print(f"Substring '{substring}' replaced to '{to_replace}' in all lines.")
        return new_lines
    
    except Exception as e:
        print(f"An error occurred: {e}")


# Check if enough arguments are provided (expecting 2 arguments: source_file and destination_file)
if len(sys.argv) != 3:
    print("Usage: python3 clean.py <source_file> <destination_file>.\
Works with files produced by wasm2c from wabt v1.0.27.")
    sys.exit(1)

source_file = sys.argv[1]
destination_file = sys.argv[2]

try:
    # Check if the source file exists
    if not os.path.exists(source_file):
        print(f"Source file '{source_file}' does not exist.")
        sys.exit(1)

    # Create the destination file if it doesn't exist
    open(destination_file, 'a').close()

    # Read the contents of the file
    with open(source_file, 'r') as file:
        lines = file.readlines()

    lines = remove_function(lines, 'load_data')
    lines = remove_lines_containing_substring(lines, '#')
    lines = remove_lines_containing_substring(lines, 'DEFINE_')
    lines = remove_function(lines, 'init_func_types')
    lines = remove_function(lines, 'init_globals')
    lines = remove_function(lines, 'init_memory')
    lines = remove_function(lines, 'init_table')
    lines = remove_function(lines, 'init_exports')
    lines = remove_lines_containing_substring(lines, '/*')
    lines = remove_lines_containing_substring(lines, 'func_types')
    lines = replace_substring(lines, '= w2c___stack_pointer', '= (uint16_t)&memory + MEMORY_LENGTH')
    lines = remove_lines_containing_substring(lines, 'w2c___stack_pointer')
    lines = remove_lines_containing_substring(lines, 'w2c___data_end')
    lines = remove_lines_containing_substring(lines, 'wasm_rt_memory_t w2c_memory')
    lines = remove_lines_containing_substring(lines, 'WASM_RT_ADD_PREFIX')
    lines = remove_substring(lines, 'FUNC_PROLOGUE;')
    lines = remove_substring(lines, 'FUNC_EPILOGUE;')
    lines = remove_substring(lines, '(&w2c_memory), ')
    lines = remove_substring(lines, 'w2c_')
    lines = replace_substring(lines, 'static void app', 'void app')

    lines.insert(0, '#include \"defines.h\"')

    # Write the updated lines back to the file
    with open(destination_file, 'w') as file:
        file.writelines(lines)

except Exception as e:
    print(f"An error occurred: {e}")
    sys.exit(1)
