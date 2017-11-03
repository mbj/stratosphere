{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-georestriction.html

module Stratosphere.ResourceProperties.CloudFrontDistributionGeoRestriction where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CloudFrontDistributionGeoRestriction. See
-- 'cloudFrontDistributionGeoRestriction' for a more convenient constructor.
data CloudFrontDistributionGeoRestriction =
  CloudFrontDistributionGeoRestriction
  { _cloudFrontDistributionGeoRestrictionLocations :: Maybe (ValList Text)
  , _cloudFrontDistributionGeoRestrictionRestrictionType :: Val Text
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionGeoRestriction where
  toJSON CloudFrontDistributionGeoRestriction{..} =
    object $
    catMaybes
    [ fmap (("Locations",) . toJSON) _cloudFrontDistributionGeoRestrictionLocations
    , (Just . ("RestrictionType",) . toJSON) _cloudFrontDistributionGeoRestrictionRestrictionType
    ]

instance FromJSON CloudFrontDistributionGeoRestriction where
  parseJSON (Object obj) =
    CloudFrontDistributionGeoRestriction <$>
      (obj .:? "Locations") <*>
      (obj .: "RestrictionType")
  parseJSON _ = mempty

-- | Constructor for 'CloudFrontDistributionGeoRestriction' containing
-- required fields as arguments.
cloudFrontDistributionGeoRestriction
  :: Val Text -- ^ 'cfdgrRestrictionType'
  -> CloudFrontDistributionGeoRestriction
cloudFrontDistributionGeoRestriction restrictionTypearg =
  CloudFrontDistributionGeoRestriction
  { _cloudFrontDistributionGeoRestrictionLocations = Nothing
  , _cloudFrontDistributionGeoRestrictionRestrictionType = restrictionTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-georestriction.html#cfn-cloudfront-distribution-georestriction-locations
cfdgrLocations :: Lens' CloudFrontDistributionGeoRestriction (Maybe (ValList Text))
cfdgrLocations = lens _cloudFrontDistributionGeoRestrictionLocations (\s a -> s { _cloudFrontDistributionGeoRestrictionLocations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-georestriction.html#cfn-cloudfront-distribution-georestriction-restrictiontype
cfdgrRestrictionType :: Lens' CloudFrontDistributionGeoRestriction (Val Text)
cfdgrRestrictionType = lens _cloudFrontDistributionGeoRestrictionRestrictionType (\s a -> s { _cloudFrontDistributionGeoRestrictionRestrictionType = a })
