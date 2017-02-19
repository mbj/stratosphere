{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues.html

module Stratosphere.ResourceProperties.CloudFrontDistributionForwardedValues where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CloudFrontDistributionCookies

-- | Full data type definition for CloudFrontDistributionForwardedValues. See
-- | 'cloudFrontDistributionForwardedValues' for a more convenient
-- | constructor.
data CloudFrontDistributionForwardedValues =
  CloudFrontDistributionForwardedValues
  { _cloudFrontDistributionForwardedValuesCookies :: Maybe CloudFrontDistributionCookies
  , _cloudFrontDistributionForwardedValuesHeaders :: Maybe [Val Text]
  , _cloudFrontDistributionForwardedValuesQueryString :: Val Bool'
  , _cloudFrontDistributionForwardedValuesQueryStringCacheKeys :: Maybe [Val Text]
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionForwardedValues where
  toJSON CloudFrontDistributionForwardedValues{..} =
    object $
    catMaybes
    [ ("Cookies" .=) <$> _cloudFrontDistributionForwardedValuesCookies
    , ("Headers" .=) <$> _cloudFrontDistributionForwardedValuesHeaders
    , Just ("QueryString" .= _cloudFrontDistributionForwardedValuesQueryString)
    , ("QueryStringCacheKeys" .=) <$> _cloudFrontDistributionForwardedValuesQueryStringCacheKeys
    ]

instance FromJSON CloudFrontDistributionForwardedValues where
  parseJSON (Object obj) =
    CloudFrontDistributionForwardedValues <$>
      obj .:? "Cookies" <*>
      obj .:? "Headers" <*>
      obj .: "QueryString" <*>
      obj .:? "QueryStringCacheKeys"
  parseJSON _ = mempty

-- | Constructor for 'CloudFrontDistributionForwardedValues' containing
-- | required fields as arguments.
cloudFrontDistributionForwardedValues
  :: Val Bool' -- ^ 'cfdfvQueryString'
  -> CloudFrontDistributionForwardedValues
cloudFrontDistributionForwardedValues queryStringarg =
  CloudFrontDistributionForwardedValues
  { _cloudFrontDistributionForwardedValuesCookies = Nothing
  , _cloudFrontDistributionForwardedValuesHeaders = Nothing
  , _cloudFrontDistributionForwardedValuesQueryString = queryStringarg
  , _cloudFrontDistributionForwardedValuesQueryStringCacheKeys = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues.html#cfn-cloudfront-forwardedvalues-cookies
cfdfvCookies :: Lens' CloudFrontDistributionForwardedValues (Maybe CloudFrontDistributionCookies)
cfdfvCookies = lens _cloudFrontDistributionForwardedValuesCookies (\s a -> s { _cloudFrontDistributionForwardedValuesCookies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues.html#cfn-cloudfront-forwardedvalues-headers
cfdfvHeaders :: Lens' CloudFrontDistributionForwardedValues (Maybe [Val Text])
cfdfvHeaders = lens _cloudFrontDistributionForwardedValuesHeaders (\s a -> s { _cloudFrontDistributionForwardedValuesHeaders = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues.html#cfn-cloudfront-forwardedvalues-querystring
cfdfvQueryString :: Lens' CloudFrontDistributionForwardedValues (Val Bool')
cfdfvQueryString = lens _cloudFrontDistributionForwardedValuesQueryString (\s a -> s { _cloudFrontDistributionForwardedValuesQueryString = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-forwardedvalues.html#cfn-cloudfront-forwardedvalues-querystringcachekeys
cfdfvQueryStringCacheKeys :: Lens' CloudFrontDistributionForwardedValues (Maybe [Val Text])
cfdfvQueryStringCacheKeys = lens _cloudFrontDistributionForwardedValuesQueryStringCacheKeys (\s a -> s { _cloudFrontDistributionForwardedValuesQueryStringCacheKeys = a })
