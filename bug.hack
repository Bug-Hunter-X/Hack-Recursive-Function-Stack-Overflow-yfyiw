function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code will work correctly for positive integers but will result in infinite recursion and a stack overflow error for negative inputs because the base case (x == 0) will never be reached.  The function does not handle negative integers correctly, leading to the error.  This is a common error in recursive functions where you don't cover all possible inputs in the base case.