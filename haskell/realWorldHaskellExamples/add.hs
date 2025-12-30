-- | add from chapter 3 page 47

module Add  where


myNot True = False
myNot False = True

sumList (x:xs) = x + sumList xs
sumList []     = 0
