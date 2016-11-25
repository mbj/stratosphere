-- | Renders the lens functions for resources

module Gen.Render.RenderLenses where

import Data.Monoid ((<>))
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
renderLens Module{..} property@Property{..} = T.intercalate "\n" [docs, typeDecl, funcDef]
  where
    docs = renderDocstring propertyDocumentation
    lensName = moduleLensPrefix <> propertyName
    typeText = renderPropertyType property
    wrapType = case T.head typeText of
                 '[' -> typeText
                 '(' -> typeText
                 _   -> if ' ' `elem` T.unpack typeText
                        then T.concat ["(", typeText, ")"]
                        else typeText
    typeDecl = lensName <> " :: Lens' " <> moduleName <> " " <> wrapType
    fieldName = moduleFieldPrefix <> propertyName
    funcDef = lensName <> " = lens " <> fieldName <> " (\\s a -> s { " <> fieldName <> " = a })"
