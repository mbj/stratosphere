module Stratosphere.Helpers
       ( maybeField
       , prefixNamer
       , prefixFieldRules
       , modTemplateJSONField
       , NamedItem (..)
       , namedItemToJSON
       , namedItemFromJSON
       ) where

import Control.Lens (set)
import Control.Lens.TH
import Data.Aeson
import Data.Aeson.Types (Parser)
import Data.Char (isUpper, toLower)
import qualified Data.HashMap.Strict as HM
import Data.List (stripPrefix)
import Data.Maybe (maybeToList)
import qualified Data.Text as T
import Language.Haskell.TH

-- | Might create an aeson pair from a Maybe value.
maybeField :: ToJSON a => T.Text -> Maybe a -> Maybe (T.Text, Value)
maybeField field = fmap ((field .=) . toJSON)

-- | Similar to `camelCaseNamer`, except we specify the prefix exactly. We use
-- this because camelCaseNamer is terrible with names that start in all caps,
-- like EC2. We would like to start the field names with "ec2...", but
-- camelCaseNamer wants "eC2...".
prefixNamer :: String -> Name -> [Name] -> Name -> [DefName]
prefixNamer prefix _ _ field = maybeToList $
  do
    fieldPart <- stripPrefix prefix (nameBase field)
    method    <- computeMethod fieldPart
    let cls = "Has" ++ fieldPart
    return (MethodName (mkName cls) (mkName method))
    where computeMethod (x:xs) | isUpper x = Just (toLower x : xs)
          computeMethod _                  = Nothing

-- | See `prefixNamer`
prefixFieldRules :: String -> LensRules
prefixFieldRules prefix = set lensField (prefixNamer prefix) defaultFieldRules

-- | Used for the JSON instances in Template. It is put here because it must be
-- in a separate module.
modTemplateJSONField :: String -> String
modTemplateJSONField "templateFormatVersion" = "AWSTemplateFormatVersion"
modTemplateJSONField s = drop 9 s


-- | This class defines items with names in them. It is used to extract the
-- name from JSON fields so we can get an Object with the names as keys instead
-- of just an array.
class NamedItem a where
  itemName :: a -> T.Text
  nameToJSON :: a -> Value
  nameParseJSON :: T.Text -> Object -> Parser a

namedItemToJSON :: (NamedItem a) => [a] -> Value
namedItemToJSON xs =
    object $ fmap (\x -> itemName x .= nameToJSON x) xs

namedItemFromJSON :: (NamedItem a) => Value -> Parser [a]
namedItemFromJSON v = do
    objs <- parseJSON v :: Parser (HM.HashMap T.Text Value)
    sequence [withObject "NamedItem" (nameParseJSON n) obj |
              (n, obj) <- HM.toList objs]
