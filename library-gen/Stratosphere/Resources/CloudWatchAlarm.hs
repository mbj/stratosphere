{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html

module Stratosphere.Resources.CloudWatchAlarm where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CloudWatchAlarmDimension
import Stratosphere.ResourceProperties.CloudWatchAlarmMetricDataQuery

-- | Full data type definition for CloudWatchAlarm. See 'cloudWatchAlarm' for
-- a more convenient constructor.
data CloudWatchAlarm =
  CloudWatchAlarm
  { _cloudWatchAlarmActionsEnabled :: Maybe (Val Bool)
  , _cloudWatchAlarmAlarmActions :: Maybe (ValList Text)
  , _cloudWatchAlarmAlarmDescription :: Maybe (Val Text)
  , _cloudWatchAlarmAlarmName :: Maybe (Val Text)
  , _cloudWatchAlarmComparisonOperator :: Val Text
  , _cloudWatchAlarmDatapointsToAlarm :: Maybe (Val Integer)
  , _cloudWatchAlarmDimensions :: Maybe [CloudWatchAlarmDimension]
  , _cloudWatchAlarmEvaluateLowSampleCountPercentile :: Maybe (Val Text)
  , _cloudWatchAlarmEvaluationPeriods :: Val Integer
  , _cloudWatchAlarmExtendedStatistic :: Maybe (Val Text)
  , _cloudWatchAlarmInsufficientDataActions :: Maybe (ValList Text)
  , _cloudWatchAlarmMetricName :: Maybe (Val Text)
  , _cloudWatchAlarmMetrics :: Maybe [CloudWatchAlarmMetricDataQuery]
  , _cloudWatchAlarmNamespace :: Maybe (Val Text)
  , _cloudWatchAlarmOKActions :: Maybe (ValList Text)
  , _cloudWatchAlarmPeriod :: Maybe (Val Integer)
  , _cloudWatchAlarmStatistic :: Maybe (Val Text)
  , _cloudWatchAlarmThreshold :: Maybe (Val Double)
  , _cloudWatchAlarmThresholdMetricId :: Maybe (Val Text)
  , _cloudWatchAlarmTreatMissingData :: Maybe (Val Text)
  , _cloudWatchAlarmUnit :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties CloudWatchAlarm where
  toResourceProperties CloudWatchAlarm{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::CloudWatch::Alarm"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ActionsEnabled",) . toJSON) _cloudWatchAlarmActionsEnabled
        , fmap (("AlarmActions",) . toJSON) _cloudWatchAlarmAlarmActions
        , fmap (("AlarmDescription",) . toJSON) _cloudWatchAlarmAlarmDescription
        , fmap (("AlarmName",) . toJSON) _cloudWatchAlarmAlarmName
        , (Just . ("ComparisonOperator",) . toJSON) _cloudWatchAlarmComparisonOperator
        , fmap (("DatapointsToAlarm",) . toJSON) _cloudWatchAlarmDatapointsToAlarm
        , fmap (("Dimensions",) . toJSON) _cloudWatchAlarmDimensions
        , fmap (("EvaluateLowSampleCountPercentile",) . toJSON) _cloudWatchAlarmEvaluateLowSampleCountPercentile
        , (Just . ("EvaluationPeriods",) . toJSON) _cloudWatchAlarmEvaluationPeriods
        , fmap (("ExtendedStatistic",) . toJSON) _cloudWatchAlarmExtendedStatistic
        , fmap (("InsufficientDataActions",) . toJSON) _cloudWatchAlarmInsufficientDataActions
        , fmap (("MetricName",) . toJSON) _cloudWatchAlarmMetricName
        , fmap (("Metrics",) . toJSON) _cloudWatchAlarmMetrics
        , fmap (("Namespace",) . toJSON) _cloudWatchAlarmNamespace
        , fmap (("OKActions",) . toJSON) _cloudWatchAlarmOKActions
        , fmap (("Period",) . toJSON) _cloudWatchAlarmPeriod
        , fmap (("Statistic",) . toJSON) _cloudWatchAlarmStatistic
        , fmap (("Threshold",) . toJSON) _cloudWatchAlarmThreshold
        , fmap (("ThresholdMetricId",) . toJSON) _cloudWatchAlarmThresholdMetricId
        , fmap (("TreatMissingData",) . toJSON) _cloudWatchAlarmTreatMissingData
        , fmap (("Unit",) . toJSON) _cloudWatchAlarmUnit
        ]
    }

-- | Constructor for 'CloudWatchAlarm' containing required fields as
-- arguments.
cloudWatchAlarm
  :: Val Text -- ^ 'cwaComparisonOperator'
  -> Val Integer -- ^ 'cwaEvaluationPeriods'
  -> CloudWatchAlarm
