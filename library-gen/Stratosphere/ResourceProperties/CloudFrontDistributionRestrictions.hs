{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-restrictions.html

module Stratosphere.ResourceProperties.CloudFrontDistributionRestrictions where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CloudFrontDistributionGeoRestriction

-- | Full data type definition for CloudFrontDistributionRestrictions. See
-- | 'cloudFrontDistributionRestrictions' for a more convenient constructor.
data CloudFrontDistributionRestrictions =
  CloudFrontDistributionRestrictions
  { _cloudFrontDistributionRestrictionsGeoRestriction :: CloudFrontDistributionGeoRestriction
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionRestrictions where
  toJSON CloudFrontDistributionRestrictions{..} =
    object
    [ "GeoRestriction" .= _cloudFrontDistributionRestrictionsGeoRestriction
    ]

instance FromJSON CloudFrontDistributionRestrictions where
  parseJSON (Object obj) =
    CloudFrontDistributionRestrictions <$>
      obj .: "GeoRestriction"
  parseJSON _ = mempty

-- | Constructor for 'CloudFrontDistributionRestrictions' containing required
-- | fields as arguments.
cloudFrontDistributionRestrictions
  :: CloudFrontDistributionGeoRestriction -- ^ 'cfdrGeoRestriction'
  -> CloudFrontDistributionRestrictions
cloudFrontDistributionRestrictions geoRestrictionarg =
  CloudFrontDistributionRestrictions
  { _cloudFrontDistributionRestrictionsGeoRestriction = geoRestrictionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-restrictions.html#cfn-cloudfront-distributionconfig-restrictions-georestriction
cfdrGeoRestriction :: Lens' CloudFrontDistributionRestrictions CloudFrontDistributionGeoRestriction
cfdrGeoRestriction = lens _cloudFrontDistributionRestrictionsGeoRestriction (\s a -> s { _cloudFrontDistributionRestrictionsGeoRestriction = a })
