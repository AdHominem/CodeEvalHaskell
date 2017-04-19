isPrime :: Int -> Bool
isPrime n = n >= 2 && all (\z -> gcd n z == 1) [2..(round $ sqrt $ fromIntegral n)]

main = print $ sum $ take 1000 [i | i <- [2..], isPrime i]
