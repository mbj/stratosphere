
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-alarm.html

module Stratosphere.ResourceProperties.ApplicationInsightsApplicationAlarm where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for ApplicationInsightsApplicationAlarm. See
-- 'applicationInsightsApplicationAlarm' for a more convenient constructor.
data ApplicationInsightsApplicationAlarm =
  ApplicationInsightsApplicationAlarm
  { _applicationInsightsApplicationAlarmAlarmName :: Val Text
  , _applicationInsightsApplicationAlarmSeverity :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ApplicationInsightsApplicationAlarm where
  toJSON ApplicationInsightsApplicationAlarm{..} =
    object $
    catMaybes
    [ (Just . ("AlarmName",) . toJSON) _applicationInsightsApplicationAlarmAlarmName
    , fmap (("Severity",) . toJSON) _applicationInsightsApplicationAlarmSeverity
    ]

-- | Constructor for 'ApplicationInsightsApplicationAlarm' containing required
-- fields as arguments.
applicationInsightsApplicationAlarm
  :: Val Text -- ^ 'aiaaAlarmName'
  -> ApplicationInsightsApplicationAlarm
applicationInsightsApplicationAlarm alarmNamearg =
  ApplicationInsightsApplicationAlarm
  { _applicationInsightsApplicationAlarmAlarmName = alarmNamearg
  , _applicationInsightsApplicationAlarmSeverity = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-alarm.html#cfn-applicationinsights-application-alarm-alarmname
aiaaAlarmName :: Lens' ApplicationInsightsApplicationAlarm (Val Text)
aiaaAlarmName = lens _applicationInsightsApplicationAlarmAlarmName (\s a -> s { _applicationInsightsApplicationAlarmAlarmName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-alarm.html#cfn-applicationinsights-application-alarm-severity
aiaaSeverity :: Lens' ApplicationInsightsApplicationAlarm (Maybe (Val Text))
aiaaSeverity = lens _applicationInsightsApplicationAlarmSeverity (\s a -> s { _applicationInsightsApplicationAlarmSeverity = a })
