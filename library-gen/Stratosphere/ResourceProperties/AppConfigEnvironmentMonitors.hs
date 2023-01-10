
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-environment-monitors.html

module Stratosphere.ResourceProperties.AppConfigEnvironmentMonitors where

import Stratosphere.ResourceImports


-- | Full data type definition for AppConfigEnvironmentMonitors. See
-- 'appConfigEnvironmentMonitors' for a more convenient constructor.
data AppConfigEnvironmentMonitors =
  AppConfigEnvironmentMonitors
  { _appConfigEnvironmentMonitorsAlarmArn :: Maybe (Val Text)
  , _appConfigEnvironmentMonitorsAlarmRoleArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON AppConfigEnvironmentMonitors where
  toJSON AppConfigEnvironmentMonitors{..} =
    object $
    catMaybes
    [ fmap (("AlarmArn",) . toJSON) _appConfigEnvironmentMonitorsAlarmArn
    , fmap (("AlarmRoleArn",) . toJSON) _appConfigEnvironmentMonitorsAlarmRoleArn
    ]

-- | Constructor for 'AppConfigEnvironmentMonitors' containing required fields
-- as arguments.
appConfigEnvironmentMonitors
  :: AppConfigEnvironmentMonitors
appConfigEnvironmentMonitors  =
  AppConfigEnvironmentMonitors
  { _appConfigEnvironmentMonitorsAlarmArn = Nothing
  , _appConfigEnvironmentMonitorsAlarmRoleArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-environment-monitors.html#cfn-appconfig-environment-monitors-alarmarn
acemAlarmArn :: Lens' AppConfigEnvironmentMonitors (Maybe (Val Text))
acemAlarmArn = lens _appConfigEnvironmentMonitorsAlarmArn (\s a -> s { _appConfigEnvironmentMonitorsAlarmArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appconfig-environment-monitors.html#cfn-appconfig-environment-monitors-alarmrolearn
acemAlarmRoleArn :: Lens' AppConfigEnvironmentMonitors (Maybe (Val Text))
acemAlarmRoleArn = lens _appConfigEnvironmentMonitorsAlarmRoleArn (\s a -> s { _appConfigEnvironmentMonitorsAlarmRoleArn = a })
