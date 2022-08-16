extern crate rand;
use rand::prelude::*;

fn main() {
    let x = 2.0;
    println!("Sum = {}", x + four_plus_random());
}

fn four_plus_random() -> f64 {
    let x = 4.0;
    let y:f64 = random();
    x + y
}
