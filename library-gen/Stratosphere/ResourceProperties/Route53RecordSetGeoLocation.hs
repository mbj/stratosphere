{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html

module Stratosphere.ResourceProperties.Route53RecordSetGeoLocation where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for Route53RecordSetGeoLocation. See
-- | 'route53RecordSetGeoLocation' for a more convenient constructor.
data Route53RecordSetGeoLocation =
  Route53RecordSetGeoLocation
  { _route53RecordSetGeoLocationContinentCode :: Maybe (Val Text)
  , _route53RecordSetGeoLocationCountryCode :: Maybe (Val Text)
  , _route53RecordSetGeoLocationSubdivisionCode :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON Route53RecordSetGeoLocation where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON Route53RecordSetGeoLocation where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'Route53RecordSetGeoLocation' containing required fields
-- | as arguments.
route53RecordSetGeoLocation
  :: Route53RecordSetGeoLocation
route53RecordSetGeoLocation  =
  Route53RecordSetGeoLocation
  { _route53RecordSetGeoLocationContinentCode = Nothing
  , _route53RecordSetGeoLocationCountryCode = Nothing
  , _route53RecordSetGeoLocationSubdivisionCode = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html#cfn-route53-recordset-geolocation-continentcode
rrsglContinentCode :: Lens' Route53RecordSetGeoLocation (Maybe (Val Text))
rrsglContinentCode = lens _route53RecordSetGeoLocationContinentCode (\s a -> s { _route53RecordSetGeoLocationContinentCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html#cfn-route53-recordset-geolocation-countrycode
rrsglCountryCode :: Lens' Route53RecordSetGeoLocation (Maybe (Val Text))
rrsglCountryCode = lens _route53RecordSetGeoLocationCountryCode (\s a -> s { _route53RecordSetGeoLocationCountryCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html#cfn-route53-recordset-geolocation-subdivisioncode
rrsglSubdivisionCode :: Lens' Route53RecordSetGeoLocation (Maybe (Val Text))
rrsglSubdivisionCode = lens _route53RecordSetGeoLocationSubdivisionCode (\s a -> s { _route53RecordSetGeoLocationSubdivisionCode = a })
