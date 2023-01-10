
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-cloudwatchlogsconfig.html

module Stratosphere.ResourceProperties.CodeBuildProjectCloudWatchLogsConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeBuildProjectCloudWatchLogsConfig. See
-- 'codeBuildProjectCloudWatchLogsConfig' for a more convenient constructor.
data CodeBuildProjectCloudWatchLogsConfig =
  CodeBuildProjectCloudWatchLogsConfig
  { _codeBuildProjectCloudWatchLogsConfigGroupName :: Maybe (Val Text)
  , _codeBuildProjectCloudWatchLogsConfigStatus :: Val Text
  , _codeBuildProjectCloudWatchLogsConfigStreamName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectCloudWatchLogsConfig where
  toJSON CodeBuildProjectCloudWatchLogsConfig{..} =
    object $
    catMaybes
    [ fmap (("GroupName",) . toJSON) _codeBuildProjectCloudWatchLogsConfigGroupName
    , (Just . ("Status",) . toJSON) _codeBuildProjectCloudWatchLogsConfigStatus
    , fmap (("StreamName",) . toJSON) _codeBuildProjectCloudWatchLogsConfigStreamName
    ]

-- | Constructor for 'CodeBuildProjectCloudWatchLogsConfig' containing
-- required fields as arguments.
codeBuildProjectCloudWatchLogsConfig
  :: Val Text -- ^ 'cbpcwlcStatus'
  -> CodeBuildProjectCloudWatchLogsConfig
codeBuildProjectCloudWatchLogsConfig statusarg =
  CodeBuildProjectCloudWatchLogsConfig
  { _codeBuildProjectCloudWatchLogsConfigGroupName = Nothing
  , _codeBuildProjectCloudWatchLogsConfigStatus = statusarg
  , _codeBuildProjectCloudWatchLogsConfigStreamName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-cloudwatchlogsconfig.html#cfn-codebuild-project-cloudwatchlogsconfig-groupname
cbpcwlcGroupName :: Lens' CodeBuildProjectCloudWatchLogsConfig (Maybe (Val Text))
cbpcwlcGroupName = lens _codeBuildProjectCloudWatchLogsConfigGroupName (\s a -> s { _codeBuildProjectCloudWatchLogsConfigGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-cloudwatchlogsconfig.html#cfn-codebuild-project-cloudwatchlogsconfig-status
cbpcwlcStatus :: Lens' CodeBuildProjectCloudWatchLogsConfig (Val Text)
cbpcwlcStatus = lens _codeBuildProjectCloudWatchLogsConfigStatus (\s a -> s { _codeBuildProjectCloudWatchLogsConfigStatus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-cloudwatchlogsconfig.html#cfn-codebuild-project-cloudwatchlogsconfig-streamname
cbpcwlcStreamName :: Lens' CodeBuildProjectCloudWatchLogsConfig (Maybe (Val Text))
cbpcwlcStreamName = lens _codeBuildProjectCloudWatchLogsConfigStreamName (\s a -> s { _codeBuildProjectCloudWatchLogsConfigStreamName = a })
