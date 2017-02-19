{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzoneconfig.html

module Stratosphere.ResourceProperties.Route53HostedZoneHostedZoneConfig where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for Route53HostedZoneHostedZoneConfig. See
-- | 'route53HostedZoneHostedZoneConfig' for a more convenient constructor.
data Route53HostedZoneHostedZoneConfig =
  Route53HostedZoneHostedZoneConfig
  { _route53HostedZoneHostedZoneConfigComment :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON Route53HostedZoneHostedZoneConfig where
  toJSON Route53HostedZoneHostedZoneConfig{..} =
    object $
    catMaybes
    [ ("Comment" .=) <$> _route53HostedZoneHostedZoneConfigComment
    ]

instance FromJSON Route53HostedZoneHostedZoneConfig where
  parseJSON (Object obj) =
    Route53HostedZoneHostedZoneConfig <$>
      obj .:? "Comment"
  parseJSON _ = mempty

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
