{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html

module Stratosphere.ResourceProperties.ApplicationInsightsApplicationConfigurationDetails where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ApplicationInsightsApplicationAlarmMetric
import Stratosphere.ResourceProperties.ApplicationInsightsApplicationAlarm
import Stratosphere.ResourceProperties.ApplicationInsightsApplicationLog
import Stratosphere.ResourceProperties.ApplicationInsightsApplicationWindowsEvent

-- | Full data type definition for
-- ApplicationInsightsApplicationConfigurationDetails. See
-- 'applicationInsightsApplicationConfigurationDetails' for a more
-- convenient constructor.
data ApplicationInsightsApplicationConfigurationDetails =
  ApplicationInsightsApplicationConfigurationDetails
  { _applicationInsightsApplicationConfigurationDetailsAlarmMetrics :: Maybe [ApplicationInsightsApplicationAlarmMetric]
  , _applicationInsightsApplicationConfigurationDetailsAlarms :: Maybe [ApplicationInsightsApplicationAlarm]
  , _applicationInsightsApplicationConfigurationDetailsLogs :: Maybe [ApplicationInsightsApplicationLog]
  , _applicationInsightsApplicationConfigurationDetailsWindowsEvents :: Maybe [ApplicationInsightsApplicationWindowsEvent]
  } deriving (Show, Eq)

instance ToJSON ApplicationInsightsApplicationConfigurationDetails where
  toJSON ApplicationInsightsApplicationConfigurationDetails{..} =
    object $
    catMaybes
    [ fmap (("AlarmMetrics",) . toJSON) _applicationInsightsApplicationConfigurationDetailsAlarmMetrics
    , fmap (("Alarms",) . toJSON) _applicationInsightsApplicationConfigurationDetailsAlarms
    , fmap (("Logs",) . toJSON) _applicationInsightsApplicationConfigurationDetailsLogs
    , fmap (("WindowsEvents",) . toJSON) _applicationInsightsApplicationConfigurationDetailsWindowsEvents
    ]

-- | Constructor for 'ApplicationInsightsApplicationConfigurationDetails'
-- containing required fields as arguments.
applicationInsightsApplicationConfigurationDetails
  :: ApplicationInsightsApplicationConfigurationDetails
applicationInsightsApplicationConfigurationDetails  =
  ApplicationInsightsApplicationConfigurationDetails
  { _applicationInsightsApplicationConfigurationDetailsAlarmMetrics = Nothing
  , _applicationInsightsApplicationConfigurationDetailsAlarms = Nothing
  , _applicationInsightsApplicationConfigurationDetailsLogs = Nothing
  , _applicationInsightsApplicationConfigurationDetailsWindowsEvents = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-alarmmetrics
aiacdAlarmMetrics :: Lens' ApplicationInsightsApplicationConfigurationDetails (Maybe [ApplicationInsightsApplicationAlarmMetric])
aiacdAlarmMetrics = lens _applicationInsightsApplicationConfigurationDetailsAlarmMetrics (\s a -> s { _applicationInsightsApplicationConfigurationDetailsAlarmMetrics = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-alarms
aiacdAlarms :: Lens' ApplicationInsightsApplicationConfigurationDetails (Maybe [ApplicationInsightsApplicationAlarm])
aiacdAlarms = lens _applicationInsightsApplicationConfigurationDetailsAlarms (\s a -> s { _applicationInsightsApplicationConfigurationDetailsAlarms = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-logs
aiacdLogs :: Lens' ApplicationInsightsApplicationConfigurationDetails (Maybe [ApplicationInsightsApplicationLog])
aiacdLogs = lens _applicationInsightsApplicationConfigurationDetailsLogs (\s a -> s { _applicationInsightsApplicationConfigurationDetailsLogs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-windowsevents
aiacdWindowsEvents :: Lens' ApplicationInsightsApplicationConfigurationDetails (Maybe [ApplicationInsightsApplicationWindowsEvent])
aiacdWindowsEvents = lens _applicationInsightsApplicationConfigurationDetailsWindowsEvents (\s a -> s { _applicationInsightsApplicationConfigurationDetailsWindowsEvents = a })
