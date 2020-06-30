import Data.List
import System.IO

addMe :: Int -> Int -> Int

-- funcName param1 param2 = operations (returned value)
-- No uppercase letter at the beginning!

addMe x y = x + y

-- Generic
sumMe x y = x + y

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x, y) (x2, y2) = (x + x2, y + y2)


whatAge :: Int -> String

whatAge 16 = "You can drive!"
whatAge 18 = "You can vote!"
whatAge 21 = "You're an adult!"
whatAge _ = "Nothing important."

-- Recursive
factorial :: Int -> Int

factorial 0 = 1
factorial n = n * factorial (n - 1)

productF n = [1..n]

isOdd :: Int -> Bool

-- guards
-- otherwise
isOdd n
    | mod n 2 == 0 = False
    | otherwise = True

isEven n = mod n 2 == 0

whatGrade :: Int -> String

whatGrade age
    | (age >= 5) && (age <= 6) = "Kindergarten"
    | (age > 6) && (age <= 10) = "not Kindergarten"
    | otherwise = "Whatever"


batAvgRatting :: Double -> Double -> String

-- where
batAvgRatting hits atBats
    | avg <= 0.200 = "Terrible avg"
    | avg <= 0.250 = "Average"
    | otherwise = "Superstar"
    where avg = hits / atBats

getListItems :: [Int] -> String
getListItems (x:[]) = "Your list starts with " ++ show x
getListItems (x:y:[]) = "Your list contains " ++ show x ++ " and " ++ show y
getListItems (x:xs) = "The fst item is " ++ show x ++ " the rest is " ++ show xs

getFirstItem :: String -> String
getFirstItem [] = "Empty String"
getFirstItem all@(x:xs) = "The first letter in " ++ all ++ " is " ++ [x]


-- Map
times4 :: Int -> Int
times4 x = x * 4

listTimes4 = map times4 [1, 2, 3, 4]

multBy4 :: [Int] -> [Int]
multBy4 [] = []
multBy4 (x:xs) = times4 x : multBy4 xs

areStringsEq :: [Char] -> [Char] -> Bool
areStringsEq [] [] = True
areStringsEq (x:xs) (y:ys) = x == y && areStringsEq xs ys
areStringsEq _ _ = False

-- A function in a function
doMult :: (Int -> Int) -> Int
doMult func = func 3

num3Times4 = doMult times4

-- Return a function
getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y

adds3 = getAddFunc 3
fourPlus3 = adds3 4

-- lambdas
dbl1To10 = map (\x -> x * 2)[1..10]
