-- | page 45 reall world haskell

module Roygbiv where
import System.Console.Terminfo (Color(Yellow, Green, Blue))


data Roygbiv = Red
             | Orange
             | Yellow
             | Green
             | Blue
             | Indigo
             | Violet
               deriving (Eq, Show)
