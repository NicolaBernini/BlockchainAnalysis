
-- A function which works as PHP Explode 
-- https://www.php.net/manual/es/function.explode.php

-- Lists Slice 
-- Arg1: Start Index 
-- Arg2: End Index 
-- Arg3: Input List 
-- Return: Output List 
slice :: Int -> Int -> [a] -> [a]
slice from to xs = take (to - from + 1) (drop from xs)


-- Is Space 
-- Arg1: String 
-- Arg2: Position 
-- Return: Bool representing if i-th char is a space 
is_space :: String -> Int -> Bool 
is_space s i = (s!!i == ' ')

-- Is Char 
-- Arg1: String 
-- Arg2: Position 
-- Return: Bool representing if i-th char is equal to query char 
is_char :: String -> Char -> Int -> Bool 
is_char s c i = (s!!i == c)



-- Builds a List of N elements each representing the position of a space in the input string 
-- Arg1: Input String 
-- Return: List of Int representing the positions of space in the string 
get_spaces :: String -> [Int]
get_spaces s = [i | i <- [0 .. ((length s)-1)], is_space s i]

-- Builds a list of N elements each representing the position of the given chan in the input string 
find_separators :: String -> Char -> [Int]
find_separators s c = [ i | i <- [ 0 .. ((length s)-1) ], is_char s c i ]

-- Equivalen to PHP Explode so breaks the input string into a list of substring according to given separator char 
explode :: String -> Char -> [String]
explode s c 
  | d == [] = [s]
  | otherwise = initial ++ [ slice ((d!!(i-1))+1) ((d!!i)-1) s | i <- [1 .. ((length d)-1)] ] ++ final 
  where 
  d = find_separators s c 
  initial = [(slice 0 ((d!!0)-1) s)]
  final = [(slice ((d!!((length d)-1))+1) ((length s)-1) s)]



-- Tests 
main = do 
  let a = "Hello this is a test of a function"
  let b = "Test"
  print (explode a ' ')
  print (explode b ' ')



