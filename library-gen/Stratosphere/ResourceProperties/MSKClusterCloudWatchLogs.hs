
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-cloudwatchlogs.html

module Stratosphere.ResourceProperties.MSKClusterCloudWatchLogs where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for MSKClusterCloudWatchLogs. See
-- 'mskClusterCloudWatchLogs' for a more convenient constructor.
data MSKClusterCloudWatchLogs =
  MSKClusterCloudWatchLogs
  { _mSKClusterCloudWatchLogsEnabled :: Val Bool
  , _mSKClusterCloudWatchLogsLogGroup :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MSKClusterCloudWatchLogs where
  toJSON MSKClusterCloudWatchLogs{..} =
    object $
    catMaybes
    [ (Just . ("Enabled",) . toJSON) _mSKClusterCloudWatchLogsEnabled
    , fmap (("LogGroup",) . toJSON) _mSKClusterCloudWatchLogsLogGroup
    ]

-- | Constructor for 'MSKClusterCloudWatchLogs' containing required fields as
-- arguments.
mskClusterCloudWatchLogs
  :: Val Bool -- ^ 'mskccwlEnabled'
  -> MSKClusterCloudWatchLogs
mskClusterCloudWatchLogs enabledarg =
  MSKClusterCloudWatchLogs
  { _mSKClusterCloudWatchLogsEnabled = enabledarg
  , _mSKClusterCloudWatchLogsLogGroup = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-cloudwatchlogs.html#cfn-msk-cluster-cloudwatchlogs-enabled
mskccwlEnabled :: Lens' MSKClusterCloudWatchLogs (Val Bool)
mskccwlEnabled = lens _mSKClusterCloudWatchLogsEnabled (\s a -> s { _mSKClusterCloudWatchLogsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-cloudwatchlogs.html#cfn-msk-cluster-cloudwatchlogs-loggroup
mskccwlLogGroup :: Lens' MSKClusterCloudWatchLogs (Maybe (Val Text))
mskccwlLogGroup = lens _mSKClusterCloudWatchLogsLogGroup (\s a -> s { _mSKClusterCloudWatchLogsLogGroup = a })
