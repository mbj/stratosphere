{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroupfailovercriteria.html

module Stratosphere.ResourceProperties.CloudFrontDistributionOriginGroupFailoverCriteria where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudFrontDistributionStatusCodes

-- | Full data type definition for
-- CloudFrontDistributionOriginGroupFailoverCriteria. See
-- 'cloudFrontDistributionOriginGroupFailoverCriteria' for a more convenient
-- constructor.
data CloudFrontDistributionOriginGroupFailoverCriteria =
  CloudFrontDistributionOriginGroupFailoverCriteria
  { _cloudFrontDistributionOriginGroupFailoverCriteriaStatusCodes :: CloudFrontDistributionStatusCodes
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionOriginGroupFailoverCriteria where
  toJSON CloudFrontDistributionOriginGroupFailoverCriteria{..} =
    object $
    catMaybes
    [ (Just . ("StatusCodes",) . toJSON) _cloudFrontDistributionOriginGroupFailoverCriteriaStatusCodes
    ]

-- | Constructor for 'CloudFrontDistributionOriginGroupFailoverCriteria'
-- containing required fields as arguments.
cloudFrontDistributionOriginGroupFailoverCriteria
  :: CloudFrontDistributionStatusCodes -- ^ 'cfdogfcStatusCodes'
  -> CloudFrontDistributionOriginGroupFailoverCriteria
cloudFrontDistributionOriginGroupFailoverCriteria statusCodesarg =
  CloudFrontDistributionOriginGroupFailoverCriteria
  { _cloudFrontDistributionOriginGroupFailoverCriteriaStatusCodes = statusCodesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origingroupfailovercriteria.html#cfn-cloudfront-distribution-origingroupfailovercriteria-statuscodes
cfdogfcStatusCodes :: Lens' CloudFrontDistributionOriginGroupFailoverCriteria CloudFrontDistributionStatusCodes
cfdogfcStatusCodes = lens _cloudFrontDistributionOriginGroupFailoverCriteriaStatusCodes (\s a -> s { _cloudFrontDistributionOriginGroupFailoverCriteriaStatusCodes = a })
