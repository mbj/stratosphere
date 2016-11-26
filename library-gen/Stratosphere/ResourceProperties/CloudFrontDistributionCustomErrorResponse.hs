{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-customerrorresponse.html

module Stratosphere.ResourceProperties.CloudFrontDistributionCustomErrorResponse where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CloudFrontDistributionCustomErrorResponse.
-- | See 'cloudFrontDistributionCustomErrorResponse' for a more convenient
-- | constructor.
data CloudFrontDistributionCustomErrorResponse =
  CloudFrontDistributionCustomErrorResponse
  { _cloudFrontDistributionCustomErrorResponseErrorCachingMinTTL :: Maybe (Val Integer')
  , _cloudFrontDistributionCustomErrorResponseErrorCode :: Val Integer'
  , _cloudFrontDistributionCustomErrorResponseResponseCode :: Maybe (Val Integer')
  , _cloudFrontDistributionCustomErrorResponseResponsePagePath :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON CloudFrontDistributionCustomErrorResponse where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 42, omitNothingFields = True }

instance FromJSON CloudFrontDistributionCustomErrorResponse where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 42, omitNothingFields = True }

-- | Constructor for 'CloudFrontDistributionCustomErrorResponse' containing
-- | required fields as arguments.
cloudFrontDistributionCustomErrorResponse
  :: Val Integer' -- ^ 'cfdcerErrorCode'
  -> CloudFrontDistributionCustomErrorResponse
cloudFrontDistributionCustomErrorResponse errorCodearg =
  CloudFrontDistributionCustomErrorResponse
  { _cloudFrontDistributionCustomErrorResponseErrorCachingMinTTL = Nothing
  , _cloudFrontDistributionCustomErrorResponseErrorCode = errorCodearg
  , _cloudFrontDistributionCustomErrorResponseResponseCode = Nothing
  , _cloudFrontDistributionCustomErrorResponseResponsePagePath = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-customerrorresponse.html#cfn-cloudfront-distributionconfig-customerrorresponse-errorcachingminttl
cfdcerErrorCachingMinTTL :: Lens' CloudFrontDistributionCustomErrorResponse (Maybe (Val Integer'))
cfdcerErrorCachingMinTTL = lens _cloudFrontDistributionCustomErrorResponseErrorCachingMinTTL (\s a -> s { _cloudFrontDistributionCustomErrorResponseErrorCachingMinTTL = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-customerrorresponse.html#cfn-cloudfront-distributionconfig-customerrorresponse-errorcode
cfdcerErrorCode :: Lens' CloudFrontDistributionCustomErrorResponse (Val Integer')
cfdcerErrorCode = lens _cloudFrontDistributionCustomErrorResponseErrorCode (\s a -> s { _cloudFrontDistributionCustomErrorResponseErrorCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-customerrorresponse.html#cfn-cloudfront-distributionconfig-customerrorresponse-responsecode
cfdcerResponseCode :: Lens' CloudFrontDistributionCustomErrorResponse (Maybe (Val Integer'))
cfdcerResponseCode = lens _cloudFrontDistributionCustomErrorResponseResponseCode (\s a -> s { _cloudFrontDistributionCustomErrorResponseResponseCode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distributionconfig-customerrorresponse.html#cfn-cloudfront-distributionconfig-customerrorresponse-responsepagepath
cfdcerResponsePagePath :: Lens' CloudFrontDistributionCustomErrorResponse (Maybe (Val Text))
cfdcerResponsePagePath = lens _cloudFrontDistributionCustomErrorResponseResponsePagePath (\s a -> s { _cloudFrontDistributionCustomErrorResponseResponsePagePath = a })
