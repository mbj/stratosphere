{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html

module Stratosphere.ResourceProperties.Route53RecordSetAliasTarget where

import Stratosphere.ResourceImports


-- | Full data type definition for Route53RecordSetAliasTarget. See
-- 'route53RecordSetAliasTarget' for a more convenient constructor.
data Route53RecordSetAliasTarget =
  Route53RecordSetAliasTarget
  { _route53RecordSetAliasTargetDNSName :: Val Text
  , _route53RecordSetAliasTargetEvaluateTargetHealth :: Maybe (Val Bool)
  , _route53RecordSetAliasTargetHostedZoneId :: Val Text
  } deriving (Show, Eq)

instance ToJSON Route53RecordSetAliasTarget where
  toJSON Route53RecordSetAliasTarget{..} =
    object $
    catMaybes
    [ (Just . ("DNSName",) . toJSON) _route53RecordSetAliasTargetDNSName
    , fmap (("EvaluateTargetHealth",) . toJSON) _route53RecordSetAliasTargetEvaluateTargetHealth
    , (Just . ("HostedZoneId",) . toJSON) _route53RecordSetAliasTargetHostedZoneId
    ]

-- | Constructor for 'Route53RecordSetAliasTarget' containing required fields
-- as arguments.
route53RecordSetAliasTarget
  :: Val Text -- ^ 'rrsatDNSName'
  -> Val Text -- ^ 'rrsatHostedZoneId'
  -> Route53RecordSetAliasTarget
route53RecordSetAliasTarget dNSNamearg hostedZoneIdarg =
  Route53RecordSetAliasTarget
  { _route53RecordSetAliasTargetDNSName = dNSNamearg
  , _route53RecordSetAliasTargetEvaluateTargetHealth = Nothing
  , _route53RecordSetAliasTargetHostedZoneId = hostedZoneIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html#cfn-route53-aliastarget-dnshostname
rrsatDNSName :: Lens' Route53RecordSetAliasTarget (Val Text)
rrsatDNSName = lens _route53RecordSetAliasTargetDNSName (\s a -> s { _route53RecordSetAliasTargetDNSName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html#cfn-route53-aliastarget-evaluatetargethealth
rrsatEvaluateTargetHealth :: Lens' Route53RecordSetAliasTarget (Maybe (Val Bool))
rrsatEvaluateTargetHealth = lens _route53RecordSetAliasTargetEvaluateTargetHealth (\s a -> s { _route53RecordSetAliasTargetEvaluateTargetHealth = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html#cfn-route53-aliastarget-hostedzoneid
rrsatHostedZoneId :: Lens' Route53RecordSetAliasTarget (Val Text)
rrsatHostedZoneId = lens _route53RecordSetAliasTargetHostedZoneId (\s a -> s { _route53RecordSetAliasTargetHostedZoneId = a })
