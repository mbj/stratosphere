module Main (main) where

import Language.Haskell.HLint (hlint)
import System.Exit (exitFailure, exitSuccess)

arguments :: [String]
arguments =
  [ "library"
  , "library-gen"
  , "tests"
  , "-i", "Use newtype instead of data"
  , "-i", "Unused LANGUAGE pragma"
  , "-i", "Redundant do"
  ]

main :: IO ()
main = do
  hints <- hlint arguments
  if null hints then exitSuccess else exitFailure
