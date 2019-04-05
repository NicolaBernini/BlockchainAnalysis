
-- Not really an efficient implementation, however it is not the goal of this test 

is_even :: Int -> Bool 
is_even n = n `mod` 2 == 0

is_prime :: Int -> Bool 
is_prime n 
  | n == 0 = False 
  | n == 1 = False 
  | n == 2 = True 
  | n == 3 = True 
  | is_even n = False
  | otherwise = not (or [ ((n `mod` x)==0) | x <- [3,5 .. (n-1)] ]) 

next_prime :: Int -> Int 
next_prime n 
  | (is_even n) && (is_prime (n+1) == True)  = n+1
  | (not (is_even n)) && (is_prime (n+2) == True) = n+2
  | (is_even n) && (is_prime (n+1) == False) = next_prime (n+1)
  | (not (is_even n)) && (is_prime (n+2) == False) = next_prime (n+2)


prime_decomp :: Int -> Int -> [Int] -> [Int]
prime_decomp n c arr 
  | (is_prime n) = arr++[n]
  | (c < n) && ( (n `mod` c) == 0 ) = prime_decomp (n `div` c) c (arr++[c]) 
  | (c < n) && ( (n `mod` c) /= 0 ) = prime_decomp n (next_prime c) arr
  | (c > n) = arr

  

main = do 
  let a = maximum [1,2,3]
  print a 

  print(is_even 5)
  print (is_prime 8)

  print (next_prime 7)

  print (prime_decomp 30 2 [])
  print (prime_decomp 60 2 [])


