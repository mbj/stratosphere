{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-logging.html

module Stratosphere.ResourceProperties.CloudFrontDistributionLogging where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CloudFrontDistributionLogging. See
-- | 'cloudFrontDistributionLogging' for a more convenient constructor.
data CloudFrontDistributionLogging =
  CloudFrontDistributionLogging
  { _cloudFrontDistributionLoggingBucket :: Val Text
  , _cloudFrontDistributionLoggingIncludeCookies :: Maybe (Val Bool')
  , _cloudFrontDistributionLoggingPrefix :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CloudFrontDistributionLogging where
  toJSON CloudFrontDistributionLogging{..} =
    object $
    catMaybes
    [ Just ("Bucket" .= _cloudFrontDistributionLoggingBucket)
    , ("IncludeCookies" .=) <$> _cloudFrontDistributionLoggingIncludeCookies
    , ("Prefix" .=) <$> _cloudFrontDistributionLoggingPrefix
    ]

instance FromJSON CloudFrontDistributionLogging where
  parseJSON (Object obj) =
    CloudFrontDistributionLogging <$>
      obj .: "Bucket" <*>
      obj .:? "IncludeCookies" <*>
      obj .:? "Prefix"
  parseJSON _ = mempty

-- | Constructor for 'CloudFrontDistributionLogging' containing required
-- | fields as arguments.
cloudFrontDistributionLogging
  :: Val Text -- ^ 'cfdlBucket'
  -> CloudFrontDistributionLogging
cloudFrontDistributionLogging bucketarg =
  CloudFrontDistributionLogging
  { _cloudFrontDistributionLoggingBucket = bucketarg
  , _cloudFrontDistributionLoggingIncludeCookies = Nothing
  , _cloudFrontDistributionLoggingPrefix = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-logging.html#cfn-cloudfront-logging-bucket
cfdlBucket :: Lens' CloudFrontDistributionLogging (Val Text)
cfdlBucket = lens _cloudFrontDistributionLoggingBucket (\s a -> s { _cloudFrontDistributionLoggingBucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-logging.html#cfn-cloudfront-logging-includecookies
cfdlIncludeCookies :: Lens' CloudFrontDistributionLogging (Maybe (Val Bool'))
cfdlIncludeCookies = lens _cloudFrontDistributionLoggingIncludeCookies (\s a -> s { _cloudFrontDistributionLoggingIncludeCookies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-logging.html#cfn-cloudfront-logging-prefix
cfdlPrefix :: Lens' CloudFrontDistributionLogging (Maybe (Val Text))
cfdlPrefix = lens _cloudFrontDistributionLoggingPrefix (\s a -> s { _cloudFrontDistributionLoggingPrefix = a })
