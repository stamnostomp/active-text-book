-- | page 99

module nil where

nodesAreSame (Node a _ _) (Node b _ _)
  | a == b = Just a
nodesAreSame _ _ = Nothing 
