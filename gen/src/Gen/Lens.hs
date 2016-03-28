{-# LANGUAGE OverloadedStrings #-}

-- | Renders the lens functions for resources

module Gen.Lens where

import Control.Lens
import qualified Data.Text as T
import Data.Text.Manipulate (lowerHead)

import Gen.Resource
import Gen.Types

renderLenses :: Resource -> T.Text
renderLenses res = T.intercalate "\n\n" lenses
  where lenses = fmap (renderLens $ res ^. name) (res ^. parameters)

renderLens :: T.Text -> ResourceParameter -> T.Text
renderLens resName rp = T.intercalate "\n" [typeDecl, funcDef]
  where lensName = lowerHead (rp ^. name)
        typeText = renderFieldType rp
        wrapType = case T.head typeText of
                     '[' -> typeText
                     '(' -> typeText
                     _   -> T.concat ["(", typeText, ")"]
        typeDecl = T.concat [lensName, " :: Lens' ", resName, " ", wrapType]
        fieldName = renderFieldName resName rp
        funcDef = T.concat [lensName, " = lens ", fieldName,
                            " (\\s a -> s { ", fieldName, " = a })"]
