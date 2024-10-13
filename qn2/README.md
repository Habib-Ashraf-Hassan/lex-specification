# Verb Recognizer

This project consists of a lexical analyzer written in LEX to recognize specific English verbs from text input. It uses a defined set of verbs and counts the occurrences of each recognized verb.

## Files Included

- `verbs_recognizer.l`: The LEX source file for recognizing verbs.
- `verb1.txt`: A sample text file containing sentences to test the verb recognizer.
- `verb2.txt`: Another sample text file for testing the verb recognizer.

## Requirements

- **Flex**: A tool for generating scanners (lexical analyzers) from LEX specifications.
- **GCC**: A C compiler to compile the generated code.

## Installation

1. Ensure that you have **Flex** and **GCC** installed on your system. You can install them using your package manager:

   - For Ubuntu/Debian:
     ```bash
     sudo apt-get install flex gcc
     ```

   - For macOS (using Homebrew):
     ```bash
     brew install flex
     ```

  ## How to Run the Verb Recognizer

2. **Compile the LEX file**:

   First, navigate to the directory containing the `verbs_recognizer.l` file. Then, run the following command to generate the C code from the LEX file:
  ### Lexical analysis
   ```bash
   lex verbs_recognizer.l
   ```

  ### compile
   ```bash
   gcc lex.yy.c -o verbs_recognizer
   ```

  ### see the ouput with 
  ```bash
  ./verbs_recognizer < verbs1.txt
```
#### OR
```bash
  ./verbs_recognizer < verbs2.txt
```

OR with any txt file you have which you wish to recognize verbs in it, replace **_filename.txt_** with actual txt file you have
```bash
  ./verbs_recognizer < filename.txt
```
   

