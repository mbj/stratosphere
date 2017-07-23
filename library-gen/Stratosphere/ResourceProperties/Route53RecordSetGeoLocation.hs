{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html

module Stratosphere.ResourceProperties.Route53RecordSetGeoLocation where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for Route53RecordSetGeoLocation. See
-- 'route53RecordSetGeoLocation' for a more convenient constructor.
data Route53RecordSetGeoLocation =
  Route53RecordSetGeoLocation
  { _route53RecordSetGeoLocationContinentCode :: Maybe (Val Text)
  , _route53RecordSetGeoLocationCountryCode :: Maybe (Val Text)
  , _route53RecordSetGeoLocationSubdivisionCode :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON Route53RecordSetGeoLocation where
  toJSON Route53RecordSetGeoLocation{..} =
    object $
    catMaybes
    [ fmap (("ContinentCode",) . toJSON) _route53RecordSetGeoLocationContinentCode
    , fmap (("CountryCode",) . toJSON) _route53RecordSetGeoLocationCountryCode
    , fmap (("SubdivisionCode",) . toJSON) _route53RecordSetGeoLocationSubdivisionCode
    ]

instance FromJSON Route53RecordSetGeoLocation where
  parseJSON (Object obj) =
    Route53RecordSetGeoLocation <$>
      (obj .:? "ContinentCode") <*>
      (obj .:? "CountryCode") <*>
      (obj .:? "SubdivisionCode")
  parseJSON _ = mempty

-- | Constructor for 'Route53RecordSetGeoLocation' containing required fields
-- as arguments.
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
