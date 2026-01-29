import Data.List
import Data.Ord (comparing)

{--
1. Write a function that computes the number of elements in a list. To test it, ensure that it gives the same
answers as the standard length function.
2. Add a type signature for your function to your source file. To test it, load the source file into ghci again.
--}
myLength :: [a] -> Int
myLength [] = 0
myLength (x : xs) = (+ 1) (myLength xs)

{-
3. Write a function that computes the mean of a list, i.e. the sum of all elements in the list divided by its
length. (You may need to use the fromIntegral function to convert the length of the list from an
integer into a floating point number.)
-}

listMean :: [Int] -> Int
listMean [] = 0
listMean list = (sum list) `div` (myLength list)

{-
4. Turn a list into a palindrome, i.e. it should read the same both backwards and forwards. For example,
given the list [1,2,3], your function should return [1,2,3,3,2,1].
-}

toPalindrome :: [a] -> [a]
toPalindrome [] = []
toPalindrome list = list ++ (reverse list)

{-
5. Write a function that determines whether its input list is a palindrome.
-}
isPalindrome :: (Eq a) => [a] -> Bool -- (Eq a) => [a] mean that [a] can be anything that is derived from the eq class in otherword it is constraind to types that can be cmpared
isPalindrome list = list == reverse list

{-
6. Create a function that sorts a list of lists based on the length of each sublist. (You may want to look at
the sortBy function from the Data.List module.)
-}

sortSubList :: [[a]] -> [[a]]
sortSubList = sortBy (comparing length)

{-
7. Define a function that joins a list of lists together using a separator value.
-}

joinLOL :: [a] -> [[a]] -> [a]
joinLOL _ [] = []
joinLOL _ [x] = x
joinLOL sep (x : xs) = x ++ sep ++ joinLOL sep xs

{-
8. Using the binary tree type that we defined earlier in this chapter, write a function that will determine
the height of the tree. The height is the largest number of hops from the root to an Empty. For example,
the tree Empty has height zero; Node "x" Empty Empty has height one; Node "x" Empty (Node "y"
Empty Empty) has height two; and so on.
-}

data Tree a
  = Node a (Tree a) (Tree a)
  | Empty
  deriving (Show)

findHight :: Tree a -> Int
findHight Empty = 0
findHight (Node _ left right) = 1 + max (findHight left) (findHight right)

{-
9. Consider three two-dimensional points a, b, and c. If we look at the angle formed by the line segment
from a to b and the line segment from b to c, it either turns left, turns right, or forms a straight line.
Define a Direction data type that lets you represent these possibilities.
-}

data Direction
  = TurnLeft
  | TurnRight
  | GoStraight
  deriving (Show)

type Point2D = (Double, Double)

{-
10. Write a function that calculates the turn made by three 2D points and returns a Direction.
-}

calcTurn :: Point2D -> Point2D -> Point2D -> Direction
calcTurn (x1, y1) (x2, y2) (x3, y3) = case compare area 0 of
  LT -> TurnRight
  EQ -> GoStraight
  GT -> TurnLeft
  where
    area = (x2 - x1) * (y3 - y1) - (y2 - y1) * (x3 - x1)

{-
12. Using the code from the preceding three exercises, implement Graham’s scan algorithm for the
convex hull of a set of 2D points. You can find good description of what a convex hull2. is, and how the
Graham scan algorithm3 should work, on Wikipedia4.
-}
