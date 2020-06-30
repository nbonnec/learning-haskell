import Data.Text
import Numeric

withdraw :: Int -> Float -> Float
withdraw amount balance
    | amount_f > balance = balance
    | (balance - amount_f - 0.5 < 0) = balance
    | (mod amount 5 /= 0) = balance
    | otherwise = balance - amount_f - 0.5
    where amount_f = fromIntegral amount

main = do

    input <- getLine

    let input_splitted = splitOn (pack " ") (pack input)

    let amount = read (unpack (input_splitted !! 0)) :: Int
    let balance = read (unpack (input_splitted !! 1)) :: Float

    let new_balance = withdraw amount balance

    putStrLn(show new_balance)
