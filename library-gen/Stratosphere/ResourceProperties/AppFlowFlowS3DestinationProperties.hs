{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3destinationproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowS3DestinationProperties where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AppFlowFlowS3OutputFormatConfig

-- | Full data type definition for AppFlowFlowS3DestinationProperties. See
-- 'appFlowFlowS3DestinationProperties' for a more convenient constructor.
data AppFlowFlowS3DestinationProperties =
  AppFlowFlowS3DestinationProperties
  { _appFlowFlowS3DestinationPropertiesBucketName :: Val Text
  , _appFlowFlowS3DestinationPropertiesBucketPrefix :: Maybe (Val Text)
  , _appFlowFlowS3DestinationPropertiesS3OutputFormatConfig :: Maybe AppFlowFlowS3OutputFormatConfig
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowS3DestinationProperties where
  toJSON AppFlowFlowS3DestinationProperties{..} =
    object $
    catMaybes
    [ (Just . ("BucketName",) . toJSON) _appFlowFlowS3DestinationPropertiesBucketName
    , fmap (("BucketPrefix",) . toJSON) _appFlowFlowS3DestinationPropertiesBucketPrefix
    , fmap (("S3OutputFormatConfig",) . toJSON) _appFlowFlowS3DestinationPropertiesS3OutputFormatConfig
    ]

-- | Constructor for 'AppFlowFlowS3DestinationProperties' containing required
-- fields as arguments.
appFlowFlowS3DestinationProperties
  :: Val Text -- ^ 'affsdpBucketName'
  -> AppFlowFlowS3DestinationProperties
appFlowFlowS3DestinationProperties bucketNamearg =
  AppFlowFlowS3DestinationProperties
  { _appFlowFlowS3DestinationPropertiesBucketName = bucketNamearg
  , _appFlowFlowS3DestinationPropertiesBucketPrefix = Nothing
  , _appFlowFlowS3DestinationPropertiesS3OutputFormatConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3destinationproperties.html#cfn-appflow-flow-s3destinationproperties-bucketname
affsdpBucketName :: Lens' AppFlowFlowS3DestinationProperties (Val Text)
affsdpBucketName = lens _appFlowFlowS3DestinationPropertiesBucketName (\s a -> s { _appFlowFlowS3DestinationPropertiesBucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3destinationproperties.html#cfn-appflow-flow-s3destinationproperties-bucketprefix
affsdpBucketPrefix :: Lens' AppFlowFlowS3DestinationProperties (Maybe (Val Text))
affsdpBucketPrefix = lens _appFlowFlowS3DestinationPropertiesBucketPrefix (\s a -> s { _appFlowFlowS3DestinationPropertiesBucketPrefix = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3destinationproperties.html#cfn-appflow-flow-s3destinationproperties-s3outputformatconfig
affsdpS3OutputFormatConfig :: Lens' AppFlowFlowS3DestinationProperties (Maybe AppFlowFlowS3OutputFormatConfig)
affsdpS3OutputFormatConfig = lens _appFlowFlowS3DestinationPropertiesS3OutputFormatConfig (\s a -> s { _appFlowFlowS3DestinationPropertiesS3OutputFormatConfig = a })
