{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-logsconfig.html

module Stratosphere.ResourceProperties.CodeBuildProjectLogsConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeBuildProjectCloudWatchLogsConfig
import Stratosphere.ResourceProperties.CodeBuildProjectS3LogsConfig

-- | Full data type definition for CodeBuildProjectLogsConfig. See
-- 'codeBuildProjectLogsConfig' for a more convenient constructor.
data CodeBuildProjectLogsConfig =
  CodeBuildProjectLogsConfig
  { _codeBuildProjectLogsConfigCloudWatchLogs :: Maybe CodeBuildProjectCloudWatchLogsConfig
  , _codeBuildProjectLogsConfigS3Logs :: Maybe CodeBuildProjectS3LogsConfig
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectLogsConfig where
  toJSON CodeBuildProjectLogsConfig{..} =
    object $
    catMaybes
    [ fmap (("CloudWatchLogs",) . toJSON) _codeBuildProjectLogsConfigCloudWatchLogs
    , fmap (("S3Logs",) . toJSON) _codeBuildProjectLogsConfigS3Logs
    ]

-- | Constructor for 'CodeBuildProjectLogsConfig' containing required fields
-- as arguments.
codeBuildProjectLogsConfig
  :: CodeBuildProjectLogsConfig
codeBuildProjectLogsConfig  =
  CodeBuildProjectLogsConfig
  { _codeBuildProjectLogsConfigCloudWatchLogs = Nothing
  , _codeBuildProjectLogsConfigS3Logs = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-logsconfig.html#cfn-codebuild-project-logsconfig-cloudwatchlogs
cbplcCloudWatchLogs :: Lens' CodeBuildProjectLogsConfig (Maybe CodeBuildProjectCloudWatchLogsConfig)
cbplcCloudWatchLogs = lens _codeBuildProjectLogsConfigCloudWatchLogs (\s a -> s { _codeBuildProjectLogsConfigCloudWatchLogs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-logsconfig.html#cfn-codebuild-project-logsconfig-s3logs
cbplcS3Logs :: Lens' CodeBuildProjectLogsConfig (Maybe CodeBuildProjectS3LogsConfig)
cbplcS3Logs = lens _codeBuildProjectLogsConfigS3Logs (\s a -> s { _codeBuildProjectLogsConfigS3Logs = a })
