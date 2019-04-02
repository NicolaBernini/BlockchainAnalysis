
-- Original Link 
-- https://www.hackerrank.com/challenges/30-review-loop/problem

-- This is needed for the forM_ loop 
import Control.Monad



-- Get chars in odd positions 
get_odd :: String -> String 
get_odd s = [x | i<-[0..((length s)-1)], let x = s!!i, odd i]

-- Get chars in even positions 
get_even :: String -> String 
get_even s = [x | i<-[0..((length s)-1)], let x = s!!i, even i]

main = do 
    n <- readLn :: IO Int 
    forM_ [1..n] $ \n_iter -> do 
        str <- getLine 
        -- Invert even and odd as we use zero-indexed notation 
        putStrLn ((get_even str) ++ " " ++ (get_odd str))





