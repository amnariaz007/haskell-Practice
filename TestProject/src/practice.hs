module Lib
    ( 
        someFunc
       -- doubleUs
    ) where


-- --returns the string
someFunc :: IO ()
someFunc = putStrLn "Amn is learning haskell"



doubleUs :: Num a => a -> a -> a
doubleUs x y = x*5 + y*5

double :: Num a => a -> a
double x = x + x

quadruple :: Num a => a -> a
quadruple x = double (double x)

average :: Foldable t => t Int -> Int
average ns = sum ns `div` length ns

factorial :: (Num a, Enum a) => a -> a
factorial n = product [1..n]



 



