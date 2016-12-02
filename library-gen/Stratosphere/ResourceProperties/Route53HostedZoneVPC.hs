{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone-hostedzonevpcs.html

module Stratosphere.ResourceProperties.Route53HostedZoneVPC where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for Route53HostedZoneVPC. See
-- | 'route53HostedZoneVPC' for a more convenient constructor.
data Route53HostedZoneVPC =
  Route53HostedZoneVPC
  { _route53HostedZoneVPCVPCId :: Val Text
  , _route53HostedZoneVPCVPCRegion :: Val Text
  } deriving (Show, Generic)

instance ToJSON Route53HostedZoneVPC where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

instance FromJSON Route53HostedZoneVPC where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

-- | Constructor for 'Route53HostedZoneVPC' containing required fields as
-- | arguments.
route53HostedZoneVPC
  :: Val Text -- ^ 'rhzvpcVPCId'
  -> Val Text -- ^ 'rhzvpcVPCRegion'
  -> Route53HostedZoneVPC
route53HostedZoneVPC vPCIdarg vPCRegionarg =
  Route53HostedZoneVPC
  { _route53HostedZoneVPCVPCId = vPCIdarg
  , _route53HostedZoneVPCVPCRegion = vPCRegionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone-hostedzonevpcs.html#cfn-route53-hostedzone-hostedzonevpcs-vpcid
rhzvpcVPCId :: Lens' Route53HostedZoneVPC (Val Text)
rhzvpcVPCId = lens _route53HostedZoneVPCVPCId (\s a -> s { _route53HostedZoneVPCVPCId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone-hostedzonevpcs.html#cfn-route53-hostedzone-hostedzonevpcs-vpcregion
rhzvpcVPCRegion :: Lens' Route53HostedZoneVPC (Val Text)
rhzvpcVPCRegion = lens _route53HostedZoneVPCVPCRegion (\s a -> s { _route53HostedZoneVPCVPCRegion = a })
