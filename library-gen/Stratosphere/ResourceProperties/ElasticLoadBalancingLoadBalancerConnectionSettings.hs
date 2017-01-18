{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectionsettings.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerConnectionSettings where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | ElasticLoadBalancingLoadBalancerConnectionSettings. See
-- | 'elasticLoadBalancingLoadBalancerConnectionSettings' for a more
-- | convenient constructor.
data ElasticLoadBalancingLoadBalancerConnectionSettings =
  ElasticLoadBalancingLoadBalancerConnectionSettings
  { _elasticLoadBalancingLoadBalancerConnectionSettingsIdleTimeout :: Val Integer'
  } deriving (Show, Eq, Generic)

instance ToJSON ElasticLoadBalancingLoadBalancerConnectionSettings where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 51, omitNothingFields = True }

instance FromJSON ElasticLoadBalancingLoadBalancerConnectionSettings where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 51, omitNothingFields = True }

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
