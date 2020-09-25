{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthchecktag.html

module Stratosphere.ResourceProperties.Route53HealthCheckHealthCheckTag where

import Stratosphere.ResourceImports


-- | Full data type definition for Route53HealthCheckHealthCheckTag. See
-- 'route53HealthCheckHealthCheckTag' for a more convenient constructor.
data Route53HealthCheckHealthCheckTag =
  Route53HealthCheckHealthCheckTag
  { _route53HealthCheckHealthCheckTagKey :: Val Text
  , _route53HealthCheckHealthCheckTagValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON Route53HealthCheckHealthCheckTag where
  toJSON Route53HealthCheckHealthCheckTag{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _route53HealthCheckHealthCheckTagKey
    , (Just . ("Value",) . toJSON) _route53HealthCheckHealthCheckTagValue
    ]

-- | Constructor for 'Route53HealthCheckHealthCheckTag' containing required
-- fields as arguments.
route53HealthCheckHealthCheckTag
  :: Val Text -- ^ 'rhchctKey'
  -> Val Text -- ^ 'rhchctValue'
  -> Route53HealthCheckHealthCheckTag
route53HealthCheckHealthCheckTag keyarg valuearg =
  Route53HealthCheckHealthCheckTag
  { _route53HealthCheckHealthCheckTagKey = keyarg
  , _route53HealthCheckHealthCheckTagValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthchecktag.html#cfn-route53-healthcheck-healthchecktag-key
rhchctKey :: Lens' Route53HealthCheckHealthCheckTag (Val Text)
rhchctKey = lens _route53HealthCheckHealthCheckTagKey (\s a -> s { _route53HealthCheckHealthCheckTagKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-healthchecktag.html#cfn-route53-healthcheck-healthchecktag-value
rhchctValue :: Lens' Route53HealthCheckHealthCheckTag (Val Text)
rhchctValue = lens _route53HealthCheckHealthCheckTagValue (\s a -> s { _route53HealthCheckHealthCheckTagValue = a })
