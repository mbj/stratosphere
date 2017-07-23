{-# LANGUAGE QuasiQuotes #-}

-- | Derive aeson ToJSON and FromJSON instance.

module Gen.Render.RenderJsonInstances where

import Data.Monoid ((<>))
import Data.Text (Text)
import qualified Data.Text as T
import Text.Shakespeare.Text (st)

import Gen.Render.Types
import Gen.Specifications

-- | Renders to ToJSON and FromJSON instances for a resource.
renderToFromJSON :: Module -> Text
renderToFromJSON module'@Module{..} =
  [st|instance ToJSON #{moduleName} where
  #{renderToJSON module'}

instance FromJSON #{moduleName} where
  #{renderFromJSON module'}
  parseJSON _ = mempty|]

renderToJSON :: Module -> Text
renderToJSON module'@Module{..}
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

renderFromJSON :: Module -> Text
renderFromJSON module'@Module{..}
  | null moduleProperties = [st|parseJSON (Array _) = return #{moduleName}|]
  | otherwise =
      [st|parseJSON (Object obj) =
    #{moduleName} <$>
      #{renderFromJSONFields module'}|]

renderFromJSONFields :: Module -> Text
renderFromJSONFields Module{..} =
  T.intercalate " <*>\n      " $ map renderField moduleProperties
  where
    renderField Property{..} =
      if propertyRequired
      then [st|#{fromJSONWrapper True propertySpecType}(obj .: "#{propertyName}")|]
      else [st|#{fromJSONWrapper False propertySpecType}(obj .:? "#{propertyName}")|]

fromJSONWrapper :: Bool -> SpecType -> Text
fromJSONWrapper required specType = maybe "" go (fromJSONWrapper' specType)
  where
    go wrapper =
      if required
      then wrapper <> " "
      else "fmap (" <> wrapper <> ") "

fromJSONWrapper' :: SpecType -> Maybe Text
fromJSONWrapper' (AtomicType type') = (\t -> "fmap (fmap un" <> t <> ")") <$> atomicType' type'
fromJSONWrapper' (ListType type') = (\t -> "fmap (fmap (fmap un" <> t <> "))") <$> atomicType' type'
fromJSONWrapper' (MapType _) = Nothing
