
find_first :: Int -> Int
find_first n = mod n 10

find_last :: Int -> Int
find_last n
    | div == 0 = n
    | otherwise = find_last div
    where div = floor (fromIntegral n / 10) :: Int

find_sum :: Int -> Int
find_sum n = find_last n + find_first n

process :: Int -> IO ()
process times = do
    num_str <- getLine
    let num = read num_str :: Int
    putStrLn(show (find_sum num))
    if times /= 1
    then process (times - 1)
    else return()

main = do
    test_number <- readLn
    process test_number
