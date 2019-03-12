{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customerrorresponse.html

module Stratosphere.ResourceProperties.CloudFrontDistributionCustomErrorResponse where

import Stratosphere.ResourceImports


-- | Full data type definition for CloudFrontDistributionCustomErrorResponse.
-- See 'cloudFrontDistributionCustomErrorResponse' for a more convenient
-- constructor.
data CloudFrontDistributionCustomErrorResponse =
  CloudFrontDistributionCustomErrorResponse
  { _cloudFrontDistributionCustomErrorResponseErrorCachingMinTTL :: Maybe (Val Double)
  , _cloudFrontDistributionCustomErrorResponseErrorCode :: Val Integer
  , _cloudFrontDistributionCustomErrorResponseResponseCode :: Maybe (Val Integer)
  , _cloudFrontDistributionCustomErrorResponseResponsePagePath :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionCustomErrorResponse where
  toJSON CloudFrontDistributionCustomErrorResponse{..} =
    object $
    catMaybes
    [ fmap (("ErrorCachingMinTTL",) . toJSON) _cloudFrontDistributionCustomErrorResponseErrorCachingMinTTL
    , (Just . ("ErrorCode",) . toJSON) _cloudFrontDistributionCustomErrorResponseErrorCode
    , fmap (("ResponseCode",) . toJSON) _cloudFrontDistributionCustomErrorResponseResponseCode
    , fmap (("ResponsePagePath",) . toJSON) _cloudFrontDistributionCustomErrorResponseResponsePagePath
    ]

-- | Constructor for 'CloudFrontDistributionCustomErrorResponse' containing
-- required fields as arguments.
cloudFrontDistributionCustomErrorResponse
  :: Val Integer -- ^ 'cfdcerErrorCode'
  -> CloudFrontDistributionCustomErrorResponse
cloudFrontDistributionCustomErrorResponse errorCodearg =
  CloudFrontDistributionCustomErrorResponse
  { _cloudFrontDistributionCustomErrorResponseErrorCachingMinTTL = Nothing
  , _cloudFrontDistributionCustomErrorResponseErrorCode = errorCodearg
  , _cloudFrontDistributionCustomErrorResponseResponseCode = Nothing
  , _cloudFrontDistributionCustomErrorResponseResponsePagePath = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customerrorresponse.html#cfn-cloudfront-distribution-customerrorresponse-errorcachingminttl
cfdcerErrorCachingMinTTL :: Lens' CloudFrontDistributionCustomErrorResponse (Maybe (Val Double))
cfdcerErrorCachingMinTTL = lens _cloudFrontDistributionCustomErrorResponseErrorCachingMinTTL (\s a -> s { _cloudFrontDistributionCustomErrorResponseErrorCachingMinTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customerrorresponse.html#cfn-cloudfront-distribution-customerrorresponse-errorcode
cfdcerErrorCode :: Lens' CloudFrontDistributionCustomErrorResponse (Val Integer)
cfdcerErrorCode = lens _cloudFrontDistributionCustomErrorResponseErrorCode (\s a -> s { _cloudFrontDistributionCustomErrorResponseErrorCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customerrorresponse.html#cfn-cloudfront-distribution-customerrorresponse-responsecode
cfdcerResponseCode :: Lens' CloudFrontDistributionCustomErrorResponse (Maybe (Val Integer))
cfdcerResponseCode = lens _cloudFrontDistributionCustomErrorResponseResponseCode (\s a -> s { _cloudFrontDistributionCustomErrorResponseResponseCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-customerrorresponse.html#cfn-cloudfront-distribution-customerrorresponse-responsepagepath
cfdcerResponsePagePath :: Lens' CloudFrontDistributionCustomErrorResponse (Maybe (Val Text))
cfdcerResponsePagePath = lens _cloudFrontDistributionCustomErrorResponseResponsePagePath (\s a -> s { _cloudFrontDistributionCustomErrorResponseResponsePagePath = a })
