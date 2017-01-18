{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html

module Stratosphere.Resources.Route53HostedZone where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.Route53HostedZoneHostedZoneConfig
import Stratosphere.ResourceProperties.Route53HostedZoneHostedZoneTag
import Stratosphere.ResourceProperties.Route53HostedZoneVPC

-- | Full data type definition for Route53HostedZone. See 'route53HostedZone'
-- | for a more convenient constructor.
data Route53HostedZone =
  Route53HostedZone
  { _route53HostedZoneHostedZoneConfig :: Maybe Route53HostedZoneHostedZoneConfig
  , _route53HostedZoneHostedZoneTags :: Maybe [Route53HostedZoneHostedZoneTag]
  , _route53HostedZoneName :: Val Text
  , _route53HostedZoneVPCs :: Maybe [Route53HostedZoneVPC]
  } deriving (Show, Eq, Generic)

instance ToJSON Route53HostedZone where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 18, omitNothingFields = True }

instance FromJSON Route53HostedZone where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 18, omitNothingFields = True }

-- | Constructor for 'Route53HostedZone' containing required fields as
-- | arguments.
route53HostedZone
  :: Val Text -- ^ 'rhzName'
  -> Route53HostedZone
route53HostedZone namearg =
  Route53HostedZone
  { _route53HostedZoneHostedZoneConfig = Nothing
  , _route53HostedZoneHostedZoneTags = Nothing
  , _route53HostedZoneName = namearg
  , _route53HostedZoneVPCs = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html#cfn-route53-hostedzone-hostedzoneconfig
rhzHostedZoneConfig :: Lens' Route53HostedZone (Maybe Route53HostedZoneHostedZoneConfig)
rhzHostedZoneConfig = lens _route53HostedZoneHostedZoneConfig (\s a -> s { _route53HostedZoneHostedZoneConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html#cfn-route53-hostedzone-hostedzonetags
rhzHostedZoneTags :: Lens' Route53HostedZone (Maybe [Route53HostedZoneHostedZoneTag])
rhzHostedZoneTags = lens _route53HostedZoneHostedZoneTags (\s a -> s { _route53HostedZoneHostedZoneTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html#cfn-route53-hostedzone-name
rhzName :: Lens' Route53HostedZone (Val Text)
rhzName = lens _route53HostedZoneName (\s a -> s { _route53HostedZoneName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-route53-hostedzone.html#cfn-route53-hostedzone-vpcs
rhzVPCs :: Lens' Route53HostedZone (Maybe [Route53HostedZoneVPC])
rhzVPCs = lens _route53HostedZoneVPCs (\s a -> s { _route53HostedZoneVPCs = a })
