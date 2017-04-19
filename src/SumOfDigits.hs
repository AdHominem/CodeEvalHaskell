import System.Environment (getArgs)
import Data.Char

sumOfDigits :: String -> Int
sumOfDigits n = sum $ map digitToInt n

main = do
    [inpFile] <- getArgs
    input <- readFile inpFile
    mapM_ (print . sumOfDigits) (lines input)