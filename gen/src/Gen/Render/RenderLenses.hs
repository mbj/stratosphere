-- | Renders the lens functions for resources

module Gen.Render.RenderLenses where

import Data.Char (isUpper)
import Data.Maybe (fromMaybe)
import Data.Text (Text)
import qualified Data.Text as T

import Gen.Render.RenderDocstring
import Gen.Render.RenderTypes
import Gen.Render.Types
import Gen.Specifications

renderLenses :: Module -> Text
renderLenses module'@Module{..} = T.intercalate "\n\n" lenses
  where lenses = fmap (renderLens module') moduleProperties

renderLens :: Module -> Property -> Text
renderLens module'@Module{..} property@Property{..} = T.intercalate "\n" [docs, typeDecl, funcDef]
  where docs = renderDocstring moduleDocumentation
        lensName' = lensName module' property
        typeText = renderPropertyType property
        wrapType = case T.head typeText of
                     '[' -> typeText
                     '(' -> typeText
                     _   -> if ' ' `elem` T.unpack typeText
                            then T.concat ["(", typeText, ")"]
                            else typeText
        typeDecl = T.concat [lensName', " :: Lens' ", moduleName, " ", wrapType]
        fieldName = T.concat [fieldPrefix moduleName, propertyName]
        funcDef = T.concat [lensName', " = lens ", fieldName,
                            " (\\s a -> s { ", fieldName, " = a })"]
lensName :: Module -> Property -> T.Text
lensName Module {..} Property {..} = T.append (T.toLower prefix) propertyName
  where
    -- To make the prefix we first try getting the lensPrefix, then we try
    -- toAcronym on the resource name, otherwise we use an empty string.
    --prefix = fromMaybe "" $ res ^. lensPrefix <|> toAcronym (res ^. name)
    prefix = fromMaybe "" $ toAcronym moduleName

toAcronym :: T.Text -> Maybe T.Text
toAcronym t = if T.length uppers >= 1 then Just uppers else Nothing
  where uppers = T.filter isUpper t
