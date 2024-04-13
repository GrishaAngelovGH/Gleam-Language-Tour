import gleam/io

// Variable names can be reused by later let bindings, but the values they reference are immutable, 
// so the values themselves are not changed or mutated in any way.

pub fn main() {
  let x = "Original"
  io.debug(x)

  // Assign `y` to the value of `x`
  let y = x
  io.debug(y)

  // Assign `x` to a new value
  let x = "New"
  io.debug(x)

  // The `y` still refers to the original value
  io.debug(y)
}