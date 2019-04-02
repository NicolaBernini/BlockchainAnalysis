
--- Original Problem Link
--- https://www.hackerrank.com/challenges/30-loops/problem

{-# LANGUAGE FlexibleInstances, UndecidableInstances, DuplicateRecordFields #-}

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

-- Build the results list 
solve n = [ (show n) ++ " x " ++ (show i) ++ " = " ++ show (i*n) | i <- [1..10] ]

main :: IO()
main = do
    n <- readLn :: IO Int

    
    -- Print the results list 
    mapM_ putStrLn (solve n)


