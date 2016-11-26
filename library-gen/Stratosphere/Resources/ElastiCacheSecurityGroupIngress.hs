{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group-ingress.html

module Stratosphere.Resources.ElastiCacheSecurityGroupIngress where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ElastiCacheSecurityGroupIngress. See
-- | 'elastiCacheSecurityGroupIngress' for a more convenient constructor.
data ElastiCacheSecurityGroupIngress =
  ElastiCacheSecurityGroupIngress
  { _elastiCacheSecurityGroupIngressCacheSecurityGroupName :: Val Text
  , _elastiCacheSecurityGroupIngressEC2SecurityGroupName :: Val Text
  , _elastiCacheSecurityGroupIngressEC2SecurityGroupOwnerId :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ElastiCacheSecurityGroupIngress where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 32, omitNothingFields = True }

instance FromJSON ElastiCacheSecurityGroupIngress where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 32, omitNothingFields = True }

-- | Constructor for 'ElastiCacheSecurityGroupIngress' containing required
-- | fields as arguments.
elastiCacheSecurityGroupIngress
  :: Val Text -- ^ 'ecsgiCacheSecurityGroupName'
  -> Val Text -- ^ 'ecsgiEC2SecurityGroupName'
  -> ElastiCacheSecurityGroupIngress
elastiCacheSecurityGroupIngress cacheSecurityGroupNamearg eC2SecurityGroupNamearg =
  ElastiCacheSecurityGroupIngress
  { _elastiCacheSecurityGroupIngressCacheSecurityGroupName = cacheSecurityGroupNamearg
  , _elastiCacheSecurityGroupIngressEC2SecurityGroupName = eC2SecurityGroupNamearg
  , _elastiCacheSecurityGroupIngressEC2SecurityGroupOwnerId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group-ingress.html#cfn-elasticache-securitygroupingress-cachesecuritygroupname
ecsgiCacheSecurityGroupName :: Lens' ElastiCacheSecurityGroupIngress (Val Text)
ecsgiCacheSecurityGroupName = lens _elastiCacheSecurityGroupIngressCacheSecurityGroupName (\s a -> s { _elastiCacheSecurityGroupIngressCacheSecurityGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group-ingress.html#cfn-elasticache-securitygroupingress-ec2securitygroupname
ecsgiEC2SecurityGroupName :: Lens' ElastiCacheSecurityGroupIngress (Val Text)
ecsgiEC2SecurityGroupName = lens _elastiCacheSecurityGroupIngressEC2SecurityGroupName (\s a -> s { _elastiCacheSecurityGroupIngressEC2SecurityGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group-ingress.html#cfn-elasticache-securitygroupingress-ec2securitygroupownerid
ecsgiEC2SecurityGroupOwnerId :: Lens' ElastiCacheSecurityGroupIngress (Maybe (Val Text))
ecsgiEC2SecurityGroupOwnerId = lens _elastiCacheSecurityGroupIngressEC2SecurityGroupOwnerId (\s a -> s { _elastiCacheSecurityGroupIngressEC2SecurityGroupOwnerId = a })
