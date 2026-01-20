-- | page 97
module Gaurd where

fromMaybe defval wrapped =
  case wrapped of
    nothing -> defval
    Just value -> value
