// Enter your code here 

use std::io; 

fn main()
{
    let mut s = String::new(); 
    std::io::stdin().read_line(&mut s); 
    println!("Hello, World. "); 
    println!("{}", s); 
}
