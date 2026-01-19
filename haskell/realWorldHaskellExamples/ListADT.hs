-- | ch03/ListADT.hs
module ListADT where

data List a
  = Cons a (List a)
  | Nil
  deriving (Show)

fromList (x : xs) = Cons x (fromList xs)
fromList [] = Nil

-- Exercises

-- Wire the converse of fromList for the List type: a function that takes a List a and generates a [a]

putList (x : xs) = putList xs (Cons x)
putList [] = Nil
