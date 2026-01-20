-- | page 92
module Lending where

lend amount balance =
  let reserve = 100
      newBalance = balance - amount
   in if balance < reserve
        then Nothing
        else Just newBalance

lend2 amount balance =
  if amount < reserve * 0.5
    then Just newBalance
    else Nothing
  where
    reserve = 100
    newBalance = balance - amount

add3 = a + 3
  where
    a = 10

lend3 amount balance
  | amount <= 0 = Nothing
  | amount > reserve * 0.5 = Nothing
  | otherwise = Just newBalance -- otherwise is just bount to true for readability
  where
    reserve = 100
    newBalance = balance - amount
