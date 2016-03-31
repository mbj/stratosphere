{-# LANGUAGE OverloadedStrings #-}

-- | Renders the lens functions for resources

module Gen.Lens where

import Control.Lens
import Data.Char (toLower, isUpper)
import Data.Maybe (fromMaybe)
import qualified Data.Text as T

import Gen.Docstring
import Gen.Resource
import Gen.Types

renderLenses :: Resource -> T.Text
renderLenses res = T.intercalate "\n\n" lenses
  where lenses = fmap (renderLens $ res ^. name) (res ^. parameters)

renderLens :: T.Text -> ResourceParameter -> T.Text
renderLens resName rp = T.intercalate "\n" [docs, typeDecl, funcDef]
  where docs = renderDocstring (rp ^. documentation)
        lensName' = lensName resName rp
        typeText = renderFieldType rp
        wrapType = case T.head typeText of
                     '[' -> typeText
                     '(' -> typeText
                     _   -> T.concat ["(", typeText, ")"]
        typeDecl = T.concat [lensName', " :: Lens' ", resName, " ", wrapType]
        fieldName = renderFieldName resName rp
        funcDef = T.concat [lensName', " = lens ", fieldName,
                            " (\\s a -> s { ", fieldName, " = a })"]


lensName :: T.Text -> ResourceParameter -> T.Text
lensName resName rp = T.append prefix' (rp ^. name)
  where prefix = fromMaybe "" (toAcronym resName)
        prefix' = T.pack $ toLower <$> T.unpack prefix

toAcronym :: T.Text -> Maybe T.Text
toAcronym t = if T.length uppers >= 1 then Just uppers else Nothing
  where uppers = T.filter isUpper t
