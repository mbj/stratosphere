{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

-- | Generate Haskell types from resource parameters.

module Gen.Types where

import Control.Lens
import Data.Char (toLower)
import qualified Data.Text as T

import Gen.Resource


data HaskellType =
  HaskellType
  { _haskellTypeName :: T.Text
  , _haskellTypeType' :: T.Text
  } deriving (Show)

$(makeFields ''HaskellType)

renderResourceTypeDecl :: Resource -> T.Text
renderResourceTypeDecl res = T.concat [header, sigs, footer]
  where header = T.concat ["data ", res ^. name, " =\n  ", res ^. name, "\n  { "]
        types = fmap renderType (resourceTypes res)
        sigs = T.intercalate "\n  , " types
        footer = "\n  } deriving (Show)"

renderType :: HaskellType -> T.Text
renderType t = T.concat [t ^. name, " :: ", t ^. type']

resourceTypes :: Resource -> [HaskellType]
resourceTypes res = fmap makeType (res ^. parameters)

makeType :: ResourceParameter -> HaskellType
makeType rp = HaskellType nm tp
  where nm = firstCharLower (rp ^. name)
        tp = resTypeText rp

firstCharLower :: T.Text -> T.Text
firstCharLower t = T.cons fc (T.tail t)
  where fc = toLower (T.head t)

-- | Get the full Haskell type text for a parameter
resTypeText :: ResourceParameter -> T.Text
resTypeText rp = tt
  where base = wrapTypeVal (rp ^. type')
        tt = if rp ^. required
             then T.concat ["Maybe (", base, ")"]
             else base

-- | Wraps a type with "Val", accounting for whether or not it is a list.
wrapTypeVal :: T.Text -> T.Text
wrapTypeVal t =
  case listBaseType t of
    Nothing   -> T.concat ["Val ", t]
    (Just t') -> T.concat ["Val [", t', "]"]

listBaseType :: T.Text -> Maybe T.Text
listBaseType t = if isListType t then Just t' else Nothing
  where t' = T.tail $ T.init t  -- Remove the brackets

isListType :: T.Text -> Bool
isListType t = T.head t == '[' && T.last t == ']'
