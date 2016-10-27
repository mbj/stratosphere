{-# LANGUAGE OverloadedStrings #-}

-- | Renders the lens functions for resources

module Gen.Lens where

import Control.Applicative ((<|>))
import Control.Lens
import Data.Char (isUpper)
import Data.Maybe (fromMaybe)
import qualified Data.Text as T

import Gen.Docstring
import Gen.Resource
import Gen.Types

renderLenses :: Resource -> T.Text
renderLenses res = T.intercalate "\n\n" lenses
  where lenses = fmap (renderLens res) (res ^. parameters)

renderLens :: Resource -> ResourceParameter -> T.Text
renderLens res rp = T.intercalate "\n" [docs, typeDecl, funcDef]
  where docs = renderDocstring (rp ^. documentation)
        lensName' = lensName res rp
        typeText = renderFieldType rp
        wrapType = case T.head typeText of
                     '[' -> typeText
                     '(' -> typeText
                     _   -> if ' ' `elem` T.unpack typeText
                            then T.concat ["(", typeText, ")"]
                            else typeText
        typeDecl = T.concat [lensName', " :: Lens' ", res ^. name, " ", wrapType]
        fieldName = renderFieldName (res ^. name) rp
        funcDef = T.concat [lensName', " = lens ", fieldName,
                            " (\\s a -> s { ", fieldName, " = a })"]
lensName :: Resource -> ResourceParameter -> T.Text
lensName res rp = T.append (T.toLower prefix) (rp ^. name)
  where
    -- To make the prefix we first try getting the lensPrefix, then we try
    -- toAcronym on the resource name, otherwise we use an empty string.
    prefix = fromMaybe "" $ res ^. lensPrefix <|> toAcronym (res ^. name)

toAcronym :: T.Text -> Maybe T.Text
toAcronym t = if T.length uppers >= 1 then Just uppers else Nothing
  where uppers = T.filter isUpper t
