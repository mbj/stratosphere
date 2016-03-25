{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StandaloneDeriving #-}
{-# LANGUAGE TemplateHaskell #-}

module Stratosphere.Template
       ( Template (..)
       , Resource (..)
       , templateDefault
       ) where

import Data.Aeson
import Data.Aeson.TH
import qualified Data.Text as T


data Template =
  Template
  { templateFormatVersion :: Maybe T.Text
  , templateResources :: [(T.Text, Resource)]
  } deriving (Show)

instance ToJSON Template where
  toJSON (Template v rs) = object $
    maybe [] (\v' -> ["AWSTemplateFormatVersion" .= v']) v ++
    [ "Resources" .= object (map (\(lid, ps) -> lid .= toJSON ps) rs)
    ]

templateDefault :: Template
templateDefault =
  Template
  { templateFormatVersion = Nothing
  , templateResources = []
  }

data Resource =
  Resource
  { resourceType :: T.Text
  , resourceProperties :: Object
  } deriving (Show)

$(deriveJSON defaultOptions { fieldLabelModifier = drop 8 } ''Resource)
