# Mini JavaScript

A toy interpreter for a subset of the JavaScript programming language. It is written in [Haskell](https://www.haskell.org/), and uses [Alex](https://github.com/haskell/alex) and [Happy](https://github.com/haskell/happy) for lexer and parser generation.

To calculate the nth Fibonacci number, you can use the following code:

```js
var fibonacci = function (n) {
  if (n < 2) {
    n;
  } else {
    fibonacci(n - 1) + fibonacci(n - 2);
  }
};
fibonacci(10); // 55
```

Similarly, to calculate the sum of an array of numbers of length n, you can use the following code:

```js
var sum = function (arr, n) {
  if (n <= 0) {
    0;
  } else {
    arr[n - 1] + sum(arr, n - 1);
  }
};
sum([1, 2, 3, 4], 4); // 10
```

## Features

- Arithmetic operations
- Boolean operations
- Variable declarations
- Conditional expressions
- First class functions
- Recursive functions
- Multiple argument functions
- Multi-dimensional arrays
- Lexical scoping
- Lazy (call-by-need) evaluation
- Read-Eval-Print Loop (REPL)

## Examples

Below are some primitive code examples that the interpreter accepts and evaluates correctly, along with brief notes on certain design choices and language quirks.

### Simple Expressions

Basic mathematical and boolean operations are supported. Operator precedence is identical to that of JavaScript.

#### Arithmetic Expressions

```js
- (1 + 2) * 3; // -9
4 ** 3 % 9; // 1
```

#### Boolean Expressions

```js
true && !true; // false
false || (2 + 2) != 5; // true
1 <= 1; // true
-1 > 2; // false
```

### Variable Declarations

Immutable variables can be declared and used throughout the program using the `var` keyword.

```js
var x = 1 + 2;
x ** 3; // 27
```

Variables are immutable, but can be shadowed by re-declaring them in the same scope.

```js
var a = 1;
var b = 2;
var a = b;
a; // 2
```

Note: this language uses call-by-need evaluation, where both expressions and their values are stored in the execution environment. Upon encountering an expression for the first time it is stored directly, thereafter it is evaluated and stored as a concrete value. This is a hybrid approach between call-by-value and call-by-name evaluation to get the best of both strategies; prevent repeated evaluation of a declaration (as in call-by-value) and avoid wasting computational resources where declared values are never used (as in call-by-name).

### Conditional Expressions

Expressions can be conditionally evaluated using `if` and `else`. Conditions must evaluate to a boolean value.

```js
var x = 2;
if (x == 2) {
  x / 2;
} else {
  -1;
} // 1
```

These expressions can be nested to create more complex conditional logic.

```js
var x = 2;
if (x == 1) {
  1;
} else {
  if (x == 2) {
    2;
  } else {
    3;
  }
} // 2
```

### Arrays

Multi-dimensional arrays can be created using square brackets. However, similar to JavaScript, there is no enforcement of type continuity, meaning multiple types can coexist in the same array. Accessing elements from an array is done using square brackets and 0-based indexing.

```js
var a = [1, [10, 11], true];
a[1][0]; // 10
```

### Functions

Functions in this language are first-class by nature, allowing them to be passed and returned from other functions. The syntax may seem familiar to early JavaScript users where function expressions are defined using the `function` keyword and assigned to variables. Such functions, like JavaScript, are not hoisted and therefore cannot be used before they are defined.

```js
var add = function (x) {
  function (y) {
    x + y;
  };
};
var addOne = add(1);
addOne(9); // 10
```

Recursive functions are also possible.

```js
var add = function (x, y) {
  if (x == 0) {
    y;
  } else {
    add(x - 1, y + 1);
  }
};
add(4, 2); // 6
```

## Usage

### Basic Usage

To build the project, you will need [Stack](https://docs.haskellstack.org/en/stable/). To evaluate a file or start the REPL using Stack, use the following commands in the project directory:

```bash
# Build the project
$ stack build
# Read and evaluate file
$ stack exec mjs example.js
# REPL
$ stack exec mjs
```

### Executable

An executable produced by Stack can just as easily be used directly in place of `stack exec mjs`. To create the executable, simply use:

```bash
# Create executable
$ stack install
```

The executable file will be copied to some directory on your machine. Stack will helpfully print the path to your terminal for you to navigate to or to add to your `PATH`. You can then run the interpreter by executing it using:

```bash
# Read and evaluate file
./mjs [example.js]
# REPL
./mjs
```

Alternatively, you can download a pre-built executable from the [releases](https://www.github.com/mwpryer/mini-javascript/releases) page.

### Read-Eval-Print Loop (REPL)

To enter the REPL, simply use:

```bash
# REPL
./mjs
```

Whilst in the REPL, you can load and evaluate files using:

```bash
# Read and evaluate file in REPL
:load example.js
```

To exit the REPL, use:

```bash
# Exit REPL
:quit
```
