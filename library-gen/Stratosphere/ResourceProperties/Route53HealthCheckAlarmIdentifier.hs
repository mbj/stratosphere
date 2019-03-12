{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-alarmidentifier.html

module Stratosphere.ResourceProperties.Route53HealthCheckAlarmIdentifier where

import Stratosphere.ResourceImports


-- | Full data type definition for Route53HealthCheckAlarmIdentifier. See
-- 'route53HealthCheckAlarmIdentifier' for a more convenient constructor.
data Route53HealthCheckAlarmIdentifier =
  Route53HealthCheckAlarmIdentifier
  { _route53HealthCheckAlarmIdentifierName :: Val Text
  , _route53HealthCheckAlarmIdentifierRegion :: Val Text
  } deriving (Show, Eq)

instance ToJSON Route53HealthCheckAlarmIdentifier where
  toJSON Route53HealthCheckAlarmIdentifier{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _route53HealthCheckAlarmIdentifierName
    , (Just . ("Region",) . toJSON) _route53HealthCheckAlarmIdentifierRegion
    ]

-- | Constructor for 'Route53HealthCheckAlarmIdentifier' containing required
-- fields as arguments.
route53HealthCheckAlarmIdentifier
  :: Val Text -- ^ 'rhcaiName'
  -> Val Text -- ^ 'rhcaiRegion'
  -> Route53HealthCheckAlarmIdentifier
route53HealthCheckAlarmIdentifier namearg regionarg =
  Route53HealthCheckAlarmIdentifier
  { _route53HealthCheckAlarmIdentifierName = namearg
  , _route53HealthCheckAlarmIdentifierRegion = regionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-alarmidentifier.html#cfn-route53-healthcheck-alarmidentifier-name
rhcaiName :: Lens' Route53HealthCheckAlarmIdentifier (Val Text)
rhcaiName = lens _route53HealthCheckAlarmIdentifierName (\s a -> s { _route53HealthCheckAlarmIdentifierName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-healthcheck-alarmidentifier.html#cfn-route53-healthcheck-alarmidentifier-region
rhcaiRegion :: Lens' Route53HealthCheckAlarmIdentifier (Val Text)
rhcaiRegion = lens _route53HealthCheckAlarmIdentifierRegion (\s a -> s { _route53HealthCheckAlarmIdentifierRegion = a })
