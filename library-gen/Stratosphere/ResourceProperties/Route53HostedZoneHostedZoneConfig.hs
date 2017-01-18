{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzoneconfig.html

module Stratosphere.ResourceProperties.Route53HostedZoneHostedZoneConfig where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for Route53HostedZoneHostedZoneConfig. See
-- | 'route53HostedZoneHostedZoneConfig' for a more convenient constructor.
data Route53HostedZoneHostedZoneConfig =
  Route53HostedZoneHostedZoneConfig
  { _route53HostedZoneHostedZoneConfigComment :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON Route53HostedZoneHostedZoneConfig where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

instance FromJSON Route53HostedZoneHostedZoneConfig where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 34, omitNothingFields = True }

-- | Constructor for 'Route53HostedZoneHostedZoneConfig' containing required
-- | fields as arguments.
route53HostedZoneHostedZoneConfig
  :: Route53HostedZoneHostedZoneConfig
route53HostedZoneHostedZoneConfig  =
  Route53HostedZoneHostedZoneConfig
  { _route53HostedZoneHostedZoneConfigComment = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzoneconfig.html#cfn-route53-hostedzone-hostedzoneconfig-comment
rhzhzcComment :: Lens' Route53HostedZoneHostedZoneConfig (Maybe (Val Text))
rhzhzcComment = lens _route53HostedZoneHostedZoneConfigComment (\s a -> s { _route53HostedZoneHostedZoneConfigComment = a })
