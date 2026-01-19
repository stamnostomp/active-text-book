-- | chapter 3 page 54
module Nullable where

data Maybe a
  = Just a
  | Nothing

someBool = Just True

someString = Just "somthing"
