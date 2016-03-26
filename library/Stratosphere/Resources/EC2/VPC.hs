{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell #-}

module Stratosphere.Resources.EC2.VPC
       ( VPC (..)
       , vpcDefault
       , makeVPC

       -- Lenses
       , cidrBlock
       , enableDnsSupport
       , enableDnsHostnames
       , instanceTenancy
       , tags
       ) where

import Control.Lens.TH
import Data.Aeson
import Data.Aeson.TH
import qualified Data.Text as T

import Stratosphere.Helpers
import Stratosphere.Resources.EC2.Instance (ResourceTag(..), HasTags, tags)
import Stratosphere.Template
import Stratosphere.Values

data VPC =
  VPC
  { vpcCidrBlock :: Val T.Text
  , vpcEnableDnsSupport :: Maybe (Val Bool)
  , vpcEnableDnsHostnames :: Maybe (Val Bool)
  , vpcInstanceTenancy :: Maybe (Val T.Text)
  , vpcTags :: Maybe [ResourceTag]
  } deriving (Show)

$(deriveJSON defaultOptions { fieldLabelModifier = drop 3
                            , omitNothingFields = True } ''VPC)
$(makeLensesWith (prefixFieldRules "vpc") ''VPC)


vpcDefault :: VPC
vpcDefault =
  VPC
  { vpcCidrBlock = ""
  , vpcEnableDnsSupport = Nothing
  , vpcEnableDnsHostnames = Nothing
  , vpcInstanceTenancy = Nothing
  , vpcTags = Nothing
  }


makeVPC :: CidrBlock -> VPC
makeVPC cidr = vpcDefault { vpcCidrBlock = cidr }

type CidrBlock = Val T.Text

instance ToResource VPC where
  toResource props =
    Resource
    { resourceType' = "AWS::EC2::VPC"
    , resourceProperties = props'
    }
    where (Object props') = toJSON props
