{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-restrictions.html

module Stratosphere.ResourceProperties.CloudFrontDistributionRestrictions where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudFrontDistributionGeoRestriction

-- | Full data type definition for CloudFrontDistributionRestrictions. See
-- 'cloudFrontDistributionRestrictions' for a more convenient constructor.
data CloudFrontDistributionRestrictions =
  CloudFrontDistributionRestrictions
  { _cloudFrontDistributionRestrictionsGeoRestriction :: CloudFrontDistributionGeoRestriction
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionRestrictions where
  toJSON CloudFrontDistributionRestrictions{..} =
    object $
    catMaybes
    [ (Just . ("GeoRestriction",) . toJSON) _cloudFrontDistributionRestrictionsGeoRestriction
    ]

-- | Constructor for 'CloudFrontDistributionRestrictions' containing required
-- fields as arguments.
cloudFrontDistributionRestrictions
  :: CloudFrontDistributionGeoRestriction -- ^ 'cfdrGeoRestriction'
  -> CloudFrontDistributionRestrictions
cloudFrontDistributionRestrictions geoRestrictionarg =
  CloudFrontDistributionRestrictions
  { _cloudFrontDistributionRestrictionsGeoRestriction = geoRestrictionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-restrictions.html#cfn-cloudfront-distribution-restrictions-georestriction
cfdrGeoRestriction :: Lens' CloudFrontDistributionRestrictions CloudFrontDistributionGeoRestriction
cfdrGeoRestriction = lens _cloudFrontDistributionRestrictionsGeoRestriction (\s a -> s { _cloudFrontDistributionRestrictionsGeoRestriction = a })
