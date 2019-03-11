{-# LANGUAGE QuasiQuotes #-}

-- | Derive aeson ToJSON instance.

module Gen.Render.RenderJsonInstances
  ( renderToJSON
  ) where

import Data.Monoid ((<>))
import Data.Text (Text)
import qualified Data.Text as T
import Text.Shakespeare.Text (st)

import Gen.Render.Types
import Gen.Specifications

-- | Renders to ToJSON instances for a resource.
renderToJSON :: Module -> Text
renderToJSON module'@Module{..} =
  [st|instance ToJSON #{moduleName} where
  #{renderToJSON' module'}|]

renderToJSON' :: Module -> Text
renderToJSON' module'@Module{..}
  | null moduleProperties = "toJSON _ = toJSON ([] :: [String])"
  | otherwise =
      [st|toJSON #{moduleName}{..} =
    object $
    catMaybes
    [ #{renderToJSONFields module'}
    ]|]

renderToJSONFields :: Module -> Text
renderToJSONFields Module{..} =
  T.intercalate "\n    , " $ map renderField moduleProperties
  where
    renderField Property{..} =
      if propertyRequired
      then [st|(Just . ("#{propertyName}",) . toJSON#{toJSONWrapper propertySpecType}) #{moduleFieldPrefix}#{propertyName}|]
      else [st|fmap (("#{propertyName}",) . toJSON#{toJSONWrapper propertySpecType}) #{moduleFieldPrefix}#{propertyName}|]

toJSONWrapper :: SpecType -> Text
toJSONWrapper (AtomicType type') = maybe "" (" . fmap " <>) (atomicType' type')
-- AFAIK we never have a list of numbers or bools, so I don't think this case
-- occurs. Grep for "fmap (fmap" to check.
toJSONWrapper (ListType type') = maybe "" (\t -> ". fmap (fmap " <> t <> ")") (atomicType' type')
toJSONWrapper (MapType _) = ""

-- | Get the newtype version of the AtomicType, if applicable.
atomicType' :: AtomicType -> Maybe Text
atomicType' IntegerPrimitive = Just "Integer'"
atomicType' DoublePrimitive = Just "Double'"
atomicType' BoolPrimitive = Just "Bool'"
atomicType' _ = Nothing
