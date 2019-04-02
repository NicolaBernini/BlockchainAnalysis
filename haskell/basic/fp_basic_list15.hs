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



--- Custom Factorial 
factorial :: Integer -> Double 
factorial 0 = 1 
factorial n = fromIntegral(n) * factorial(n-1)

main :: IO()
main = do
    n <- readLn :: IO Int

    forM_ [1..n] $ \n_itr -> do
        x <- readLn :: IO Double
        --- Estimate up to 10th series term 
        print (sum [ (x^i)/factorial(i) | i <- [0 .. 9] ]) 



