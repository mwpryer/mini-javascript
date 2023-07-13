# Mini JavaScript

A toy interpreter for a subset of the JavaScript programming language written in [Haskell](https://www.haskell.org/).

- [Mini JavaScript](#mini-javascript)
  - [Features](#features)
    - [Todo](#todo)
  - [Usage](#usage)
    - [Basic Usage](#basic-usage)
    - [Executable](#executable)
    - [Read-Eval-Print Loop (REPL)](#read-eval-print-loop-repl)

## Features

- Arithmetic expressions
- Boolean operations
- Variable declarations (with the var keyword)
- Conditional expressions (if-else)
- First class functions
- Recursive functions
- Lexical scoping
- Lazy (call-by-name) evaluation
- REPL

### Todo

- [ ] Call-by-need evaluation
- [ ] Multiple variable declarations
- [ ] Tuples
- [ ] Multiple argument functions
- [ ] Error handling

## Usage

To clone and run this application, you will need [Git](https://git-scm.com). From your command line, execute the following commands:

```bash
$ git clone https://github.com/mwpryer/mini-javascript
$ cd mini-javascript
```

### Basic Usage

To build the project, you will need [Stack](https://docs.haskellstack.org/en/stable/). To create the executable and evaluate a file using Stack, use the following commands:

```bash
# Build the project
$ stack build
# Read and evaluate file
$ stack exec mjs example.js
```

### Executable

An executable produced by Stack can just as easily be used directly in place of `stack exec mjs`. To create the executable, simply use:

```bash
# Create executable
$ stack install
```

The executable file will be copied to some directory on your machine. Stack will helpfully print the path to your terminal for you to navigate to or to add to your PATH. You can then run the interpreter by executing it using:

```bash
$ ./mjs [example.js]
```

### Read-Eval-Print Loop (REPL)

To enter the REPL, use:

```bash
# REPL
$ ./mjs
```

Whilst in the REPL you can load and evaluate files using:

```bash
# Read and evaluate file in REPL
$ :load example.js
```
