{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | AliasTarget is a property of the AWS::Route53::RecordSet resource. For
-- more information about alias resource record sets, see Creating Alias
-- Resource Record Sets in the Amazon Route 53 Developer Guide.

module Stratosphere.ResourceProperties.AliasTarget where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for AliasTarget. See 'aliasTarget' for a more
-- convenient constructor.
data AliasTarget =
  AliasTarget
  { _aliasTargetDNSName :: Val Text
  , _aliasTargetEvaluateTargetHealth :: Maybe (Val Bool')
  , _aliasTargetHostedZoneId :: Val Text
  } deriving (Show, Generic)

instance ToJSON AliasTarget where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 12, omitNothingFields = True }

instance FromJSON AliasTarget where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 12, omitNothingFields = True }

-- | Constructor for 'AliasTarget' containing required fields as arguments.
aliasTarget
  :: Val Text -- ^ 'atDNSName'
  -> Val Text -- ^ 'atHostedZoneId'
  -> AliasTarget
aliasTarget dNSNamearg hostedZoneIdarg =
  AliasTarget
  { _aliasTargetDNSName = dNSNamearg
  , _aliasTargetEvaluateTargetHealth = Nothing
  , _aliasTargetHostedZoneId = hostedZoneIdarg
  }

-- | The DNS name of the load balancer, the domain name of the CloudFront
-- distribution, the website endpoint of the Amazon S3 bucket, or another
-- record set in the same hosted zone that is the target of the alias. Type:
-- String
atDNSName :: Lens' AliasTarget (Val Text)
atDNSName = lens _aliasTargetDNSName (\s a -> s { _aliasTargetDNSName = a })

-- | Whether Amazon Route 53 checks the health of the resource record sets in
-- the alias target when responding to DNS queries. For more information about
-- using this property, see EvaluateTargetHealth in the Amazon Route 53 API
-- Reference. Type: Boolean
atEvaluateTargetHealth :: Lens' AliasTarget (Maybe (Val Bool'))
atEvaluateTargetHealth = lens _aliasTargetEvaluateTargetHealth (\s a -> s { _aliasTargetEvaluateTargetHealth = a })

-- | The hosted zone ID. For load balancers, use the canonical hosted zone ID
-- of the load balancer. For Amazon S3, use the hosted zone ID for your
-- bucket's website endpoint. For CloudFront, use Z2FDTNDATAQYW2. For
-- examples, see Example: Creating Alias Resource Record Sets in the Amazon
-- Route 53 API Reference. Type: String
atHostedZoneId :: Lens' AliasTarget (Val Text)
atHostedZoneId = lens _aliasTargetHostedZoneId (\s a -> s { _aliasTargetHostedZoneId = a })