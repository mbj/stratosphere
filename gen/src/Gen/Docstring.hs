{-# LANGUAGE OverloadedStrings #-}

-- | Formats docstrings

module Gen.Docstring where

import qualified Data.Text as T

renderDocstring :: T.Text -> T.Text
renderDocstring = wrapDocstring 79

wrapDocstring :: Int -> T.Text -> T.Text
wrapDocstring width text = T.unlines $ T.pack <$> commented
  where text' = T.append "| " text
        lines' = wrapLine' (width - 3) (T.unpack text')
        commented = fmap (\l -> "-- " ++ l) lines'

wrapLine' :: Int -> String -> [String]
wrapLine' maxLen line = map unwords $ gobble 0 [] $ words line
    where
      gobble :: Int -> [String] -> [String] -> [[String]]
      gobble _ acc [] = [reverse acc]
      gobble k acc ws@(w:rest)
          | l >= maxLen     = reverse acc : [w] : gobble 0 [] rest
          | k + l >= maxLen = reverse acc       : gobble 0 [] ws
          | otherwise       = gobble (k + l + 1) (w : acc) rest
          where l = length w
