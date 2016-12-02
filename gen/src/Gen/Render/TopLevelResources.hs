{-# LANGUAGE OverloadedStrings #-}

-- | Makes the big Resources ADT and type classes for it.

module Gen.Render.TopLevelResources where

import Data.Monoid ((<>))
import Data.Text (Text)
import qualified Data.Text as T

import Gen.Render.Types

-- | Makes all the import lines.
renderImports :: [Text] -> Text
renderImports paths = T.unlines $ fmap mkImport paths
  where mkImport path = "import " <> path <> " as X"

-- | Makes the lines for the big ADT
renderADT :: [Module] -> Text
renderADT modules = T.unlines adtLines
  where
    prefixes = "  = " : repeat "  | "
    names = fmap (\m -> adtName m <> " " <> moduleName m) modules
    adtLines = fmap (uncurry T.append) (Prelude.zip prefixes names)

adtName :: Module -> Text
adtName Module{..} = moduleName <> "Properties"

renderToJSONFuncs :: [Module] -> Text
renderToJSONFuncs = T.unlines . fmap renderTopLevelToJSON

renderTopLevelToJSON :: Module -> Text
renderTopLevelToJSON module'@Module{..} = T.append line1 line2
  where
    line1 = T.concat ["resourcePropertiesJSON (", adtName module', " x) =\n"]
    line2 = T.concat ["  [ \"Type\" .= (\"", moduleResourceType,
                       "\" :: String), \"Properties\" .= toJSON x]"]

renderFromJSONCases :: [Module] -> Text
renderFromJSONCases = T.unlines . fmap renderTopLevelFromJSON

renderTopLevelFromJSON :: Module -> Text
renderTopLevelFromJSON module'@Module{..} =
  T.concat ["         \"", moduleResourceType, "\" -> ", adtName module',
             " <$> (o .: \"Properties\")"]
