{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-security-group.html

module Stratosphere.Resources.ElastiCacheSecurityGroup where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ElastiCacheSecurityGroup. See
-- 'elastiCacheSecurityGroup' for a more convenient constructor.
data ElastiCacheSecurityGroup =
  ElastiCacheSecurityGroup
  { _elastiCacheSecurityGroupDescription :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElastiCacheSecurityGroup where
  toJSON ElastiCacheSecurityGroup{..} =
    object $
    catMaybes
    [ Just ("Description" .= _elastiCacheSecurityGroupDescription)
    ]

instance FromJSON ElastiCacheSecurityGroup where
  parseJSON (Object obj) =
    ElastiCacheSecurityGroup <$>
      obj .: "Description"
  parseJSON _ = mempty

-- | Constructor for 'ElastiCacheSecurityGroup' containing required fields as
-- arguments.
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
