// Arithmetic expressions
// - (1 + 2) * 3 // -9
// 4 ** 3 % 9 // 1

// Variable declarations
// var x = 1 + 2; x ** 3 // 27
// var a = 1 + 2; var b = 3 ** 2; var a = b; var b = a; a + b // 18

// Boolean expressions
// false && !true // false
// var a = true; var b = false; a && b != false // false
// var a = 1; var b = 2; a + 1 == b || false // true
// 1 <= 1 // true
// -1 > 2 // false

// Conditional expressions
// if (2 + 2 == 4) { true } else { false } // true
// var a = true; if (var x = 3; var y = 1; x % 2 == y) { a } else { !a } // true
// var x = 2; if (x == 2) { x / 2 } else { -1 } // 1

// First class functions
// var abs = function (x) {
//   if (x > 0) {
//     x
//   } else {
//     -x
//   }
// };
// abs(-3) // 3

// var x = 2;
// var f = function (y) {
//   y + x
// };
// var x = 3;
// f(5) // 7 (lexical scoping)

var x = 9;
var f = function (foo) {
  foo(x)
};
var add = function (x) {
  function (y) {
    x + y
  }
};
f(add(1)) // 10 (partially applied function)