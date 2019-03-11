{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html

module Stratosphere.ResourceProperties.Route53RecordSetGroupGeoLocation where

import Stratosphere.ResourceImports


-- | Full data type definition for Route53RecordSetGroupGeoLocation. See
-- 'route53RecordSetGroupGeoLocation' for a more convenient constructor.
data Route53RecordSetGroupGeoLocation =
  Route53RecordSetGroupGeoLocation
  { _route53RecordSetGroupGeoLocationContinentCode :: Maybe (Val Text)
  , _route53RecordSetGroupGeoLocationCountryCode :: Maybe (Val Text)
  , _route53RecordSetGroupGeoLocationSubdivisionCode :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON Route53RecordSetGroupGeoLocation where
  toJSON Route53RecordSetGroupGeoLocation{..} =
    object $
    catMaybes
    [ fmap (("ContinentCode",) . toJSON) _route53RecordSetGroupGeoLocationContinentCode
    , fmap (("CountryCode",) . toJSON) _route53RecordSetGroupGeoLocationCountryCode
    , fmap (("SubdivisionCode",) . toJSON) _route53RecordSetGroupGeoLocationSubdivisionCode
    ]

-- | Constructor for 'Route53RecordSetGroupGeoLocation' containing required
-- fields as arguments.
route53RecordSetGroupGeoLocation
  :: Route53RecordSetGroupGeoLocation
route53RecordSetGroupGeoLocation  =
  Route53RecordSetGroupGeoLocation
  { _route53RecordSetGroupGeoLocationContinentCode = Nothing
  , _route53RecordSetGroupGeoLocationCountryCode = Nothing
  , _route53RecordSetGroupGeoLocationSubdivisionCode = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html#cfn-route53-recordsetgroup-geolocation-continentcode
rrsgglContinentCode :: Lens' Route53RecordSetGroupGeoLocation (Maybe (Val Text))
rrsgglContinentCode = lens _route53RecordSetGroupGeoLocationContinentCode (\s a -> s { _route53RecordSetGroupGeoLocationContinentCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html#cfn-route53-recordset-geolocation-countrycode
rrsgglCountryCode :: Lens' Route53RecordSetGroupGeoLocation (Maybe (Val Text))
rrsgglCountryCode = lens _route53RecordSetGroupGeoLocationCountryCode (\s a -> s { _route53RecordSetGroupGeoLocationCountryCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53-recordset-geolocation.html#cfn-route53-recordset-geolocation-subdivisioncode
rrsgglSubdivisionCode :: Lens' Route53RecordSetGroupGeoLocation (Maybe (Val Text))
rrsgglSubdivisionCode = lens _route53RecordSetGroupGeoLocationSubdivisionCode (\s a -> s { _route53RecordSetGroupGeoLocationSubdivisionCode = a })
