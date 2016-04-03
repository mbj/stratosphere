{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | You can use the AWS CloudFormation Resource Tags property to apply tags
-- to resources, which can help you identify and categorize those resources.
-- You can tag only resources for which AWS CloudFormation supports tagging.
-- For information about which resources you can tag with AWS CloudFormation,
-- see the individual resources in AWS Resource Types Reference. In addition
-- to any tags you define, AWS CloudFormation automatically creates the
-- following stack-level tags with the prefix aws:: All stack-level tags,
-- including automatically created tags, are propagated to resources that AWS
-- CloudFormation supports. Currently, tags are not propagated to Amazon EBS
-- volumes that are created from block device mappings.

module Stratosphere.ResourceProperties.ResourceTag where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


data ResourceTag =
  ResourceTag
  { _resourceTagKey :: Val Text
  , _resourceTagValue :: Val Text
  } deriving (Show, Generic)

instance ToJSON ResourceTag where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 12, omitNothingFields = True }

instance FromJSON ResourceTag where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 12, omitNothingFields = True }

resourceTag
  :: Val Text -- ^ Key
  -> Val Text -- ^ Value
  -> ResourceTag
resourceTag keyarg valuearg =
  ResourceTag
  { _resourceTagKey = keyarg
  , _resourceTagValue = valuearg
  }

-- | The key name of the tag. You can specify a value that is 1 to 128 Unicode
-- characters in length and cannot be prefixed with aws:. You can use any of
-- the following characters: the set of Unicode letters, digits, whitespace,
-- _, ., /, =, +, and -.
rtKey :: Lens' ResourceTag (Val Text)
rtKey = lens _resourceTagKey (\s a -> s { _resourceTagKey = a })

-- | The value for the tag. You can specify a value that is 1 to 128 Unicode
-- characters in length and cannot be prefixed with aws:. You can use any of
-- the following characters: the set of Unicode letters, digits, whitespace,
-- _, ., /, =, +, and -.
rtValue :: Lens' ResourceTag (Val Text)
rtValue = lens _resourceTagValue (\s a -> s { _resourceTagValue = a })