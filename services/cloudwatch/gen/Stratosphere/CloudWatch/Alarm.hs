module Stratosphere.CloudWatch.Alarm (
        module Exports, Alarm(..), mkAlarm
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudWatch.Alarm.DimensionProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudWatch.Alarm.MetricDataQueryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Alarm
  = Alarm {actionsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
           alarmActions :: (Prelude.Maybe (ValueList Prelude.Text)),
           alarmDescription :: (Prelude.Maybe (Value Prelude.Text)),
           alarmName :: (Prelude.Maybe (Value Prelude.Text)),
           comparisonOperator :: (Value Prelude.Text),
           datapointsToAlarm :: (Prelude.Maybe (Value Prelude.Integer)),
           dimensions :: (Prelude.Maybe [DimensionProperty]),
           evaluateLowSampleCountPercentile :: (Prelude.Maybe (Value Prelude.Text)),
           evaluationPeriods :: (Value Prelude.Integer),
           extendedStatistic :: (Prelude.Maybe (Value Prelude.Text)),
           insufficientDataActions :: (Prelude.Maybe (ValueList Prelude.Text)),
           metricName :: (Prelude.Maybe (Value Prelude.Text)),
           metrics :: (Prelude.Maybe [MetricDataQueryProperty]),
           namespace :: (Prelude.Maybe (Value Prelude.Text)),
           oKActions :: (Prelude.Maybe (ValueList Prelude.Text)),
           period :: (Prelude.Maybe (Value Prelude.Integer)),
           statistic :: (Prelude.Maybe (Value Prelude.Text)),
           threshold :: (Prelude.Maybe (Value Prelude.Double)),
           thresholdMetricId :: (Prelude.Maybe (Value Prelude.Text)),
           treatMissingData :: (Prelude.Maybe (Value Prelude.Text)),
           unit :: (Prelude.Maybe (Value Prelude.Text))}
mkAlarm :: Value Prelude.Text -> Value Prelude.Integer -> Alarm
mkAlarm comparisonOperator evaluationPeriods
  = Alarm
      {comparisonOperator = comparisonOperator,
       evaluationPeriods = evaluationPeriods,
       actionsEnabled = Prelude.Nothing, alarmActions = Prelude.Nothing,
       alarmDescription = Prelude.Nothing, alarmName = Prelude.Nothing,
       datapointsToAlarm = Prelude.Nothing, dimensions = Prelude.Nothing,
       evaluateLowSampleCountPercentile = Prelude.Nothing,
       extendedStatistic = Prelude.Nothing,
       insufficientDataActions = Prelude.Nothing,
       metricName = Prelude.Nothing, metrics = Prelude.Nothing,
       namespace = Prelude.Nothing, oKActions = Prelude.Nothing,
       period = Prelude.Nothing, statistic = Prelude.Nothing,
       threshold = Prelude.Nothing, thresholdMetricId = Prelude.Nothing,
       treatMissingData = Prelude.Nothing, unit = Prelude.Nothing}
instance ToResourceProperties Alarm where
  toResourceProperties Alarm {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::Alarm", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComparisonOperator" JSON..= comparisonOperator,
                            "EvaluationPeriods" JSON..= evaluationPeriods]
                           (Prelude.catMaybes
                              [(JSON..=) "ActionsEnabled" Prelude.<$> actionsEnabled,
                               (JSON..=) "AlarmActions" Prelude.<$> alarmActions,
                               (JSON..=) "AlarmDescription" Prelude.<$> alarmDescription,
                               (JSON..=) "AlarmName" Prelude.<$> alarmName,
                               (JSON..=) "DatapointsToAlarm" Prelude.<$> datapointsToAlarm,
                               (JSON..=) "Dimensions" Prelude.<$> dimensions,
                               (JSON..=) "EvaluateLowSampleCountPercentile"
                                 Prelude.<$> evaluateLowSampleCountPercentile,
                               (JSON..=) "ExtendedStatistic" Prelude.<$> extendedStatistic,
                               (JSON..=) "InsufficientDataActions"
                                 Prelude.<$> insufficientDataActions,
                               (JSON..=) "MetricName" Prelude.<$> metricName,
                               (JSON..=) "Metrics" Prelude.<$> metrics,
                               (JSON..=) "Namespace" Prelude.<$> namespace,
                               (JSON..=) "OKActions" Prelude.<$> oKActions,
                               (JSON..=) "Period" Prelude.<$> period,
                               (JSON..=) "Statistic" Prelude.<$> statistic,
                               (JSON..=) "Threshold" Prelude.<$> threshold,
                               (JSON..=) "ThresholdMetricId" Prelude.<$> thresholdMetricId,
                               (JSON..=) "TreatMissingData" Prelude.<$> treatMissingData,
                               (JSON..=) "Unit" Prelude.<$> unit]))}
