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
