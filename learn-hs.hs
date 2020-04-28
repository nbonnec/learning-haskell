{-
  - Learning haskell.
-}

import Data.List
import System.IO

-- Int
maxInt = maxBound :: Int
minInt = minBound :: Int

-- Float
-- Double
bigFloat = 3.999999999999 + 9.0000000005

-- Bool True False
-- Char '
-- Tuple

always :: Int
always = 5

sumOfNums = sum[1..1000] -- list here

addEx = 5 + 4
subEx = 5 - 4
multEx = 5 * 4
divEx = 5 / 4

modEx = mod 5 4
modEx2 = 5 `mod` 4

negNumEx = 5 + (-4)

-- sqrt
num9 = 9 :: Int
sqrtOf9 = sqrt (fromIntegral num9)

-- Built in math functions
piVal = pi
ePow9 = exp 9
logOf9 = 9
squared9 = 9 ** 2
truncateVal = truncate 9.999
roundVal = round 9.999
ceilingVal = ceiling 9.999
floorVal = floor 9.999

-- Also sin, cos, tan, ....

-- Boolean
trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True)

-- Lists
primeNumbers = [3, 5, 7, 11]
morePrime = primeNumbers ++ [13, 27]
favNums = 2 : 7 : 21 : 66 : []
multList = [[3, 5, 7], [11, 13, 17]]
morePrimes2 = 2 : morePrime
lenPrime = length morePrimes2
revPrime = reverse morePrimes2
isListEmpty = null morePrimes2
secondPrime = morePrimes2 !! 1
firstPrime = head morePrimes2
is7inList = elem 7 morePrimes2
evenList = [2, 4 .. 20]
listChar = ['A', 'C' .. 'Z']
many2s = take 10 (repeat 2)
cycleList = take 10 (cycle [1, 2, 3, 4, 5])
listTimes2 = [x * 2 | x <- [1..10]]
listTimes3 = [x * 3 | x <- [1..10], x * 3 <= 50]
divisBy9And13 = [x | x <- [1..500], mod x 9 == 0, mod x 13 == 0]
sortedList = sort [1, 8, 3]
sumOfLists = zipWith (+) [1, 2, 3, 4, 5] [6, 7, 8, 8, 10]
listBiggerThen5 = filter (>5) morePrime
evensUpTo2 = takeWhile (<= 20) [2, 4 ..]
multOfList = foldl (*) 1 [2, 3, 4, 5]

-- Tuples
randTuple = (1, "Random Tuple")
bobSmith = ("Bob", 52)
bobsName = fst bobSmith
bobsAge = snd bobSmith
names = ["Eric", "Matthieu", "Patrick"]
ages = [38, 39, 52]
namesAges = zip names ages
