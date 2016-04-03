{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The ConnectionDrainingPolicy property describes how deregistered or
-- unhealthy instances handle in-flight requests for the
-- AWS::ElasticLoadBalancing::LoadBalancer resource. Connection draining
-- ensures that the load balancer completes serving all in-flight requests
-- made to a registered instance when the instance is deregistered or becomes
-- unhealthy. Without connection draining, the load balancer closes
-- connections to deregistered or unhealthy instances, and any in-flight
-- requests are not completed. For more information about connection draining
-- and default values, see Enable or Disable Connection Draining for Your Load
-- Balancer in the Elastic Load Balancing Developer Guide.

module Stratosphere.ResourceProperties.ConnectionDrainingPolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


data ConnectionDrainingPolicy =
  ConnectionDrainingPolicy
  { _connectionDrainingPolicyEnabled :: Val Bool
  , _connectionDrainingPolicyTimeout :: Maybe (Val Integer')
  } deriving (Show, Generic)

instance ToJSON ConnectionDrainingPolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

instance FromJSON ConnectionDrainingPolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

connectionDrainingPolicy
  :: Val Bool -- ^ Enabled
  -> ConnectionDrainingPolicy
connectionDrainingPolicy enabledarg =
  ConnectionDrainingPolicy
  { _connectionDrainingPolicyEnabled = enabledarg
  , _connectionDrainingPolicyTimeout = Nothing
  }

-- | Whether or not connection draining is enabled for the load balancer.
cdpEnabled :: Lens' ConnectionDrainingPolicy (Val Bool)
cdpEnabled = lens _connectionDrainingPolicyEnabled (\s a -> s { _connectionDrainingPolicyEnabled = a })

-- | The time in seconds after the load balancer closes all connections to a
-- deregistered or unhealthy instance.
cdpTimeout :: Lens' ConnectionDrainingPolicy (Maybe (Val Integer'))
cdpTimeout = lens _connectionDrainingPolicyTimeout (\s a -> s { _connectionDrainingPolicyTimeout = a })