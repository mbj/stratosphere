{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-loggingconfig.html

module Stratosphere.ResourceProperties.S3BucketLoggingConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for S3BucketLoggingConfiguration. See
-- | 's3BucketLoggingConfiguration' for a more convenient constructor.
data S3BucketLoggingConfiguration =
  S3BucketLoggingConfiguration
  { _s3BucketLoggingConfigurationDestinationBucketName :: Maybe (Val Text)
  , _s3BucketLoggingConfigurationLogFilePrefix :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON S3BucketLoggingConfiguration where
  toJSON S3BucketLoggingConfiguration{..} =
    object $
    catMaybes
    [ ("DestinationBucketName" .=) <$> _s3BucketLoggingConfigurationDestinationBucketName
    , ("LogFilePrefix" .=) <$> _s3BucketLoggingConfigurationLogFilePrefix
    ]

instance FromJSON S3BucketLoggingConfiguration where
  parseJSON (Object obj) =
    S3BucketLoggingConfiguration <$>
      obj .:? "DestinationBucketName" <*>
      obj .:? "LogFilePrefix"
  parseJSON _ = mempty

-- | Constructor for 'S3BucketLoggingConfiguration' containing required fields
-- | as arguments.
s3BucketLoggingConfiguration
  :: S3BucketLoggingConfiguration
s3BucketLoggingConfiguration  =
  S3BucketLoggingConfiguration
  { _s3BucketLoggingConfigurationDestinationBucketName = Nothing
  , _s3BucketLoggingConfigurationLogFilePrefix = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-loggingconfig.html#cfn-s3-bucket-loggingconfig-destinationbucketname
sblcDestinationBucketName :: Lens' S3BucketLoggingConfiguration (Maybe (Val Text))
sblcDestinationBucketName = lens _s3BucketLoggingConfigurationDestinationBucketName (\s a -> s { _s3BucketLoggingConfigurationDestinationBucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-loggingconfig.html#cfn-s3-bucket-loggingconfig-logfileprefix
sblcLogFilePrefix :: Lens' S3BucketLoggingConfiguration (Maybe (Val Text))
sblcLogFilePrefix = lens _s3BucketLoggingConfigurationLogFilePrefix (\s a -> s { _s3BucketLoggingConfigurationLogFilePrefix = a })
