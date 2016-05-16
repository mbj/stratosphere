module Main (main) where

import Language.Haskell.HLint (hlint)
import System.Directory (doesDirectoryExist)
import System.Exit (exitFailure, exitSuccess)

arguments :: [String]
arguments =
    [ "library"
    , "tests"
    ]

main :: IO ()
main = do
    -- Need to check for existence of gen directory, because it is not present
    -- in the cabal distribution.
    genExists <- doesDirectoryExist "gen"
    let args = if genExists then "gen" : arguments else arguments

    hints <- hlint args
    if null hints then exitSuccess else exitFailure
