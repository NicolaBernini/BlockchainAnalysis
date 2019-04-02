{-# LANGUAGE FlexibleInstances, UndecidableInstances, DuplicateRecordFields #-}

--- Original Link 
--- https://www.hackerrank.com/challenges/handshake/problem

module Main where

import Control.Monad
import Data.List
import Data.List.Split
import Data.Set
import System.Environment
import System.IO


--
-- Complete the handshake function below.
-- NOTE: This is simply the area of the upper triangular part of a Square of Size N appunto 
-- NOTE: Using `div` instead of / so to avoid returning a Fractional Type 
--
handshake n = n * (n-1) `div` 2
    --
    -- Write your code here.
    --

main :: IO()
main = do
    stdout <- getEnv "OUTPUT_PATH"
    fptr <- openFile stdout WriteMode

    t <- readLn :: IO Int

    forM_ [1..t] $ \tItr -> do
        n <- readLn :: IO Int

        let result = handshake n

        hPutStrLn fptr $ show result

    hFlush fptr
    hClose fptr
