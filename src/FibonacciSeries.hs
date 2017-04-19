import System.Environment (getArgs)

fibonacciNumbers :: [Int]
fibonacciNumbers = 0 : 1 : zipWith (+) fibonacciNumbers (tail fibonacciNumbers)

stringToInt :: String -> Int
stringToInt s = read s :: Int

main = do
    [inpFile] <- getArgs
    input <- readFile inpFile
    mapM_ (print . (\n -> fibonacciNumbers !! stringToInt n)) (lines input)
