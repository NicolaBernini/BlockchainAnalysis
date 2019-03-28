{-# LANGUAGE FlexibleInstances, UndecidableInstances, DuplicateRecordFields #-}

--- Original Link 
--- https://www.hackerrank.com/challenges/fp-hello-world-n-times/problem

module Main where

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





--- Instead of loop use recursion 
--- Limit Case  
myprint 0 a = return ()

--- Other cases 
myprint n a = do 
    putStrLn a
    myprint (n-1) a

main :: IO()
main = do
    n <- readLn :: IO Int
    -- Print "Hello World" on a new line 'n' times.
    myprint n "Hello World"





