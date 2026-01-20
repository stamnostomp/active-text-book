-- | page 93
module NestedLets where

foo =
  let a = 1
   in let b = 2
       in a + b

-- BAD DO NOT DO THIS!!!

bar =
  let x = 1
   in ((let x = "foo" in x), x)

-- in ghci would be ("foo",1')

guux a =
  let a = "foo"
   in a ++ "eek!"

-- IMPORTANT USE -fwarn-name-shadowing
