
countFours :: Int -> Int
countFours x
    | (resultOfMod == 0) && (resultOfDiv == 0) = 0
    | resultOfMod == 4 = 1 + countFours resultOfDiv
    | otherwise = countFours resultOfDiv
    where resultOfMod = mod (fromIntegral x) 10
          resultOfDiv = floor $ (fromIntegral x) / 10

process :: Int -> IO ()
process times = do
    num_str <- getLine
    let num = read num_str :: Int
    putStrLn(show (countFours num))
    if times /= 1
    then process (times - 1)
    else return()

main = do
    test_number <- readLn
    process test_number
