{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
{-# OPTIONS_GHC -Wno-deferred-out-of-scope-variables #-}
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



--pattern matching with functions
favTable :: Int -> [Char]
favTable 2   = "First table!"
favTable 3  = "second fvrt!"
favTable 4  = "Third favrt"
favTable table = "Nothing special"

--pattern matching with lists
whatsInsideThisList :: [Int] -> String
whatsInsideThisList []         = "It's empty!"
whatsInsideThisList [x]        = "A single element: " ++ show x
whatsInsideThisList [x, y]     = "Two elements: " ++ show x ++ " and " ++ show y
whatsInsideThisList (x:y:z: []) = "The list has three elements: " ++ show [x,y,z]
whatsInsideThisList (x:rest)   = "The first element is: " ++ show x ++ ", and there are quite a few more!"
       


-- let expression 
amn :: Int -> Int
amn x =   let 
    x = 5
    y = x + 10
    z = y + 20
    in z


--where expression
test :: Num a => p -> a
test z = y + 20
    where
        x = 5
        y = x + 10
        z = y + 20



fruitWithA = filter tempFunct ["Apple", "Banana", "Pear", "Grape", "Wood"]
 where tempFunct x = 'a' `elem` x


cars = [("Toyota",0), ("Nissan",3), ("Ford",1)]
biggerThan0 (_,x) = x > 0
