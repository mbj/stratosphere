{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-restrictions.html

module Stratosphere.ResourceProperties.CloudFrontDistributionRestrictions where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.CloudFrontDistributionGeoRestriction

-- | Full data type definition for CloudFrontDistributionRestrictions. See
-- | 'cloudFrontDistributionRestrictions' for a more convenient constructor.
data CloudFrontDistributionRestrictions =
  CloudFrontDistributionRestrictions
  { _cloudFrontDistributionRestrictionsGeoRestriction :: CloudFrontDistributionGeoRestriction
  } deriving (Show, Eq, Generic)

instance ToJSON CloudFrontDistributionRestrictions where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

instance FromJSON CloudFrontDistributionRestrictions where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 35, omitNothingFields = True }

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
