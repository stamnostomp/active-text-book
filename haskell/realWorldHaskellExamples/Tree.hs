-- | ch03/Tree.hs
module Tree where

data Tree a
  = Node a (Tree a) (Tree a)
  | Empty
  deriving (Show)

simpleTree =
  Node
    "parent"
    (Node "left Child" Empty Empty)
    (Node "right Child" Empty Empty)

simpleTree2 =
  Node
    "test with mix types"
    (Node 23 Empty Empty)
    (Node 43 Empty Empty)

safeTree =
  Node
    a
    (Tree (Maybe a))
    (Tree (Maybe a))
