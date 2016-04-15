{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | ConnectionSettings is a property of the
-- AWS::ElasticLoadBalancing::LoadBalancer resource that describes how long
-- the front-end and back-end connections of your load balancer can remain
-- idle. For more information, see Configure Idle Connection Timeout in the
-- Elastic Load Balancing Developer Guide.

module Stratosphere.ResourceProperties.ConnectionSettings where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ConnectionSettings. See
-- 'connectionSettings' for a more convenient constructor.
data ConnectionSettings =
  ConnectionSettings
  { _connectionSettingsIdleTimeout :: Val Integer'
  } deriving (Show, Generic)

instance ToJSON ConnectionSettings where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

instance FromJSON ConnectionSettings where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

-- | Constructor for 'ConnectionSettings' containing required fields as
-- arguments.
connectionSettings
  :: Val Integer' -- ^ 'csIdleTimeout'
  -> ConnectionSettings
connectionSettings idleTimeoutarg =
  ConnectionSettings
  { _connectionSettingsIdleTimeout = idleTimeoutarg
  }

-- | The time (in seconds) that a connection to the load balancer can remain
-- idle, which means no data is sent over the connection. After the specified
-- time, the load balancer closes the connection.
csIdleTimeout :: Lens' ConnectionSettings (Val Integer')
csIdleTimeout = lens _connectionSettingsIdleTimeout (\s a -> s { _connectionSettingsIdleTimeout = a })