
-- Binary Search on a List of Generic Type 

import Data.Array
import Data.Maybe

binary_search :: (Eq a, Ord a) => a -> [a] -> Int -> Int -> Maybe Int 


binary_search _ [] _ _ = Nothing 

binary_search q arr start end 
  | (start==end) && (q == (arr!!start)) = Just start 
  | (start==end) && (q /= (arr!!start)) = Nothing 
  | (q == (arr!!m)) = Just m 
  | (q < (arr!!m)) = binary_search q arr start m 
  | otherwise = binary_search q arr (m+1) end 
  where m = quot (start+end) 2 

main = do 
  putStrLn "Ciao"

  let a = [1,3,5,11,21,22]
  let q = [3,4,5,26,11]
  let res_expected = [Just 1, Nothing, Just 2, Nothing, Just 3] :: [Maybe Int] 
  putStrLn $ show $ binary_search 5 a 0 ((length a)-1)
  putStrLn $ show $ map (\x -> binary_search x a 0 ((length a)-1) ) q 
  putStrLn $ show res_expected