instance JSON.ToJSON Alarm where
  toJSON Alarm {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComparisonOperator" JSON..= comparisonOperator,
               "EvaluationPeriods" JSON..= evaluationPeriods]
              (Prelude.catMaybes
                 [(JSON..=) "ActionsEnabled" Prelude.<$> actionsEnabled,
                  (JSON..=) "AlarmActions" Prelude.<$> alarmActions,
                  (JSON..=) "AlarmDescription" Prelude.<$> alarmDescription,
                  (JSON..=) "AlarmName" Prelude.<$> alarmName,
                  (JSON..=) "DatapointsToAlarm" Prelude.<$> datapointsToAlarm,
                  (JSON..=) "Dimensions" Prelude.<$> dimensions,
                  (JSON..=) "EvaluateLowSampleCountPercentile"
                    Prelude.<$> evaluateLowSampleCountPercentile,
                  (JSON..=) "ExtendedStatistic" Prelude.<$> extendedStatistic,
                  (JSON..=) "InsufficientDataActions"
                    Prelude.<$> insufficientDataActions,
                  (JSON..=) "MetricName" Prelude.<$> metricName,
                  (JSON..=) "Metrics" Prelude.<$> metrics,
                  (JSON..=) "Namespace" Prelude.<$> namespace,
                  (JSON..=) "OKActions" Prelude.<$> oKActions,
                  (JSON..=) "Period" Prelude.<$> period,
                  (JSON..=) "Statistic" Prelude.<$> statistic,
                  (JSON..=) "Threshold" Prelude.<$> threshold,
                  (JSON..=) "ThresholdMetricId" Prelude.<$> thresholdMetricId,
                  (JSON..=) "TreatMissingData" Prelude.<$> treatMissingData,
                  (JSON..=) "Unit" Prelude.<$> unit])))
instance Property "ActionsEnabled" Alarm where
  type PropertyType "ActionsEnabled" Alarm = Value Prelude.Bool
  set newValue Alarm {..}
    = Alarm {actionsEnabled = Prelude.pure newValue, ..}
instance Property "AlarmActions" Alarm where
  type PropertyType "AlarmActions" Alarm = ValueList Prelude.Text
  set newValue Alarm {..}
    = Alarm {alarmActions = Prelude.pure newValue, ..}
instance Property "AlarmDescription" Alarm where
  type PropertyType "AlarmDescription" Alarm = Value Prelude.Text
  set newValue Alarm {..}
    = Alarm {alarmDescription = Prelude.pure newValue, ..}
instance Property "AlarmName" Alarm where
  type PropertyType "AlarmName" Alarm = Value Prelude.Text
  set newValue Alarm {..}
    = Alarm {alarmName = Prelude.pure newValue, ..}
instance Property "ComparisonOperator" Alarm where
  type PropertyType "ComparisonOperator" Alarm = Value Prelude.Text
  set newValue Alarm {..} = Alarm {comparisonOperator = newValue, ..}
instance Property "DatapointsToAlarm" Alarm where
  type PropertyType "DatapointsToAlarm" Alarm = Value Prelude.Integer
  set newValue Alarm {..}
    = Alarm {datapointsToAlarm = Prelude.pure newValue, ..}
instance Property "Dimensions" Alarm where
  type PropertyType "Dimensions" Alarm = [DimensionProperty]
  set newValue Alarm {..}
    = Alarm {dimensions = Prelude.pure newValue, ..}
instance Property "EvaluateLowSampleCountPercentile" Alarm where
  type PropertyType "EvaluateLowSampleCountPercentile" Alarm = Value Prelude.Text
  set newValue Alarm {..}
    = Alarm
        {evaluateLowSampleCountPercentile = Prelude.pure newValue, ..}
instance Property "EvaluationPeriods" Alarm where
  type PropertyType "EvaluationPeriods" Alarm = Value Prelude.Integer
  set newValue Alarm {..} = Alarm {evaluationPeriods = newValue, ..}
instance Property "ExtendedStatistic" Alarm where
  type PropertyType "ExtendedStatistic" Alarm = Value Prelude.Text
  set newValue Alarm {..}
    = Alarm {extendedStatistic = Prelude.pure newValue, ..}
instance Property "InsufficientDataActions" Alarm where
  type PropertyType "InsufficientDataActions" Alarm = ValueList Prelude.Text
  set newValue Alarm {..}
    = Alarm {insufficientDataActions = Prelude.pure newValue, ..}
instance Property "MetricName" Alarm where
  type PropertyType "MetricName" Alarm = Value Prelude.Text
  set newValue Alarm {..}
    = Alarm {metricName = Prelude.pure newValue, ..}
instance Property "Metrics" Alarm where
  type PropertyType "Metrics" Alarm = [MetricDataQueryProperty]
  set newValue Alarm {..}
    = Alarm {metrics = Prelude.pure newValue, ..}
instance Property "Namespace" Alarm where
  type PropertyType "Namespace" Alarm = Value Prelude.Text
  set newValue Alarm {..}
    = Alarm {namespace = Prelude.pure newValue, ..}
instance Property "OKActions" Alarm where
  type PropertyType "OKActions" Alarm = ValueList Prelude.Text
  set newValue Alarm {..}
    = Alarm {oKActions = Prelude.pure newValue, ..}
instance Property "Period" Alarm where
  type PropertyType "Period" Alarm = Value Prelude.Integer
  set newValue Alarm {..}
    = Alarm {period = Prelude.pure newValue, ..}
instance Property "Statistic" Alarm where
  type PropertyType "Statistic" Alarm = Value Prelude.Text
  set newValue Alarm {..}
    = Alarm {statistic = Prelude.pure newValue, ..}
instance Property "Threshold" Alarm where
  type PropertyType "Threshold" Alarm = Value Prelude.Double
  set newValue Alarm {..}
    = Alarm {threshold = Prelude.pure newValue, ..}
instance Property "ThresholdMetricId" Alarm where
  type PropertyType "ThresholdMetricId" Alarm = Value Prelude.Text
  set newValue Alarm {..}
    = Alarm {thresholdMetricId = Prelude.pure newValue, ..}
instance Property "TreatMissingData" Alarm where
  type PropertyType "TreatMissingData" Alarm = Value Prelude.Text
  set newValue Alarm {..}
    = Alarm {treatMissingData = Prelude.pure newValue, ..}
instance Property "Unit" Alarm where
  type PropertyType "Unit" Alarm = Value Prelude.Text
  set newValue Alarm {..} = Alarm {unit = Prelude.pure newValue, ..}