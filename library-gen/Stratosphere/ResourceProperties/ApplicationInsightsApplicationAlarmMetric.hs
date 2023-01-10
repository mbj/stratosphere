
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-alarmmetric.html

module Stratosphere.ResourceProperties.ApplicationInsightsApplicationAlarmMetric where

import Stratosphere.ResourceImports


-- | Full data type definition for ApplicationInsightsApplicationAlarmMetric.
-- See 'applicationInsightsApplicationAlarmMetric' for a more convenient
-- constructor.
data ApplicationInsightsApplicationAlarmMetric =
  ApplicationInsightsApplicationAlarmMetric
  { _applicationInsightsApplicationAlarmMetricAlarmMetricName :: Val Text
  } deriving (Show, Eq)

instance ToJSON ApplicationInsightsApplicationAlarmMetric where
  toJSON ApplicationInsightsApplicationAlarmMetric{..} =
    object $
    catMaybes
    [ (Just . ("AlarmMetricName",) . toJSON) _applicationInsightsApplicationAlarmMetricAlarmMetricName
    ]

-- | Constructor for 'ApplicationInsightsApplicationAlarmMetric' containing
-- required fields as arguments.
applicationInsightsApplicationAlarmMetric
  :: Val Text -- ^ 'aiaamAlarmMetricName'
  -> ApplicationInsightsApplicationAlarmMetric
applicationInsightsApplicationAlarmMetric alarmMetricNamearg =
  ApplicationInsightsApplicationAlarmMetric
  { _applicationInsightsApplicationAlarmMetricAlarmMetricName = alarmMetricNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-alarmmetric.html#cfn-applicationinsights-application-alarmmetric-alarmmetricname
aiaamAlarmMetricName :: Lens' ApplicationInsightsApplicationAlarmMetric (Val Text)
aiaamAlarmMetricName = lens _applicationInsightsApplicationAlarmMetricAlarmMetricName (\s a -> s { _applicationInsightsApplicationAlarmMetricAlarmMetricName = a })
