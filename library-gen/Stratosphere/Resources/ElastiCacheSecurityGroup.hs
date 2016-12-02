{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group.html

module Stratosphere.Resources.ElastiCacheSecurityGroup where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ElastiCacheSecurityGroup. See
-- | 'elastiCacheSecurityGroup' for a more convenient constructor.
data ElastiCacheSecurityGroup =
  ElastiCacheSecurityGroup
  { _elastiCacheSecurityGroupDescription :: Val Text
  } deriving (Show, Generic)

instance ToJSON ElastiCacheSecurityGroup where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

instance FromJSON ElastiCacheSecurityGroup where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

-- | Constructor for 'ElastiCacheSecurityGroup' containing required fields as
-- | arguments.
elastiCacheSecurityGroup
  :: Val Text -- ^ 'ecsegDescription'
  -> ElastiCacheSecurityGroup
elastiCacheSecurityGroup descriptionarg =
  ElastiCacheSecurityGroup
  { _elastiCacheSecurityGroupDescription = descriptionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group.html#cfn-elasticache-securitygroup-description
ecsegDescription :: Lens' ElastiCacheSecurityGroup (Val Text)
ecsegDescription = lens _elastiCacheSecurityGroupDescription (\s a -> s { _elastiCacheSecurityGroupDescription = a })
