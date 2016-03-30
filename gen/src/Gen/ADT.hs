{-# LANGUAGE OverloadedStrings #-}

-- | Makes the big Resources ADT.

module Gen.ADT where

import Control.Lens
import Data.Maybe (fromMaybe)
import Data.Text as T

import Gen.Resource

-- | Makes all the import lines.
renderImports :: [Resource] -> T.Text
renderImports resources = T.unlines $ fmap (mkImport . (^. name)) resources
  where mkImport n = T.concat ["import Stratosphere.Resources.", n, " as X"]

-- | Makes the lines for the big ADT
renderADT :: [Resource] -> T.Text
renderADT resources = T.unlines adtLines
  where prefixes = "  = " : repeat "  | "
        names = fmap (\r -> T.concat [adtName r, " ", r ^. name]) resources
        adtLines = fmap (uncurry T.append) (Prelude.zip prefixes names)

adtName :: Resource -> T.Text
adtName res = T.append (res ^. name) "Resource"

renderToJSONFuncs :: [Resource] -> T.Text
renderToJSONFuncs = T.unlines . fmap renderToJSON

renderToJSON :: Resource -> T.Text
renderToJSON r = T.append line1 line2
  where line1 = T.concat ["  toJSON (", adtName r, " x) =\n"]
        resType = fromMaybe "NOTYPE" (r ^. type')
        line2 = T.concat ["    object [ \"Type\" .= (\"", resType,
                          "\" :: String), \"Properties\" .= toJSON x]"]

renderFromJSONCases :: [Resource] -> T.Text
renderFromJSONCases = T.unlines . fmap renderFromJSON

renderFromJSON :: Resource -> T.Text
renderFromJSON r = T.concat ["\"", resType, "\" -> ", adtName r,
                             " <$> (o .: \"Properties\")"]
  where resType = fromMaybe "NOTYPE" (r ^. type')
