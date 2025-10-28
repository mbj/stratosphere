module Stratosphere.CloudWatch.Alarm (
        module Exports, Alarm(..), mkAlarm
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudWatch.Alarm.DimensionProperty as Exports
import {-# SOURCE #-} Stratosphere.CloudWatch.Alarm.MetricDataQueryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Alarm
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html>
    Alarm {haddock_workaround_ :: (),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-actionsenabled>
           actionsEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-alarmactions>
           alarmActions :: (Prelude.Maybe (ValueList Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-alarmdescription>
           alarmDescription :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-alarmname>
           alarmName :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-comparisonoperator>
           comparisonOperator :: (Value Prelude.Text),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-datapointstoalarm>
           datapointsToAlarm :: (Prelude.Maybe (Value Prelude.Integer)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-dimensions>
           dimensions :: (Prelude.Maybe [DimensionProperty]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-evaluatelowsamplecountpercentile>
           evaluateLowSampleCountPercentile :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-evaluationperiods>
           evaluationPeriods :: (Value Prelude.Integer),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-extendedstatistic>
           extendedStatistic :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-insufficientdataactions>
           insufficientDataActions :: (Prelude.Maybe (ValueList Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-metricname>
           metricName :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-metrics>
           metrics :: (Prelude.Maybe [MetricDataQueryProperty]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-namespace>
           namespace :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-okactions>
           oKActions :: (Prelude.Maybe (ValueList Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-period>
           period :: (Prelude.Maybe (Value Prelude.Integer)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-statistic>
           statistic :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-tags>
           tags :: (Prelude.Maybe [Tag]),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-threshold>
           threshold :: (Prelude.Maybe (Value Prelude.Double)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-thresholdmetricid>
           thresholdMetricId :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-treatmissingdata>
           treatMissingData :: (Prelude.Maybe (Value Prelude.Text)),
           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-alarm.html#cfn-cloudwatch-alarm-unit>
           unit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAlarm :: Value Prelude.Text -> Value Prelude.Integer -> Alarm
mkAlarm comparisonOperator evaluationPeriods
  = Alarm
      {haddock_workaround_ = (), comparisonOperator = comparisonOperator,
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
       tags = Prelude.Nothing, threshold = Prelude.Nothing,
       thresholdMetricId = Prelude.Nothing,
       treatMissingData = Prelude.Nothing, unit = Prelude.Nothing}
instance ToResourceProperties Alarm where
  toResourceProperties Alarm {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::Alarm", supportsTags = Prelude.True,
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
                               (JSON..=) "Tags" Prelude.<$> tags,
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
                  (JSON..=) "Tags" Prelude.<$> tags,
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
instance Property "Tags" Alarm where
  type PropertyType "Tags" Alarm = [Tag]
  set newValue Alarm {..} = Alarm {tags = Prelude.pure newValue, ..}
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