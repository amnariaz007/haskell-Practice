module Lib
    ( 
        someFunc
       -- doubleUs
    ) where


-- --returns the string
someFunc :: IO ()
someFunc = putStrLn "Amn is learning haskell"

--Simple Functions

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

--If else stateement 
checkAge :: Int -> String 
checkAge age = 
    if age == 18
        then "She is 18"
        else "She is not 18"


--Guards in place of If else        
checkTheDay :: String -> String 
checkTheDay day
    | day == "M" = "Its Monday "
    | day == "T" = "Its Tuesday"
    | day == "W" = "Its wednesday"
    | day == "TH" = "Its Thursday"
    | day == "TF" = "Its friday"
    | otherwise = "nothing"
       


-- let expression 
amn :: Int -> Int
amn x =   let 
    x = 5
    y = x + 10
    z = y + 20
    in z



