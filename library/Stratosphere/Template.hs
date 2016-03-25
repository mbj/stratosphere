{-# LANGUAGE OverloadedStrings #-}

module Stratosphere.Template
       ( Properties (..)
       , Template (..)
       , templateDefault
       ) where

import Data.Aeson
import qualified Data.Text as T

import Stratosphere.EC2

data Properties
  = EC2Instance EC2InstanceProperties
  deriving (Show)

instance ToJSON Properties where
  toJSON (EC2Instance ps) = object [
    "Type" .= ("AWS::EC2::Instance" :: String),
    "Properties" .= toJSON ps
    ]

data Template =
  Template
  { templateFormatVersion :: Maybe T.Text
  , templateResources :: [(T.Text, Properties)]
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
