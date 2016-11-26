{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudfront-logging.html

module Stratosphere.ResourceProperties.CloudFrontDistributionLogging where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CloudFrontDistributionLogging. See
-- | 'cloudFrontDistributionLogging' for a more convenient constructor.
data CloudFrontDistributionLogging =
  CloudFrontDistributionLogging
  { _cloudFrontDistributionLoggingBucket :: Val Text
  , _cloudFrontDistributionLoggingIncludeCookies :: Maybe (Val Bool')
  , _cloudFrontDistributionLoggingPrefix :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON CloudFrontDistributionLogging where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

instance FromJSON CloudFrontDistributionLogging where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

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
