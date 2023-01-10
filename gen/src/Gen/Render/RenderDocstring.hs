{-# LANGUAGE OverloadedStrings #-}

-- | Formats docstrings

module Gen.Render.RenderDocstring where

import Data.Text (Text)

import qualified Data.Text as T

renderDocstring :: Text -> Text
renderDocstring = wrapDocstring 79

wrapDocstring :: Int -> Text -> Text
wrapDocstring width text = T.init $ T.unlines $ T.pack <$> commented
  where
    lines' = wrapLine' (width - 5) (T.unpack text)
    commented = zipWith (++) ("-- | " : repeat "-- ") lines'

wrapLine' :: Int -> String -> [String]
wrapLine' maxLen line = filter (not . null) $ map unwords $ gobble 0 [] $ words line
  where
    gobble :: Int -> [String] -> [String] -> [[String]]
    gobble _ acc [] = [reverse acc]
    gobble k acc ws@(w:rest)
        | l >= maxLen     = reverse acc : [w] : gobble 0 [] rest
        | k + l >= maxLen = reverse acc       : gobble 0 [] ws
        | otherwise       = gobble (k + l + 1) (w : acc) rest
        where l = length w
