{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-healthcheck.html

module Stratosphere.Resources.Route53HealthCheck where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Route53HealthCheckHealthCheckTag

-- | Full data type definition for Route53HealthCheck. See
-- 'route53HealthCheck' for a more convenient constructor.
data Route53HealthCheck =
  Route53HealthCheck
  { _route53HealthCheckHealthCheckConfig :: Object
  , _route53HealthCheckHealthCheckTags :: Maybe [Route53HealthCheckHealthCheckTag]
  } deriving (Show, Eq)

instance ToResourceProperties Route53HealthCheck where
  toResourceProperties Route53HealthCheck{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Route53::HealthCheck"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("HealthCheckConfig",) . toJSON) _route53HealthCheckHealthCheckConfig
        , fmap (("HealthCheckTags",) . toJSON) _route53HealthCheckHealthCheckTags
        ]
    }

-- | Constructor for 'Route53HealthCheck' containing required fields as
-- arguments.
route53HealthCheck
  :: Object -- ^ 'rhcHealthCheckConfig'
  -> Route53HealthCheck
route53HealthCheck healthCheckConfigarg =
  Route53HealthCheck
  { _route53HealthCheckHealthCheckConfig = healthCheckConfigarg
  , _route53HealthCheckHealthCheckTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-healthcheck.html#cfn-route53-healthcheck-healthcheckconfig
rhcHealthCheckConfig :: Lens' Route53HealthCheck Object
rhcHealthCheckConfig = lens _route53HealthCheckHealthCheckConfig (\s a -> s { _route53HealthCheckHealthCheckConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-healthcheck.html#cfn-route53-healthcheck-healthchecktags
rhcHealthCheckTags :: Lens' Route53HealthCheck (Maybe [Route53HealthCheckHealthCheckTag])
rhcHealthCheckTags = lens _route53HealthCheckHealthCheckTags (\s a -> s { _route53HealthCheckHealthCheckTags = a })
