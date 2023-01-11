-- | Formats docstrings

module Gen.Render.RenderDocstring (renderDocstring) where

import Gen.Prelude

import qualified Data.Text as Text

renderDocstring :: Text -> Text
renderDocstring = wrapDocstring 79

wrapDocstring :: Int -> Text -> Text
wrapDocstring width text = Text.init $ Text.unlines $ Text.pack <$> commented
  where
    lines' = wrapLine' (width - 5) (Text.unpack text)
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
      where
        l = length w
