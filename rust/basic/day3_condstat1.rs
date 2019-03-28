
// Original Link 
// https://www.hackerrank.com/challenges/30-conditional-statements/

use std::io;

fn main()
{
    let mut s = String::new(); 
    io::stdin().read_line(&mut s); 
    let n: u32 = s.parse().unwrap(); 

    if((n%2)==1) 
    {
        println!("Weird"); 
    }
    else 
    {
        if( (n>=2) && (n<=5) )
        {
            println!("Not Weird"); 
        }
        else if( (n>=6) && (n<=20) )
        {
            println!("Weird"); 
        }
        else if(n>20)
        {
            println!("Not Weird"); 
        }
    }
}
