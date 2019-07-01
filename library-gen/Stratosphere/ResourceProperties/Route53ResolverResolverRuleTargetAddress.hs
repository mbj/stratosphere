{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverrule-targetaddress.html

module Stratosphere.ResourceProperties.Route53ResolverResolverRuleTargetAddress where

import Stratosphere.ResourceImports


-- | Full data type definition for Route53ResolverResolverRuleTargetAddress.
-- See 'route53ResolverResolverRuleTargetAddress' for a more convenient
-- constructor.
data Route53ResolverResolverRuleTargetAddress =
  Route53ResolverResolverRuleTargetAddress
  { _route53ResolverResolverRuleTargetAddressIp :: Val Text
  , _route53ResolverResolverRuleTargetAddressPort :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON Route53ResolverResolverRuleTargetAddress where
  toJSON Route53ResolverResolverRuleTargetAddress{..} =
    object $
    catMaybes
    [ (Just . ("Ip",) . toJSON) _route53ResolverResolverRuleTargetAddressIp
    , fmap (("Port",) . toJSON) _route53ResolverResolverRuleTargetAddressPort
    ]

-- | Constructor for 'Route53ResolverResolverRuleTargetAddress' containing
-- required fields as arguments.
route53ResolverResolverRuleTargetAddress
  :: Val Text -- ^ 'rrrrtaIp'
  -> Route53ResolverResolverRuleTargetAddress
route53ResolverResolverRuleTargetAddress iparg =
  Route53ResolverResolverRuleTargetAddress
  { _route53ResolverResolverRuleTargetAddressIp = iparg
  , _route53ResolverResolverRuleTargetAddressPort = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverrule-targetaddress.html#cfn-route53resolver-resolverrule-targetaddress-ip
rrrrtaIp :: Lens' Route53ResolverResolverRuleTargetAddress (Val Text)
rrrrtaIp = lens _route53ResolverResolverRuleTargetAddressIp (\s a -> s { _route53ResolverResolverRuleTargetAddressIp = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverrule-targetaddress.html#cfn-route53resolver-resolverrule-targetaddress-port
rrrrtaPort :: Lens' Route53ResolverResolverRuleTargetAddress (Maybe (Val Text))
rrrrtaPort = lens _route53ResolverResolverRuleTargetAddressPort (\s a -> s { _route53ResolverResolverRuleTargetAddressPort = a })
