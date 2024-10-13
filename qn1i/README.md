# Word count and filesize calculation
This project consists of a lexical analyzer written in LEX to count the number of words(made up of alphabets only) in a file and also determine the file size

## Files Included

- `words_filesize.l`: The LEX source file for counting words and determining the file size.
- `example.txt`: A sample text file containing sentences with alphabetic words, numbers and special characters tp test our lexical analyzer.

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
   lex words_filesize.l
   ```

  ### compile
   ```bash
   gcc lex.yy.c -o words_filesize
   ```

  ### see the ouput with 
  ```bash
  ./words_filesize < example.txt
```


OR with any txt file you have which you wish to recognize verbs in it, replace **_filename.txt_** with actual txt file you have
```bash
  ./words_filesize < filename.txt
```
   


