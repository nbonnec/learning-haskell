factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

factorial :: Int -> Int
factorial 0 = 1
factorial x = x * (factorial $ x - 1)

z_function :: Int -> Int
z_function 0 = 0
z_function 1 = 1
z_function n = 


