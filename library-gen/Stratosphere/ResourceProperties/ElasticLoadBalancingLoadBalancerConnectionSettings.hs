{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectionsettings.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerConnectionSettings where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- | ElasticLoadBalancingLoadBalancerConnectionSettings. See
-- | 'elasticLoadBalancingLoadBalancerConnectionSettings' for a more
-- | convenient constructor.
data ElasticLoadBalancingLoadBalancerConnectionSettings =
  ElasticLoadBalancingLoadBalancerConnectionSettings
  { _elasticLoadBalancingLoadBalancerConnectionSettingsIdleTimeout :: Val Integer'
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingLoadBalancerConnectionSettings where
  toJSON ElasticLoadBalancingLoadBalancerConnectionSettings{..} =
    object
    [ "IdleTimeout" .= _elasticLoadBalancingLoadBalancerConnectionSettingsIdleTimeout
    ]

instance FromJSON ElasticLoadBalancingLoadBalancerConnectionSettings where
  parseJSON (Object obj) =
    ElasticLoadBalancingLoadBalancerConnectionSettings <$>
      obj .: "IdleTimeout"
  parseJSON _ = mempty

-- | Constructor for 'ElasticLoadBalancingLoadBalancerConnectionSettings'
-- | containing required fields as arguments.
elasticLoadBalancingLoadBalancerConnectionSettings
  :: Val Integer' -- ^ 'elblbcsIdleTimeout'
  -> ElasticLoadBalancingLoadBalancerConnectionSettings
elasticLoadBalancingLoadBalancerConnectionSettings idleTimeoutarg =
  ElasticLoadBalancingLoadBalancerConnectionSettings
  { _elasticLoadBalancingLoadBalancerConnectionSettingsIdleTimeout = idleTimeoutarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectionsettings.html#cfn-elb-connectionsettings-idletimeout
elblbcsIdleTimeout :: Lens' ElasticLoadBalancingLoadBalancerConnectionSettings (Val Integer')
elblbcsIdleTimeout = lens _elasticLoadBalancingLoadBalancerConnectionSettingsIdleTimeout (\s a -> s { _elasticLoadBalancingLoadBalancerConnectionSettingsIdleTimeout = a })
