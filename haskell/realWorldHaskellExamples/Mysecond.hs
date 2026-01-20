-- | page 92
module Mysecond where

mySecond :: [a] -> a
mySecond xs =
  if null (tail xs)
    then error "list is to short" -- bad because always unrecoverable stoping exectution 
    else head (tail xs)



safeSecond :: [a] -> Maybe a
safeSecond xs = if null (tail xs) -- better because it will return nothing on a bad match
                then Nothing



tidySecond :: [a] -> Maybe a
tidySecond (_:x:_) = Just x
tidySecond _       = Nothing 


  
