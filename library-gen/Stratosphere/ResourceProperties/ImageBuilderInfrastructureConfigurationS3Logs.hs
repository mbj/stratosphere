{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-s3logs.html

module Stratosphere.ResourceProperties.ImageBuilderInfrastructureConfigurationS3Logs where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ImageBuilderInfrastructureConfigurationS3Logs. See
-- 'imageBuilderInfrastructureConfigurationS3Logs' for a more convenient
-- constructor.
data ImageBuilderInfrastructureConfigurationS3Logs =
  ImageBuilderInfrastructureConfigurationS3Logs
  { _imageBuilderInfrastructureConfigurationS3LogsS3BucketName :: Maybe (Val Text)
  , _imageBuilderInfrastructureConfigurationS3LogsS3KeyPrefix :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ImageBuilderInfrastructureConfigurationS3Logs where
  toJSON ImageBuilderInfrastructureConfigurationS3Logs{..} =
    object $
    catMaybes
    [ fmap (("S3BucketName",) . toJSON) _imageBuilderInfrastructureConfigurationS3LogsS3BucketName
    , fmap (("S3KeyPrefix",) . toJSON) _imageBuilderInfrastructureConfigurationS3LogsS3KeyPrefix
    ]

-- | Constructor for 'ImageBuilderInfrastructureConfigurationS3Logs'
-- containing required fields as arguments.
imageBuilderInfrastructureConfigurationS3Logs
  :: ImageBuilderInfrastructureConfigurationS3Logs
imageBuilderInfrastructureConfigurationS3Logs  =
  ImageBuilderInfrastructureConfigurationS3Logs
  { _imageBuilderInfrastructureConfigurationS3LogsS3BucketName = Nothing
  , _imageBuilderInfrastructureConfigurationS3LogsS3KeyPrefix = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-s3logs.html#cfn-imagebuilder-infrastructureconfiguration-s3logs-s3bucketname
ibicslS3BucketName :: Lens' ImageBuilderInfrastructureConfigurationS3Logs (Maybe (Val Text))
ibicslS3BucketName = lens _imageBuilderInfrastructureConfigurationS3LogsS3BucketName (\s a -> s { _imageBuilderInfrastructureConfigurationS3LogsS3BucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-s3logs.html#cfn-imagebuilder-infrastructureconfiguration-s3logs-s3keyprefix
ibicslS3KeyPrefix :: Lens' ImageBuilderInfrastructureConfigurationS3Logs (Maybe (Val Text))
ibicslS3KeyPrefix = lens _imageBuilderInfrastructureConfigurationS3LogsS3KeyPrefix (\s a -> s { _imageBuilderInfrastructureConfigurationS3LogsS3KeyPrefix = a })
