{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html

module Stratosphere.Resources.CloudWatchAlarm where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CloudWatchAlarmDimension

-- | Full data type definition for CloudWatchAlarm. See 'cloudWatchAlarm' for
-- a more convenient constructor.
data CloudWatchAlarm =
  CloudWatchAlarm
  { _cloudWatchAlarmActionsEnabled :: Maybe (Val Bool')
  , _cloudWatchAlarmAlarmActions :: Maybe (ValList Text)
  , _cloudWatchAlarmAlarmDescription :: Maybe (Val Text)
  , _cloudWatchAlarmAlarmName :: Maybe (Val Text)
  , _cloudWatchAlarmComparisonOperator :: Val Text
  , _cloudWatchAlarmDimensions :: Maybe [CloudWatchAlarmDimension]
  , _cloudWatchAlarmEvaluateLowSampleCountPercentile :: Maybe (Val Text)
  , _cloudWatchAlarmEvaluationPeriods :: Val Integer'
  , _cloudWatchAlarmExtendedStatistic :: Maybe (Val Text)
  , _cloudWatchAlarmInsufficientDataActions :: Maybe (ValList Text)
  , _cloudWatchAlarmMetricName :: Val Text
  , _cloudWatchAlarmNamespace :: Val Text
  , _cloudWatchAlarmOKActions :: Maybe (ValList Text)
  , _cloudWatchAlarmPeriod :: Val Integer'
  , _cloudWatchAlarmStatistic :: Maybe (Val Text)
  , _cloudWatchAlarmThreshold :: Val Double'
  , _cloudWatchAlarmTreatMissingData :: Maybe (Val Text)
  , _cloudWatchAlarmUnit :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CloudWatchAlarm where
  toJSON CloudWatchAlarm{..} =
    object $
    catMaybes
    [ ("ActionsEnabled" .=) <$> _cloudWatchAlarmActionsEnabled
    , ("AlarmActions" .=) <$> _cloudWatchAlarmAlarmActions
    , ("AlarmDescription" .=) <$> _cloudWatchAlarmAlarmDescription
    , ("AlarmName" .=) <$> _cloudWatchAlarmAlarmName
    , Just ("ComparisonOperator" .= _cloudWatchAlarmComparisonOperator)
    , ("Dimensions" .=) <$> _cloudWatchAlarmDimensions
    , ("EvaluateLowSampleCountPercentile" .=) <$> _cloudWatchAlarmEvaluateLowSampleCountPercentile
    , Just ("EvaluationPeriods" .= _cloudWatchAlarmEvaluationPeriods)
    , ("ExtendedStatistic" .=) <$> _cloudWatchAlarmExtendedStatistic
    , ("InsufficientDataActions" .=) <$> _cloudWatchAlarmInsufficientDataActions
    , Just ("MetricName" .= _cloudWatchAlarmMetricName)
    , Just ("Namespace" .= _cloudWatchAlarmNamespace)
    , ("OKActions" .=) <$> _cloudWatchAlarmOKActions
    , Just ("Period" .= _cloudWatchAlarmPeriod)
    , ("Statistic" .=) <$> _cloudWatchAlarmStatistic
    , Just ("Threshold" .= _cloudWatchAlarmThreshold)
    , ("TreatMissingData" .=) <$> _cloudWatchAlarmTreatMissingData
    , ("Unit" .=) <$> _cloudWatchAlarmUnit
    ]

instance FromJSON CloudWatchAlarm where
  parseJSON (Object obj) =
    CloudWatchAlarm <$>
      obj .:? "ActionsEnabled" <*>
      obj .:? "AlarmActions" <*>
      obj .:? "AlarmDescription" <*>
      obj .:? "AlarmName" <*>
      obj .: "ComparisonOperator" <*>
      obj .:? "Dimensions" <*>
      obj .:? "EvaluateLowSampleCountPercentile" <*>
      obj .: "EvaluationPeriods" <*>
      obj .:? "ExtendedStatistic" <*>
      obj .:? "InsufficientDataActions" <*>
      obj .: "MetricName" <*>
      obj .: "Namespace" <*>
      obj .:? "OKActions" <*>
      obj .: "Period" <*>
      obj .:? "Statistic" <*>
      obj .: "Threshold" <*>
      obj .:? "TreatMissingData" <*>
      obj .:? "Unit"
  parseJSON _ = mempty

-- | Constructor for 'CloudWatchAlarm' containing required fields as
-- arguments.
cloudWatchAlarm
  :: Val Text -- ^ 'cwaComparisonOperator'
  -> Val Integer' -- ^ 'cwaEvaluationPeriods'
  -> Val Text -- ^ 'cwaMetricName'
  -> Val Text -- ^ 'cwaNamespace'
  -> Val Integer' -- ^ 'cwaPeriod'
  -> Val Double' -- ^ 'cwaThreshold'
  -> CloudWatchAlarm
cloudWatchAlarm comparisonOperatorarg evaluationPeriodsarg metricNamearg namespacearg periodarg thresholdarg =
  CloudWatchAlarm
  { _cloudWatchAlarmActionsEnabled = Nothing
  , _cloudWatchAlarmAlarmActions = Nothing
  , _cloudWatchAlarmAlarmDescription = Nothing
  , _cloudWatchAlarmAlarmName = Nothing
  , _cloudWatchAlarmComparisonOperator = comparisonOperatorarg
  , _cloudWatchAlarmDimensions = Nothing
  , _cloudWatchAlarmEvaluateLowSampleCountPercentile = Nothing
  , _cloudWatchAlarmEvaluationPeriods = evaluationPeriodsarg
  , _cloudWatchAlarmExtendedStatistic = Nothing
  , _cloudWatchAlarmInsufficientDataActions = Nothing
  , _cloudWatchAlarmMetricName = metricNamearg
  , _cloudWatchAlarmNamespace = namespacearg
  , _cloudWatchAlarmOKActions = Nothing
  , _cloudWatchAlarmPeriod = periodarg
  , _cloudWatchAlarmStatistic = Nothing
  , _cloudWatchAlarmThreshold = thresholdarg
  , _cloudWatchAlarmTreatMissingData = Nothing
  , _cloudWatchAlarmUnit = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-actionsenabled
cwaActionsEnabled :: Lens' CloudWatchAlarm (Maybe (Val Bool'))
cwaActionsEnabled = lens _cloudWatchAlarmActionsEnabled (\s a -> s { _cloudWatchAlarmActionsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-alarmactions
cwaAlarmActions :: Lens' CloudWatchAlarm (Maybe (ValList Text))
cwaAlarmActions = lens _cloudWatchAlarmAlarmActions (\s a -> s { _cloudWatchAlarmAlarmActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-alarmdescription
cwaAlarmDescription :: Lens' CloudWatchAlarm (Maybe (Val Text))
cwaAlarmDescription = lens _cloudWatchAlarmAlarmDescription (\s a -> s { _cloudWatchAlarmAlarmDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-alarmname
cwaAlarmName :: Lens' CloudWatchAlarm (Maybe (Val Text))
cwaAlarmName = lens _cloudWatchAlarmAlarmName (\s a -> s { _cloudWatchAlarmAlarmName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-comparisonoperator
cwaComparisonOperator :: Lens' CloudWatchAlarm (Val Text)
cwaComparisonOperator = lens _cloudWatchAlarmComparisonOperator (\s a -> s { _cloudWatchAlarmComparisonOperator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-dimension
cwaDimensions :: Lens' CloudWatchAlarm (Maybe [CloudWatchAlarmDimension])
cwaDimensions = lens _cloudWatchAlarmDimensions (\s a -> s { _cloudWatchAlarmDimensions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-evaluatelowsamplecountpercentile
cwaEvaluateLowSampleCountPercentile :: Lens' CloudWatchAlarm (Maybe (Val Text))
cwaEvaluateLowSampleCountPercentile = lens _cloudWatchAlarmEvaluateLowSampleCountPercentile (\s a -> s { _cloudWatchAlarmEvaluateLowSampleCountPercentile = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-evaluationperiods
cwaEvaluationPeriods :: Lens' CloudWatchAlarm (Val Integer')
cwaEvaluationPeriods = lens _cloudWatchAlarmEvaluationPeriods (\s a -> s { _cloudWatchAlarmEvaluationPeriods = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-extendedstatistic
cwaExtendedStatistic :: Lens' CloudWatchAlarm (Maybe (Val Text))
cwaExtendedStatistic = lens _cloudWatchAlarmExtendedStatistic (\s a -> s { _cloudWatchAlarmExtendedStatistic = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-insufficientdataactions
cwaInsufficientDataActions :: Lens' CloudWatchAlarm (Maybe (ValList Text))
cwaInsufficientDataActions = lens _cloudWatchAlarmInsufficientDataActions (\s a -> s { _cloudWatchAlarmInsufficientDataActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-metricname
cwaMetricName :: Lens' CloudWatchAlarm (Val Text)
cwaMetricName = lens _cloudWatchAlarmMetricName (\s a -> s { _cloudWatchAlarmMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-namespace
cwaNamespace :: Lens' CloudWatchAlarm (Val Text)
cwaNamespace = lens _cloudWatchAlarmNamespace (\s a -> s { _cloudWatchAlarmNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-okactions
cwaOKActions :: Lens' CloudWatchAlarm (Maybe (ValList Text))
cwaOKActions = lens _cloudWatchAlarmOKActions (\s a -> s { _cloudWatchAlarmOKActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-period
cwaPeriod :: Lens' CloudWatchAlarm (Val Integer')
cwaPeriod = lens _cloudWatchAlarmPeriod (\s a -> s { _cloudWatchAlarmPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-statistic
cwaStatistic :: Lens' CloudWatchAlarm (Maybe (Val Text))
cwaStatistic = lens _cloudWatchAlarmStatistic (\s a -> s { _cloudWatchAlarmStatistic = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-threshold
cwaThreshold :: Lens' CloudWatchAlarm (Val Double')
cwaThreshold = lens _cloudWatchAlarmThreshold (\s a -> s { _cloudWatchAlarmThreshold = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-treatmissingdata
cwaTreatMissingData :: Lens' CloudWatchAlarm (Maybe (Val Text))
cwaTreatMissingData = lens _cloudWatchAlarmTreatMissingData (\s a -> s { _cloudWatchAlarmTreatMissingData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-unit
cwaUnit :: Lens' CloudWatchAlarm (Maybe (Val Text))
cwaUnit = lens _cloudWatchAlarmUnit (\s a -> s { _cloudWatchAlarmUnit = a })
