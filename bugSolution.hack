function foo(x: int): int {
  if (x < 0) {
    return 0; // Or throw an exception:  throw new Exception("Input must be non-negative");
  } else if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
  echo foo(-3); // Now handles negative inputs gracefully
}

This improved version includes a check for negative inputs. If a negative number is passed, the function returns 0 (or throws an exception, as an alternative, demonstrating more robust error handling).  This prevents the infinite recursion and stack overflow error.