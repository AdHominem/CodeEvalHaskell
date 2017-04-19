{-# LANGUAGE OverloadedStrings #-}

import System.Environment (getArgs)
import Data.Text (Text, splitOn, strip)
import qualified Data.Text as Text
import qualified Data.Text.IO as IO
import Data.Text.Read (decimal)
import Data.List (intercalate)

textToInt :: Text -> Int
textToInt s = case decimal s of
    Right (i,_) -> i

textToInts :: Text -> [Int]
textToInts s = map textToInt (splitOn " " (strip s))

main = do
    [inpFile] <- getArgs
    input <- IO.readFile inpFile
    mapM_ (print . unwords . map show . (\listOfTwo -> zipWith (*) (head listOfTwo) (listOfTwo !! 1)) .
        map textToInts . splitOn "|")(Text.lines input)


