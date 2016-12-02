{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthchecktags.html

module Stratosphere.ResourceProperties.Route53HealthCheckHealthCheckTag where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for Route53HealthCheckHealthCheckTag. See
-- | 'route53HealthCheckHealthCheckTag' for a more convenient constructor.
data Route53HealthCheckHealthCheckTag =
  Route53HealthCheckHealthCheckTag
  { _route53HealthCheckHealthCheckTagKey :: Val Text
  , _route53HealthCheckHealthCheckTagValue :: Val Text
  } deriving (Show, Generic)

instance ToJSON Route53HealthCheckHealthCheckTag where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 33, omitNothingFields = True }

instance FromJSON Route53HealthCheckHealthCheckTag where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 33, omitNothingFields = True }

-- | Constructor for 'Route53HealthCheckHealthCheckTag' containing required
-- | fields as arguments.
route53HealthCheckHealthCheckTag
  :: Val Text -- ^ 'rhchctKey'
  -> Val Text -- ^ 'rhchctValue'
  -> Route53HealthCheckHealthCheckTag
route53HealthCheckHealthCheckTag keyarg valuearg =
  Route53HealthCheckHealthCheckTag
  { _route53HealthCheckHealthCheckTagKey = keyarg
  , _route53HealthCheckHealthCheckTagValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthchecktags.html#cfn-route53-healthchecktags-key
rhchctKey :: Lens' Route53HealthCheckHealthCheckTag (Val Text)
rhchctKey = lens _route53HealthCheckHealthCheckTagKey (\s a -> s { _route53HealthCheckHealthCheckTagKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthchecktags.html#cfn-route53-healthchecktags-value
rhchctValue :: Lens' Route53HealthCheckHealthCheckTag (Val Text)
rhchctValue = lens _route53HealthCheckHealthCheckTagValue (\s a -> s { _route53HealthCheckHealthCheckTagValue = a })
