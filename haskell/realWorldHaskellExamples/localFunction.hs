-- | page 94

module localFunction where

pluralise :: String -> [Int] -> Int
pluralise word counts = map plural counts
  where
    plural 0 = "no " ++ word ++ "s"
    plural 1 = "one " ++ word ++ "s"
    plural n = show n ++ " " ++ word ++ "s"
