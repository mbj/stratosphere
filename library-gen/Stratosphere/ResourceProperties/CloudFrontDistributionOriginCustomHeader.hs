
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origincustomheader.html

module Stratosphere.ResourceProperties.CloudFrontDistributionOriginCustomHeader where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudFrontDistributionOriginCustomHeader.
-- See 'cloudFrontDistributionOriginCustomHeader' for a more convenient
-- constructor.
data CloudFrontDistributionOriginCustomHeader =
  CloudFrontDistributionOriginCustomHeader
  { _cloudFrontDistributionOriginCustomHeaderHeaderName :: Val Text
  , _cloudFrontDistributionOriginCustomHeaderHeaderValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionOriginCustomHeader where
  toJSON CloudFrontDistributionOriginCustomHeader{..} =
    object $
    catMaybes
    [ (Just . ("HeaderName",) . toJSON) _cloudFrontDistributionOriginCustomHeaderHeaderName
    , (Just . ("HeaderValue",) . toJSON) _cloudFrontDistributionOriginCustomHeaderHeaderValue
    ]

-- | Constructor for 'CloudFrontDistributionOriginCustomHeader' containing
-- required fields as arguments.
cloudFrontDistributionOriginCustomHeader
  :: Val Text -- ^ 'cfdochHeaderName'
  -> Val Text -- ^ 'cfdochHeaderValue'
  -> CloudFrontDistributionOriginCustomHeader
cloudFrontDistributionOriginCustomHeader headerNamearg headerValuearg =
  CloudFrontDistributionOriginCustomHeader
  { _cloudFrontDistributionOriginCustomHeaderHeaderName = headerNamearg
  , _cloudFrontDistributionOriginCustomHeaderHeaderValue = headerValuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origincustomheader.html#cfn-cloudfront-distribution-origincustomheader-headername
cfdochHeaderName :: Lens' CloudFrontDistributionOriginCustomHeader (Val Text)
cfdochHeaderName = lens _cloudFrontDistributionOriginCustomHeaderHeaderName (\s a -> s { _cloudFrontDistributionOriginCustomHeaderHeaderName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-origincustomheader.html#cfn-cloudfront-distribution-origincustomheader-headervalue
cfdochHeaderValue :: Lens' CloudFrontDistributionOriginCustomHeader (Val Text)
cfdochHeaderValue = lens _cloudFrontDistributionOriginCustomHeaderHeaderValue (\s a -> s { _cloudFrontDistributionOriginCustomHeaderHeaderValue = a })
