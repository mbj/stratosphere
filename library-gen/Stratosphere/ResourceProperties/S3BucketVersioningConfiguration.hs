{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-versioningconfig.html

module Stratosphere.ResourceProperties.S3BucketVersioningConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for S3BucketVersioningConfiguration. See
-- 's3BucketVersioningConfiguration' for a more convenient constructor.
data S3BucketVersioningConfiguration =
  S3BucketVersioningConfiguration
  { _s3BucketVersioningConfigurationStatus :: Val Text
  } deriving (Show, Eq)

instance ToJSON S3BucketVersioningConfiguration where
  toJSON S3BucketVersioningConfiguration{..} =
    object $
    catMaybes
    [ Just ("Status" .= _s3BucketVersioningConfigurationStatus)
    ]

instance FromJSON S3BucketVersioningConfiguration where
  parseJSON (Object obj) =
    S3BucketVersioningConfiguration <$>
      obj .: "Status"
  parseJSON _ = mempty

-- | Constructor for 'S3BucketVersioningConfiguration' containing required
-- fields as arguments.
s3BucketVersioningConfiguration
  :: Val Text -- ^ 'sbvcStatus'
  -> S3BucketVersioningConfiguration
s3BucketVersioningConfiguration statusarg =
  S3BucketVersioningConfiguration
  { _s3BucketVersioningConfigurationStatus = statusarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-versioningconfig.html#cfn-s3-bucket-versioningconfig-status
sbvcStatus :: Lens' S3BucketVersioningConfiguration (Val Text)
sbvcStatus = lens _s3BucketVersioningConfigurationStatus (\s a -> s { _s3BucketVersioningConfigurationStatus = a })
