import gleam/io

// io.println function only works with strings, not ints
// io.debug function will print a value of any type

pub fn main() {
  io.println("My lucky number is:")
  // io.println(4)
  // 👆️ Uncomment this line
}
