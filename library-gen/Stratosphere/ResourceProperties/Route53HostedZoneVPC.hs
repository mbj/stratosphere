{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone-hostedzonevpcs.html

module Stratosphere.ResourceProperties.Route53HostedZoneVPC where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for Route53HostedZoneVPC. See
-- 'route53HostedZoneVPC' for a more convenient constructor.
data Route53HostedZoneVPC =
  Route53HostedZoneVPC
  { _route53HostedZoneVPCVPCId :: Val Text
  , _route53HostedZoneVPCVPCRegion :: Val Text
  } deriving (Show, Eq)

instance ToJSON Route53HostedZoneVPC where
  toJSON Route53HostedZoneVPC{..} =
    object $
    catMaybes
    [ Just ("VPCId" .= _route53HostedZoneVPCVPCId)
    , Just ("VPCRegion" .= _route53HostedZoneVPCVPCRegion)
    ]

instance FromJSON Route53HostedZoneVPC where
  parseJSON (Object obj) =
    Route53HostedZoneVPC <$>
      obj .: "VPCId" <*>
      obj .: "VPCRegion"
  parseJSON _ = mempty

-- | Constructor for 'Route53HostedZoneVPC' containing required fields as
-- arguments.
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
