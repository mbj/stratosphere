{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzonetags.html

module Stratosphere.ResourceProperties.Route53HostedZoneHostedZoneTag where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for Route53HostedZoneHostedZoneTag. See
-- | 'route53HostedZoneHostedZoneTag' for a more convenient constructor.
data Route53HostedZoneHostedZoneTag =
  Route53HostedZoneHostedZoneTag
  { _route53HostedZoneHostedZoneTagKey :: Val Text
  , _route53HostedZoneHostedZoneTagValue :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON Route53HostedZoneHostedZoneTag where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 31, omitNothingFields = True }

instance FromJSON Route53HostedZoneHostedZoneTag where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 31, omitNothingFields = True }

-- | Constructor for 'Route53HostedZoneHostedZoneTag' containing required
-- | fields as arguments.
route53HostedZoneHostedZoneTag
  :: Val Text -- ^ 'rhzhztKey'
  -> Val Text -- ^ 'rhzhztValue'
  -> Route53HostedZoneHostedZoneTag
route53HostedZoneHostedZoneTag keyarg valuearg =
  Route53HostedZoneHostedZoneTag
  { _route53HostedZoneHostedZoneTagKey = keyarg
  , _route53HostedZoneHostedZoneTagValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzonetags.html#cfn-route53-hostedzonetags-key
rhzhztKey :: Lens' Route53HostedZoneHostedZoneTag (Val Text)
rhzhztKey = lens _route53HostedZoneHostedZoneTagKey (\s a -> s { _route53HostedZoneHostedZoneTagKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-hostedzone-hostedzonetags.html#cfn-route53-hostedzonetags-value
rhzhztValue :: Lens' Route53HostedZoneHostedZoneTag (Val Text)
rhzhztValue = lens _route53HostedZoneHostedZoneTagValue (\s a -> s { _route53HostedZoneHostedZoneTagValue = a })
