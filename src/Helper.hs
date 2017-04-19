module Helper where

import Data.Text hiding (map)
import Data.Text.IO as IO
import Data.Text.Read

stringToInt :: String -> Int
stringToInt s = read s :: Int

stringToInts :: Text -> [Int]
stringToInts s = map stringToInt (splitOn " " (strip s))

textToInt :: Text -> Int
textToInt s = case decimal s of
    Right (i,_) -> i

textToInts :: Text -> [Int]
textToInts s = map textToInt (splitOn " " (strip s))