
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-subcomponentconfigurationdetails.html

module Stratosphere.ResourceProperties.ApplicationInsightsApplicationSubComponentConfigurationDetails where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApplicationInsightsApplicationAlarmMetric
import Stratosphere.ResourceProperties.ApplicationInsightsApplicationLog
import Stratosphere.ResourceProperties.ApplicationInsightsApplicationWindowsEvent

-- | Full data type definition for
-- ApplicationInsightsApplicationSubComponentConfigurationDetails. See
-- 'applicationInsightsApplicationSubComponentConfigurationDetails' for a
-- more convenient constructor.
data ApplicationInsightsApplicationSubComponentConfigurationDetails =
  ApplicationInsightsApplicationSubComponentConfigurationDetails
  { _applicationInsightsApplicationSubComponentConfigurationDetailsAlarmMetrics :: Maybe [ApplicationInsightsApplicationAlarmMetric]
  , _applicationInsightsApplicationSubComponentConfigurationDetailsLogs :: Maybe [ApplicationInsightsApplicationLog]
  , _applicationInsightsApplicationSubComponentConfigurationDetailsWindowsEvents :: Maybe [ApplicationInsightsApplicationWindowsEvent]
  } deriving (Show, Eq)

instance ToJSON ApplicationInsightsApplicationSubComponentConfigurationDetails where
  toJSON ApplicationInsightsApplicationSubComponentConfigurationDetails{..} =
    object $
    catMaybes
    [ fmap (("AlarmMetrics",) . toJSON) _applicationInsightsApplicationSubComponentConfigurationDetailsAlarmMetrics
    , fmap (("Logs",) . toJSON) _applicationInsightsApplicationSubComponentConfigurationDetailsLogs
    , fmap (("WindowsEvents",) . toJSON) _applicationInsightsApplicationSubComponentConfigurationDetailsWindowsEvents
    ]

-- | Constructor for
-- 'ApplicationInsightsApplicationSubComponentConfigurationDetails'
-- containing required fields as arguments.
applicationInsightsApplicationSubComponentConfigurationDetails
  :: ApplicationInsightsApplicationSubComponentConfigurationDetails
applicationInsightsApplicationSubComponentConfigurationDetails  =
  ApplicationInsightsApplicationSubComponentConfigurationDetails
  { _applicationInsightsApplicationSubComponentConfigurationDetailsAlarmMetrics = Nothing
  , _applicationInsightsApplicationSubComponentConfigurationDetailsLogs = Nothing
  , _applicationInsightsApplicationSubComponentConfigurationDetailsWindowsEvents = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-subcomponentconfigurationdetails.html#cfn-applicationinsights-application-subcomponentconfigurationdetails-alarmmetrics
aiasccdAlarmMetrics :: Lens' ApplicationInsightsApplicationSubComponentConfigurationDetails (Maybe [ApplicationInsightsApplicationAlarmMetric])
aiasccdAlarmMetrics = lens _applicationInsightsApplicationSubComponentConfigurationDetailsAlarmMetrics (\s a -> s { _applicationInsightsApplicationSubComponentConfigurationDetailsAlarmMetrics = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-subcomponentconfigurationdetails.html#cfn-applicationinsights-application-subcomponentconfigurationdetails-logs
aiasccdLogs :: Lens' ApplicationInsightsApplicationSubComponentConfigurationDetails (Maybe [ApplicationInsightsApplicationLog])
aiasccdLogs = lens _applicationInsightsApplicationSubComponentConfigurationDetailsLogs (\s a -> s { _applicationInsightsApplicationSubComponentConfigurationDetailsLogs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-subcomponentconfigurationdetails.html#cfn-applicationinsights-application-subcomponentconfigurationdetails-windowsevents
aiasccdWindowsEvents :: Lens' ApplicationInsightsApplicationSubComponentConfigurationDetails (Maybe [ApplicationInsightsApplicationWindowsEvent])
aiasccdWindowsEvents = lens _applicationInsightsApplicationSubComponentConfigurationDetailsWindowsEvents (\s a -> s { _applicationInsightsApplicationSubComponentConfigurationDetailsWindowsEvents = a })
