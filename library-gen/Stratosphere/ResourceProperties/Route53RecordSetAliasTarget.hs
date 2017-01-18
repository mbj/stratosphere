{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html

module Stratosphere.ResourceProperties.Route53RecordSetAliasTarget where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for Route53RecordSetAliasTarget. See
-- | 'route53RecordSetAliasTarget' for a more convenient constructor.
data Route53RecordSetAliasTarget =
  Route53RecordSetAliasTarget
  { _route53RecordSetAliasTargetDNSName :: Val Text
  , _route53RecordSetAliasTargetEvaluateTargetHealth :: Maybe (Val Bool')
  , _route53RecordSetAliasTargetHostedZoneId :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON Route53RecordSetAliasTarget where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON Route53RecordSetAliasTarget where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'Route53RecordSetAliasTarget' containing required fields
-- | as arguments.
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
rrsatEvaluateTargetHealth :: Lens' Route53RecordSetAliasTarget (Maybe (Val Bool'))
rrsatEvaluateTargetHealth = lens _route53RecordSetAliasTargetEvaluateTargetHealth (\s a -> s { _route53RecordSetAliasTargetEvaluateTargetHealth = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-aliastarget.html#cfn-route53-aliastarget-hostedzoneid
rrsatHostedZoneId :: Lens' Route53RecordSetAliasTarget (Val Text)
rrsatHostedZoneId = lens _route53RecordSetAliasTargetHostedZoneId (\s a -> s { _route53RecordSetAliasTargetHostedZoneId = a })
