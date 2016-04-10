{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The ElasticLoadBalancing HealthCheck is an embedded property of the
-- AWS::ElasticLoadBalancing::LoadBalancer type.

module Stratosphere.ResourceProperties.HealthCheck where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for HealthCheck. See 'healthCheck' for a more
-- convenient constructor.
data HealthCheck =
  HealthCheck
  { _healthCheckHealthyThreshold :: Val Text
  , _healthCheckInterval :: Val Text
  , _healthCheckTarget :: Val Text
  , _healthCheckTimeout :: Val Text
  , _healthCheckUnhealthyThreshold :: Val Text
  } deriving (Show, Generic)

instance ToJSON HealthCheck where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 12, omitNothingFields = True }

instance FromJSON HealthCheck where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 12, omitNothingFields = True }

-- | Constructor for 'HealthCheck' containing required fields as arguments.
healthCheck
  :: Val Text -- ^ HealthyThreshold
  -> Val Text -- ^ Interval
  -> Val Text -- ^ Target
  -> Val Text -- ^ Timeout
  -> Val Text -- ^ UnhealthyThreshold
  -> HealthCheck
healthCheck healthyThresholdarg intervalarg targetarg timeoutarg unhealthyThresholdarg =
  HealthCheck
  { _healthCheckHealthyThreshold = healthyThresholdarg
  , _healthCheckInterval = intervalarg
  , _healthCheckTarget = targetarg
  , _healthCheckTimeout = timeoutarg
  , _healthCheckUnhealthyThreshold = unhealthyThresholdarg
  }

-- | Specifies the number of consecutive health probe successes required
-- before moving the instance to the Healthy state.
hcHealthyThreshold :: Lens' HealthCheck (Val Text)
hcHealthyThreshold = lens _healthCheckHealthyThreshold (\s a -> s { _healthCheckHealthyThreshold = a })

-- | Specifies the approximate interval, in seconds, between health checks of
-- an individual instance.
hcInterval :: Lens' HealthCheck (Val Text)
hcInterval = lens _healthCheckInterval (\s a -> s { _healthCheckInterval = a })

-- | Specifies the instance's protocol and port to check. The protocol can be
-- TCP, HTTP, HTTPS, or SSL. The range of valid ports is 1 through 65535.
hcTarget :: Lens' HealthCheck (Val Text)
hcTarget = lens _healthCheckTarget (\s a -> s { _healthCheckTarget = a })

-- | Specifies the amount of time, in seconds, during which no response means
-- a failed health probe. This value must be less than the value for Interval.
hcTimeout :: Lens' HealthCheck (Val Text)
hcTimeout = lens _healthCheckTimeout (\s a -> s { _healthCheckTimeout = a })

-- | Specifies the number of consecutive health probe failures required before
-- moving the instance to the Unhealthy state.
hcUnhealthyThreshold :: Lens' HealthCheck (Val Text)
hcUnhealthyThreshold = lens _healthCheckUnhealthyThreshold (\s a -> s { _healthCheckUnhealthyThreshold = a })