import gleam/io

// Blocks are one or more expressions grouped together with curly braces.
// Each expression is evaluated in order and the value of the last expression is returned.

pub fn main() {
  let fahrenheit = {
    let degrees = 64
    degrees
  }
  // io.debug(degrees) // <- This will not compile

  // Changing order of evaluation
  let celsius = { fahrenheit - 32 } * 5 / 9
  io.debug(celsius)
}