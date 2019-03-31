
--- Original Problem at 
--- https://www.hackerrank.com/challenges/area-under-curves-and-volume-of-revolving-a-curv/problem

import Text.Printf (printf)

-- Polynomial Definition 
f :: [Double] -> [Double] -> Double -> Double 
f l_a l_b x = sum[ a*(x**b) | (a,b) <- zip l_a l_b]

-- Compute the Area under a curve for given Poly 
-- Arg1: Poly :: (Double -> Double)
-- Arg2: dx :: Double 
-- Arg3: domain left limit :: Double 
-- Arg4: domain right limit :: Double 
area :: (Double -> Double) -> Double -> Double -> Double -> Double 
area f dx x0 x1 = sum[ (f x)*dx | x <- [x0, x0+dx..x1] ]


-- Compute Volume revolving the Poly around x axis 
volume :: (Double -> Double) -> Double -> Double -> Double -> Double 
volume f dx x0 x1 = sum[ pi*((f x)^2)*dx | x <- [x0, x0+dx .. x1] ]

-- Conversion Function for a list 
conv :: [Int] -> [Double]
conv a = [fromIntegral(x) | x <- a]

-- Builds the return list 
solve :: Int -> Int -> [Int] -> [Int] -> [Double]
solve l r a b = [area (f (conv a) (conv b)) 0.001 (fromIntegral l) (fromIntegral r), volume (f (conv a) (conv b)) 0.001 (fromIntegral l) (fromIntegral r)]

--Complete this function--

--Input/Output.
main :: IO ()
main = getContents >>= mapM_ (printf "%.1f\n"). (\[a, b, [l, r]] -> solve l r a b). map (map read. words). lines
