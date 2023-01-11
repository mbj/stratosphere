{-# LANGUAGE QuasiQuotes #-}

-- | Renders the lens functions for resources

module Gen.Render.RenderLenses (renderLenses) where

import Data.Text (Text)
import Gen.Prelude
import Gen.Render.Module
import Gen.Render.RenderDocstring
import Gen.Render.RenderTypes
import Gen.Specifications
import Text.Shakespeare.Text (st)

import qualified Data.Text as T

renderLenses :: Module -> Text
renderLenses module'@Module{..} = T.intercalate "\n\n" lenses
  where
    lenses = fmap (renderLens module') moduleProperties

renderLens :: Module -> Property -> Text
renderLens Module{..} property@Property{..} =
  [st|#{renderDocstring propertyDocumentation}
#{lensName} :: Lens' #{moduleName} #{wrapType}
#{lensName} = lens #{fieldName} (\s a -> s { #{fieldName} = a })|]
  where
    lensName = moduleLensPrefix <> propertyName
    typeText = renderPropertyType property
    wrapType = case T.head typeText of
                 '[' -> typeText
                 '(' -> typeText
                 _   -> if ' ' `elem` T.unpack typeText
                        then T.concat ["(", typeText, ")"]
                        else typeText
    fieldName = moduleFieldPrefix <> propertyName
