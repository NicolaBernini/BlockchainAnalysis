--- Original Link 
--- https://www.hackerrank.com/challenges/fp-filter-positions-in-a-list/problem

f :: [Int] -> [Int]
f lst = [lst!!i | i <- [0 .. (length lst)-1], odd i] -- Fill up this Function

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
	inputdata <- getContents
	mapM_ (putStrLn. show). f. map read. lines $ inputdata
  
