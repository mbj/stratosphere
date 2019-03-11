{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html

module Stratosphere.ResourceProperties.Route53RecordSetGroupAliasTarget where

import Stratosphere.ResourceImports


-- | Full data type definition for Route53RecordSetGroupAliasTarget. See
-- 'route53RecordSetGroupAliasTarget' for a more convenient constructor.
data Route53RecordSetGroupAliasTarget =
  Route53RecordSetGroupAliasTarget
  { _route53RecordSetGroupAliasTargetDNSName :: Val Text
  , _route53RecordSetGroupAliasTargetEvaluateTargetHealth :: Maybe (Val Bool)
  , _route53RecordSetGroupAliasTargetHostedZoneId :: Val Text
  } deriving (Show, Eq)

instance ToJSON Route53RecordSetGroupAliasTarget where
  toJSON Route53RecordSetGroupAliasTarget{..} =
    object $
    catMaybes
    [ (Just . ("DNSName",) . toJSON) _route53RecordSetGroupAliasTargetDNSName
    , fmap (("EvaluateTargetHealth",) . toJSON . fmap Bool') _route53RecordSetGroupAliasTargetEvaluateTargetHealth
    , (Just . ("HostedZoneId",) . toJSON) _route53RecordSetGroupAliasTargetHostedZoneId
    ]

-- | Constructor for 'Route53RecordSetGroupAliasTarget' containing required
-- fields as arguments.
route53RecordSetGroupAliasTarget
  :: Val Text -- ^ 'rrsgatDNSName'
  -> Val Text -- ^ 'rrsgatHostedZoneId'
  -> Route53RecordSetGroupAliasTarget
route53RecordSetGroupAliasTarget dNSNamearg hostedZoneIdarg =
  Route53RecordSetGroupAliasTarget
  { _route53RecordSetGroupAliasTargetDNSName = dNSNamearg
  , _route53RecordSetGroupAliasTargetEvaluateTargetHealth = Nothing
  , _route53RecordSetGroupAliasTargetHostedZoneId = hostedZoneIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html#cfn-route53-aliastarget-dnshostname
rrsgatDNSName :: Lens' Route53RecordSetGroupAliasTarget (Val Text)
rrsgatDNSName = lens _route53RecordSetGroupAliasTargetDNSName (\s a -> s { _route53RecordSetGroupAliasTargetDNSName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html#cfn-route53-aliastarget-evaluatetargethealth
rrsgatEvaluateTargetHealth :: Lens' Route53RecordSetGroupAliasTarget (Maybe (Val Bool))
rrsgatEvaluateTargetHealth = lens _route53RecordSetGroupAliasTargetEvaluateTargetHealth (\s a -> s { _route53RecordSetGroupAliasTargetEvaluateTargetHealth = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html#cfn-route53-aliastarget-hostedzoneid
rrsgatHostedZoneId :: Lens' Route53RecordSetGroupAliasTarget (Val Text)
rrsgatHostedZoneId = lens _route53RecordSetGroupAliasTargetHostedZoneId (\s a -> s { _route53RecordSetGroupAliasTargetHostedZoneId = a })