cloudWatchAlarm comparisonOperatorarg evaluationPeriodsarg =
  CloudWatchAlarm
  { _cloudWatchAlarmActionsEnabled = Nothing
  , _cloudWatchAlarmAlarmActions = Nothing
  , _cloudWatchAlarmAlarmDescription = Nothing
  , _cloudWatchAlarmAlarmName = Nothing
  , _cloudWatchAlarmComparisonOperator = comparisonOperatorarg
  , _cloudWatchAlarmDatapointsToAlarm = Nothing
  , _cloudWatchAlarmDimensions = Nothing
  , _cloudWatchAlarmEvaluateLowSampleCountPercentile = Nothing
  , _cloudWatchAlarmEvaluationPeriods = evaluationPeriodsarg
  , _cloudWatchAlarmExtendedStatistic = Nothing
  , _cloudWatchAlarmInsufficientDataActions = Nothing
  , _cloudWatchAlarmMetricName = Nothing
  , _cloudWatchAlarmMetrics = Nothing
  , _cloudWatchAlarmNamespace = Nothing
  , _cloudWatchAlarmOKActions = Nothing
  , _cloudWatchAlarmPeriod = Nothing
  , _cloudWatchAlarmStatistic = Nothing
  , _cloudWatchAlarmThreshold = Nothing
  , _cloudWatchAlarmThresholdMetricId = Nothing
  , _cloudWatchAlarmTreatMissingData = Nothing
  , _cloudWatchAlarmUnit = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-actionsenabled
cwaActionsEnabled :: Lens' CloudWatchAlarm (Maybe (Val Bool))
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarm-datapointstoalarm
cwaDatapointsToAlarm :: Lens' CloudWatchAlarm (Maybe (Val Integer))
cwaDatapointsToAlarm = lens _cloudWatchAlarmDatapointsToAlarm (\s a -> s { _cloudWatchAlarmDatapointsToAlarm = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-dimension
cwaDimensions :: Lens' CloudWatchAlarm (Maybe [CloudWatchAlarmDimension])
cwaDimensions = lens _cloudWatchAlarmDimensions (\s a -> s { _cloudWatchAlarmDimensions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-evaluatelowsamplecountpercentile
cwaEvaluateLowSampleCountPercentile :: Lens' CloudWatchAlarm (Maybe (Val Text))
cwaEvaluateLowSampleCountPercentile = lens _cloudWatchAlarmEvaluateLowSampleCountPercentile (\s a -> s { _cloudWatchAlarmEvaluateLowSampleCountPercentile = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-evaluationperiods
cwaEvaluationPeriods :: Lens' CloudWatchAlarm (Val Integer)
cwaEvaluationPeriods = lens _cloudWatchAlarmEvaluationPeriods (\s a -> s { _cloudWatchAlarmEvaluationPeriods = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-extendedstatistic
cwaExtendedStatistic :: Lens' CloudWatchAlarm (Maybe (Val Text))
cwaExtendedStatistic = lens _cloudWatchAlarmExtendedStatistic (\s a -> s { _cloudWatchAlarmExtendedStatistic = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-insufficientdataactions
cwaInsufficientDataActions :: Lens' CloudWatchAlarm (Maybe (ValList Text))
cwaInsufficientDataActions = lens _cloudWatchAlarmInsufficientDataActions (\s a -> s { _cloudWatchAlarmInsufficientDataActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-metricname
cwaMetricName :: Lens' CloudWatchAlarm (Maybe (Val Text))
cwaMetricName = lens _cloudWatchAlarmMetricName (\s a -> s { _cloudWatchAlarmMetricName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarm-metrics
cwaMetrics :: Lens' CloudWatchAlarm (Maybe [CloudWatchAlarmMetricDataQuery])
cwaMetrics = lens _cloudWatchAlarmMetrics (\s a -> s { _cloudWatchAlarmMetrics = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-namespace
cwaNamespace :: Lens' CloudWatchAlarm (Maybe (Val Text))
cwaNamespace = lens _cloudWatchAlarmNamespace (\s a -> s { _cloudWatchAlarmNamespace = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-okactions
cwaOKActions :: Lens' CloudWatchAlarm (Maybe (ValList Text))
cwaOKActions = lens _cloudWatchAlarmOKActions (\s a -> s { _cloudWatchAlarmOKActions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-period
cwaPeriod :: Lens' CloudWatchAlarm (Maybe (Val Integer))
cwaPeriod = lens _cloudWatchAlarmPeriod (\s a -> s { _cloudWatchAlarmPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-statistic
cwaStatistic :: Lens' CloudWatchAlarm (Maybe (Val Text))
cwaStatistic = lens _cloudWatchAlarmStatistic (\s a -> s { _cloudWatchAlarmStatistic = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-threshold
cwaThreshold :: Lens' CloudWatchAlarm (Maybe (Val Double))
cwaThreshold = lens _cloudWatchAlarmThreshold (\s a -> s { _cloudWatchAlarmThreshold = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-dynamic-threshold
cwaThresholdMetricId :: Lens' CloudWatchAlarm (Maybe (Val Text))
cwaThresholdMetricId = lens _cloudWatchAlarmThresholdMetricId (\s a -> s { _cloudWatchAlarmThresholdMetricId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-treatmissingdata
cwaTreatMissingData :: Lens' CloudWatchAlarm (Maybe (Val Text))
cwaTreatMissingData = lens _cloudWatchAlarmTreatMissingData (\s a -> s { _cloudWatchAlarmTreatMissingData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html#cfn-cloudwatch-alarms-unit
cwaUnit :: Lens' CloudWatchAlarm (Maybe (Val Text))
cwaUnit = lens _cloudWatchAlarmUnit (\s a -> s { _cloudWatchAlarmUnit = a })
