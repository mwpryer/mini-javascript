# Mini JavaScript

A toy interpreter for a subset of the JavaScript programming language written in [Haskell](https://www.haskell.org/).

- [Mini JavaScript](#mini-javascript)
  - [Features](#features)
  - [Examples](#examples)
    - [Simple Expressions](#simple-expressions)
    - [Variable Declarations](#variable-declarations)
    - [Conditional Expressions](#conditional-expressions)
    - [Arrays](#arrays)
    - [Functions](#functions)
  - [Usage](#usage)
    - [Basic Usage](#basic-usage)
    - [Executable](#executable)
    - [Read-Eval-Print Loop (REPL)](#read-eval-print-loop-repl)
  - [Todo](#todo)

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
- Multi-dimensional arrays
- Multiple argument functions

## Examples

Below are some code examples that the interpreter accepts and evaluates correctly, along with brief notes on certain design choices and language quirks.

### Simple Expressions

Basic mathematical and boolean operations are supported. Operator precedence is identical to that of JavaScript.

```js
// Arithmetic expressions
- (1 + 2) * 3 // -9
4 ** 3 % 9 // 1

// Boolean expressions
true && !true // false
false || (2 + 2) != 5 // true
1 <= 1 // true
-1 > 2 // false
```

### Variable Declarations

Immutable variables can be declared and used throughout the program using the `var` keyword.

```js
var x = 1 + 2;
x ** 3 // 27
```

```js
var a = 1 + 2;
var b = 3 ** 2;
var a = b;
var b = a;
a + b // 18
```

Note: this language uses call-by-name evaluation where expressions are stored directly in the execution environment instead of being evaluated to a value first. The immediate benefit of this is we can sometimes avoid wasting computational resources where declared values are never used. The drawback is that repeated use of a declaration results in repeated evaluation of that expression since evaluation is delayed to the use-point.

### Conditional Expressions

Expressions can be conditionally evaluated using `if` and `else`. Conditions must evaluate to a boolean value.

```js
var x = 2;
if (x == 2) { x / 2 } else { -1 } // 1
```

### Arrays

Multi-dimensional arrays can be created using square brackets. However, similar to JavaScript, there is no enforcement of type continuity, meaning multiple types can coexist in the same array. Accessing elements from an array is done using square brackets and 0-based indexing.

```js
var a = [1, [10, 11], true]; 
a[1][0] // 10
```

### Functions

Functions in this language are first class by nature, allowing them to be passed and returned from other functions. The syntax may seem familiar to early JavaScript users where function expressions are defined using the `function` keyword and assigned to variables. Such functions, like JavaScript, are not hoisted and cannot be used before they are defined.

```js
var add = function (x) {
  function (y) {
    x + y
  }
};
var addOne = add(1);
addOne(9) // 10
```

Recursive functions are also possible.

```js
var factorial = function (n) {
  if (n == 0) {
    1
  } else {
    n * factorial(n - 1)
  }
};
factorial(4) // 24
```

Passing multiple arguments to functions is supported.

```js
var add = function (x, y) {
  if (x == 0) {
    y
  } else {
    add(x - 1, y + 1)
  }
};
add(10, 1) // 11
```

## Usage

To clone and run this application, you will need [Git](https://git-scm.com). From your command line, execute the following commands:

```bash
git clone https://github.com/mwpryer/mini-javascript
cd mini-javascript
````

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
./mjs [example.js]
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

## Todo

- [ ] Call-by-need evaluation
- [ ] Multiple variable declarations
- [ ] Error handling
- [ ] Mutable state
