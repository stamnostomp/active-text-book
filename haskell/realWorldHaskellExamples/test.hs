removeNum :: [Int] -> [Int]
removeNum [] = []
removeNum xs =
  let (pre, suf) = break isX xs
   in pre ++ case suf of
        (3 : 4 : rest) -> removeNum rest
        (3 : rest) -> removeNum rest
        (4 : rest) -> removeNum rest
        _ -> []

isX c = c == 3 || c == 4
