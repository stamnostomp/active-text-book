lastButOne :: [a] -> a
lastButOne xs = head (drop 1 (take 2 (reverse xs)))
