{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The GeoLocation property is part of the AWS::Route53::RecordSet resource
-- that describes how Amazon Route 53 responds to DNS queries based on the
-- geographic location of the query.

module Stratosphere.ResourceProperties.RecordSetGeoLocation where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


data RecordSetGeoLocation =
  RecordSetGeoLocation
  { _recordSetGeoLocationContinentCode :: Maybe (Val Text)
  , _recordSetGeoLocationCountryCode :: Maybe (Val Text)
  , _recordSetGeoLocationSubdivisionCode :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON RecordSetGeoLocation where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

instance FromJSON RecordSetGeoLocation where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

recordSetGeoLocation
  :: RecordSetGeoLocation
recordSetGeoLocation  =
  RecordSetGeoLocation
  { _recordSetGeoLocationContinentCode = Nothing
  , _recordSetGeoLocationCountryCode = Nothing
  , _recordSetGeoLocationSubdivisionCode = Nothing
  }

-- | All DNS queries from the continent that you specified are routed to this
-- resource record set. If you specify this property, omit the CountryCode and
-- SubdivisionCode properties. For valid values, see the ContinentCode element
-- in the Amazon Route 53 API Reference. Type: String
rsglContinentCode :: Lens' RecordSetGeoLocation (Maybe (Val Text))
rsglContinentCode = lens _recordSetGeoLocationContinentCode (\s a -> s { _recordSetGeoLocationContinentCode = a })

-- | All DNS queries from the country that you specified are routed to this
-- resource record set. If you specify this property, omit the ContinentCode
-- property. For valid values, see the CountryCode element in the Amazon Route
-- 53 API Reference. Type: String
rsglCountryCode :: Lens' RecordSetGeoLocation (Maybe (Val Text))
rsglCountryCode = lens _recordSetGeoLocationCountryCode (\s a -> s { _recordSetGeoLocationCountryCode = a })

-- | If you specified US for the country code, you can specify a state in the
-- United States. All DNS queries from the state that you specified are routed
-- to this resource record set. If you specify this property, you must specify
-- US for the CountryCode and omit the ContinentCode property. For valid
-- values, see the SubdivisionCode element in the Amazon Route 53 API
-- Reference. Type: String
rsglSubdivisionCode :: Lens' RecordSetGeoLocation (Maybe (Val Text))
rsglSubdivisionCode = lens _recordSetGeoLocationSubdivisionCode (\s a -> s { _recordSetGeoLocationSubdivisionCode = a })