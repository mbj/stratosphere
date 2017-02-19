{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-healthcheck.html

module Stratosphere.Resources.Route53HealthCheck where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.Route53HealthCheckHealthCheckConfig
import Stratosphere.ResourceProperties.Route53HealthCheckHealthCheckTag

-- | Full data type definition for Route53HealthCheck. See
-- | 'route53HealthCheck' for a more convenient constructor.
data Route53HealthCheck =
  Route53HealthCheck
  { _route53HealthCheckHealthCheckConfig :: Route53HealthCheckHealthCheckConfig
  , _route53HealthCheckHealthCheckTags :: Maybe [Route53HealthCheckHealthCheckTag]
  } deriving (Show, Eq)

instance ToJSON Route53HealthCheck where
  toJSON Route53HealthCheck{..} =
    object $
    catMaybes
    [ Just ("HealthCheckConfig" .= _route53HealthCheckHealthCheckConfig)
    , ("HealthCheckTags" .=) <$> _route53HealthCheckHealthCheckTags
    ]

instance FromJSON Route53HealthCheck where
  parseJSON (Object obj) =
    Route53HealthCheck <$>
      obj .: "HealthCheckConfig" <*>
      obj .:? "HealthCheckTags"
  parseJSON _ = mempty

-- | Constructor for 'Route53HealthCheck' containing required fields as
-- | arguments.
route53HealthCheck
  :: Route53HealthCheckHealthCheckConfig -- ^ 'rhcHealthCheckConfig'
  -> Route53HealthCheck
route53HealthCheck healthCheckConfigarg =
  Route53HealthCheck
  { _route53HealthCheckHealthCheckConfig = healthCheckConfigarg
  , _route53HealthCheckHealthCheckTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-healthcheck.html#cfn-route53-healthcheck-healthcheckconfig
rhcHealthCheckConfig :: Lens' Route53HealthCheck Route53HealthCheckHealthCheckConfig
rhcHealthCheckConfig = lens _route53HealthCheckHealthCheckConfig (\s a -> s { _route53HealthCheckHealthCheckConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-healthcheck.html#cfn-route53-healthcheck-healthchecktags
rhcHealthCheckTags :: Lens' Route53HealthCheck (Maybe [Route53HealthCheckHealthCheckTag])
rhcHealthCheckTags = lens _route53HealthCheckHealthCheckTags (\s a -> s { _route53HealthCheckHealthCheckTags = a })
