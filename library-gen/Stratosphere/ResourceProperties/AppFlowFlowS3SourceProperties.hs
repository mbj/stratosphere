{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3sourceproperties.html

module Stratosphere.ResourceProperties.AppFlowFlowS3SourceProperties where

import Stratosphere.ResourceImports


-- | Full data type definition for AppFlowFlowS3SourceProperties. See
-- 'appFlowFlowS3SourceProperties' for a more convenient constructor.
data AppFlowFlowS3SourceProperties =
  AppFlowFlowS3SourceProperties
  { _appFlowFlowS3SourcePropertiesBucketName :: Val Text
  , _appFlowFlowS3SourcePropertiesBucketPrefix :: Val Text
  } deriving (Show, Eq)

instance ToJSON AppFlowFlowS3SourceProperties where
  toJSON AppFlowFlowS3SourceProperties{..} =
    object $
    catMaybes
    [ (Just . ("BucketName",) . toJSON) _appFlowFlowS3SourcePropertiesBucketName
    , (Just . ("BucketPrefix",) . toJSON) _appFlowFlowS3SourcePropertiesBucketPrefix
    ]

-- | Constructor for 'AppFlowFlowS3SourceProperties' containing required
-- fields as arguments.
appFlowFlowS3SourceProperties
  :: Val Text -- ^ 'affsspBucketName'
  -> Val Text -- ^ 'affsspBucketPrefix'
  -> AppFlowFlowS3SourceProperties
appFlowFlowS3SourceProperties bucketNamearg bucketPrefixarg =
  AppFlowFlowS3SourceProperties
  { _appFlowFlowS3SourcePropertiesBucketName = bucketNamearg
  , _appFlowFlowS3SourcePropertiesBucketPrefix = bucketPrefixarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3sourceproperties.html#cfn-appflow-flow-s3sourceproperties-bucketname
affsspBucketName :: Lens' AppFlowFlowS3SourceProperties (Val Text)
affsspBucketName = lens _appFlowFlowS3SourcePropertiesBucketName (\s a -> s { _appFlowFlowS3SourcePropertiesBucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-s3sourceproperties.html#cfn-appflow-flow-s3sourceproperties-bucketprefix
affsspBucketPrefix :: Lens' AppFlowFlowS3SourceProperties (Val Text)
affsspBucketPrefix = lens _appFlowFlowS3SourcePropertiesBucketPrefix (\s a -> s { _appFlowFlowS3SourcePropertiesBucketPrefix = a })
