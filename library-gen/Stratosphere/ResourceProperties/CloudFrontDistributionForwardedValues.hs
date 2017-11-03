{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html

module Stratosphere.ResourceProperties.CloudFrontDistributionForwardedValues where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CloudFrontDistributionCookies

-- | Full data type definition for CloudFrontDistributionForwardedValues. See
-- 'cloudFrontDistributionForwardedValues' for a more convenient
-- constructor.
data CloudFrontDistributionForwardedValues =
  CloudFrontDistributionForwardedValues
  { _cloudFrontDistributionForwardedValuesCookies :: Maybe CloudFrontDistributionCookies
  , _cloudFrontDistributionForwardedValuesHeaders :: Maybe (ValList Text)
  , _cloudFrontDistributionForwardedValuesQueryString :: Val Bool
  , _cloudFrontDistributionForwardedValuesQueryStringCacheKeys :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionForwardedValues where
  toJSON CloudFrontDistributionForwardedValues{..} =
    object $
    catMaybes
    [ fmap (("Cookies",) . toJSON) _cloudFrontDistributionForwardedValuesCookies
    , fmap (("Headers",) . toJSON) _cloudFrontDistributionForwardedValuesHeaders
    , (Just . ("QueryString",) . toJSON . fmap Bool') _cloudFrontDistributionForwardedValuesQueryString
    , fmap (("QueryStringCacheKeys",) . toJSON) _cloudFrontDistributionForwardedValuesQueryStringCacheKeys
    ]

instance FromJSON CloudFrontDistributionForwardedValues where
  parseJSON (Object obj) =
    CloudFrontDistributionForwardedValues <$>
      (obj .:? "Cookies") <*>
      (obj .:? "Headers") <*>
      fmap (fmap unBool') (obj .: "QueryString") <*>
      (obj .:? "QueryStringCacheKeys")
  parseJSON _ = mempty

-- | Constructor for 'CloudFrontDistributionForwardedValues' containing
-- required fields as arguments.
cloudFrontDistributionForwardedValues
  :: Val Bool -- ^ 'cfdfvQueryString'
  -> CloudFrontDistributionForwardedValues
cloudFrontDistributionForwardedValues queryStringarg =
  CloudFrontDistributionForwardedValues
  { _cloudFrontDistributionForwardedValuesCookies = Nothing
  , _cloudFrontDistributionForwardedValuesHeaders = Nothing
  , _cloudFrontDistributionForwardedValuesQueryString = queryStringarg
  , _cloudFrontDistributionForwardedValuesQueryStringCacheKeys = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-cookies
cfdfvCookies :: Lens' CloudFrontDistributionForwardedValues (Maybe CloudFrontDistributionCookies)
cfdfvCookies = lens _cloudFrontDistributionForwardedValuesCookies (\s a -> s { _cloudFrontDistributionForwardedValuesCookies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-headers
cfdfvHeaders :: Lens' CloudFrontDistributionForwardedValues (Maybe (ValList Text))
cfdfvHeaders = lens _cloudFrontDistributionForwardedValuesHeaders (\s a -> s { _cloudFrontDistributionForwardedValuesHeaders = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-querystring
cfdfvQueryString :: Lens' CloudFrontDistributionForwardedValues (Val Bool)
cfdfvQueryString = lens _cloudFrontDistributionForwardedValuesQueryString (\s a -> s { _cloudFrontDistributionForwardedValuesQueryString = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-distribution-forwardedvalues.html#cfn-cloudfront-distribution-forwardedvalues-querystringcachekeys
cfdfvQueryStringCacheKeys :: Lens' CloudFrontDistributionForwardedValues (Maybe (ValList Text))
cfdfvQueryStringCacheKeys = lens _cloudFrontDistributionForwardedValuesQueryStringCacheKeys (\s a -> s { _cloudFrontDistributionForwardedValuesQueryStringCacheKeys = a })
