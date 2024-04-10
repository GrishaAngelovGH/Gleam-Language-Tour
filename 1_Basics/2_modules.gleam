import gleam/io
import gleam/string as text

pub fn main() {
  io.println("gleam/io module")
  io.println(text.reverse("gleam/string module"))
}