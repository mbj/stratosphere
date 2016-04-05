{-# LANGUAGE OverloadedStrings #-}

-- | Generate Haskell types from resource parameters.

module Gen.Types
       ( renderResourceTypeDecl
       , renderFieldName
       , fieldPrefix
       , renderFieldType
       ) where

import Control.Lens
import qualified Data.Text as T
import Data.Text.Manipulate (lowerHead)

import Gen.Resource


renderResourceTypeDecl :: Resource -> T.Text
renderResourceTypeDecl res = T.concat [header, sigs, footer]
  where header = T.concat ["data ", res ^. name, " =\n  ", res ^. name, "\n  { "]
        types = fmap (renderType $ res ^. name) (res ^. parameters)
        sigs = T.intercalate "\n  , " types
        footer = "\n  } deriving (Show, Generic)"

renderType :: T.Text -> ResourceParameter -> T.Text
renderType resName rp = T.concat [renderFieldName resName rp, " :: ", renderFieldType rp]

renderFieldName :: T.Text -> ResourceParameter -> T.Text
renderFieldName resName rp = T.concat [fieldPrefix resName, rp ^. name]

fieldPrefix :: T.Text -> T.Text
fieldPrefix resName = T.concat ["_", lowerHead resName]

-- | Get the full Haskell type text for a parameter
renderFieldType :: ResourceParameter -> T.Text
renderFieldType rp = tt
  where base = wrapTypeVal (rp ^. type')
        tt = if rp ^. required
             then base
             else wrapTypeMaybe base

-- | Wraps a type with "Val", accounting for whether or not it is a list.
wrapTypeVal :: T.Text -> T.Text
wrapTypeVal t = t'
  where base = listBaseType t
        valWrapper = if base `elem` atomicTypes then "Val " else ""
        valBase = T.concat [valWrapper, base]
        t' = if isListType t then T.concat ["[", valBase, "]"] else valBase

atomicTypes :: [T.Text]
atomicTypes =
  [ "Text"
  , "Bool"
  , "Bool'"
  , "Integer"
  , "Integer'"
  ]

wrapTypeMaybe :: T.Text -> T.Text
wrapTypeMaybe t = if ' ' `elem` T.unpack t && T.head t /= '['
                  then T.concat ["Maybe (", t, ")"]
                  else T.concat ["Maybe ", t]

listBaseType :: T.Text -> T.Text
listBaseType t = if isListType t then t' else t
  where t' = T.tail $ T.init t  -- Remove the brackets

isListType :: T.Text -> Bool
isListType t = T.head t == '[' && T.last t == ']'
