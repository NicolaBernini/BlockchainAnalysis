
-- Original Link 
-- https://www.hackerrank.com/challenges/30-dictionaries-and-maps/problem

import Data.List.Split
import Data.Typeable
import Control.Monad
import Data.Array
import Data.Bits
import Data.List
import Data.List.Split
import Data.Set
import Debug.Trace
import System.Environment
import System.IO
import System.IO.Unsafe
import System.IO (isEOF)
import Data.HashMap.Lazy

-- Create a tuple out of a list of 2 elements, obtained by exploding a string according to a separator 
conv x = ((x!!0), (x!!1))

-- Creates a Dictionary as a List of Key - Value Tuples by iterating on a list of strings representing the Key and Values separated by a known separator 
build_ab str = Data.HashMap.Lazy.fromList ([conv (words x) | x <- str])

-- Converting from a Maybe Monad resulting from Lookup into a proper string 
conv_res q Nothing = "Not found"
conv_res q (Just r) = q ++ "=" ++ r



-- Performing a query in the Address Book and returning the proper string 
query q ab = conv_res q (Data.HashMap.Lazy.lookup q ab)

-- Looping over an unknown number of Stdin lines 
myLoop ab True = do 
    return ()

myLoop ab False = do
    x <- getLine 
    --print x 
    putStrLn (query x ab)
    isEOF >>= myLoop ab 

main = do 
    n <- readLn :: IO Int  
    --print (n) 
    --input <- getLine
    inputs <- replicateM (n) getLine
    --print inputs 
    let ab = build_ab inputs 
    --print ab 
    isEOF >>= myLoop ab 


