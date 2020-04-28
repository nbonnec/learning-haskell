doubleEvenNumber y =
    if (mod y 2 /= 0)
       then y
       else y * 2

getClass :: Int -> String
getClass n = case n of
               5 -> "5"
               6 -> "6"
               _ -> "Whatever.."
