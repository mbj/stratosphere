{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-logging.html

module Stratosphere.ResourceProperties.ImageBuilderInfrastructureConfigurationLogging where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ImageBuilderInfrastructureConfigurationS3Logs

-- | Full data type definition for
-- ImageBuilderInfrastructureConfigurationLogging. See
-- 'imageBuilderInfrastructureConfigurationLogging' for a more convenient
-- constructor.
data ImageBuilderInfrastructureConfigurationLogging =
  ImageBuilderInfrastructureConfigurationLogging
  { _imageBuilderInfrastructureConfigurationLoggingS3Logs :: Maybe ImageBuilderInfrastructureConfigurationS3Logs
  } deriving (Show, Eq)

instance ToJSON ImageBuilderInfrastructureConfigurationLogging where
  toJSON ImageBuilderInfrastructureConfigurationLogging{..} =
    object $
    catMaybes
    [ fmap (("S3Logs",) . toJSON) _imageBuilderInfrastructureConfigurationLoggingS3Logs
    ]

-- | Constructor for 'ImageBuilderInfrastructureConfigurationLogging'
-- containing required fields as arguments.
imageBuilderInfrastructureConfigurationLogging
  :: ImageBuilderInfrastructureConfigurationLogging
imageBuilderInfrastructureConfigurationLogging  =
  ImageBuilderInfrastructureConfigurationLogging
  { _imageBuilderInfrastructureConfigurationLoggingS3Logs = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-logging.html#cfn-imagebuilder-infrastructureconfiguration-logging-s3logs
ibiclS3Logs :: Lens' ImageBuilderInfrastructureConfigurationLogging (Maybe ImageBuilderInfrastructureConfigurationS3Logs)
ibiclS3Logs = lens _imageBuilderInfrastructureConfigurationLoggingS3Logs (\s a -> s { _imageBuilderInfrastructureConfigurationLoggingS3Logs = a })
