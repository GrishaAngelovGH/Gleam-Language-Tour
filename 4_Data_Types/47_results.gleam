import gleam/int
import gleam/io

pub fn main() {
  io.debug(buy_pastry(10))
  io.debug(buy_pastry(8))
  io.debug(buy_pastry(5))
  io.debug(buy_pastry(3))
}

pub type PurchaseError {
  UnavailableItems(required: Int)
  NotAuthorized
}

fn buy_pastry(money: Int) -> Result(Int, PurchaseError) {
  case money >= 5 {
    True ->
      case int.random(4) == 0 {
        True -> Error(NotAuthorized)
        False -> Ok(money - 5)
      }
    False -> Error(UnavailableItems(required: 5))
  }
}