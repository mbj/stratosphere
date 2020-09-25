{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzonetag.html

module Stratosphere.ResourceProperties.Route53HostedZoneHostedZoneTag where

import Stratosphere.ResourceImports


-- | Full data type definition for Route53HostedZoneHostedZoneTag. See
-- 'route53HostedZoneHostedZoneTag' for a more convenient constructor.
data Route53HostedZoneHostedZoneTag =
  Route53HostedZoneHostedZoneTag
  { _route53HostedZoneHostedZoneTagKey :: Val Text
  , _route53HostedZoneHostedZoneTagValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON Route53HostedZoneHostedZoneTag where
  toJSON Route53HostedZoneHostedZoneTag{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _route53HostedZoneHostedZoneTagKey
    , (Just . ("Value",) . toJSON) _route53HostedZoneHostedZoneTagValue
    ]

-- | Constructor for 'Route53HostedZoneHostedZoneTag' containing required
-- fields as arguments.
route53HostedZoneHostedZoneTag
  :: Val Text -- ^ 'rhzhztKey'
  -> Val Text -- ^ 'rhzhztValue'
  -> Route53HostedZoneHostedZoneTag
route53HostedZoneHostedZoneTag keyarg valuearg =
  Route53HostedZoneHostedZoneTag
  { _route53HostedZoneHostedZoneTagKey = keyarg
  , _route53HostedZoneHostedZoneTagValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzonetag.html#cfn-route53-hostedzone-hostedzonetag-key
rhzhztKey :: Lens' Route53HostedZoneHostedZoneTag (Val Text)
rhzhztKey = lens _route53HostedZoneHostedZoneTagKey (\s a -> s { _route53HostedZoneHostedZoneTagKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzonetag.html#cfn-route53-hostedzone-hostedzonetag-value
rhzhztValue :: Lens' Route53HostedZoneHostedZoneTag (Val Text)
rhzhztValue = lens _route53HostedZoneHostedZoneTagValue (\s a -> s { _route53HostedZoneHostedZoneTagValue = a })
