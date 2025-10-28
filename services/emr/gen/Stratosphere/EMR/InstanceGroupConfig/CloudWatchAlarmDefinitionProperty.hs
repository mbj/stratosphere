module Stratosphere.EMR.InstanceGroupConfig.CloudWatchAlarmDefinitionProperty (
        module Exports, CloudWatchAlarmDefinitionProperty(..),
        mkCloudWatchAlarmDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.InstanceGroupConfig.MetricDimensionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchAlarmDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html>
    CloudWatchAlarmDefinitionProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-comparisonoperator>
                                       comparisonOperator :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-dimensions>
                                       dimensions :: (Prelude.Maybe [MetricDimensionProperty]),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-evaluationperiods>
                                       evaluationPeriods :: (Prelude.Maybe (Value Prelude.Integer)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-metricname>
                                       metricName :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-namespace>
                                       namespace :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-period>
                                       period :: (Value Prelude.Integer),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-statistic>
                                       statistic :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-threshold>
                                       threshold :: (Value Prelude.Double),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition.html#cfn-elasticmapreduce-instancegroupconfig-cloudwatchalarmdefinition-unit>
                                       unit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchAlarmDefinitionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Integer
        -> Value Prelude.Double -> CloudWatchAlarmDefinitionProperty
mkCloudWatchAlarmDefinitionProperty
  comparisonOperator
  metricName
  period
  threshold
  = CloudWatchAlarmDefinitionProperty
      {haddock_workaround_ = (), comparisonOperator = comparisonOperator,
       metricName = metricName, period = period, threshold = threshold,
       dimensions = Prelude.Nothing, evaluationPeriods = Prelude.Nothing,
       namespace = Prelude.Nothing, statistic = Prelude.Nothing,
       unit = Prelude.Nothing}
instance ToResourceProperties CloudWatchAlarmDefinitionProperty where
  toResourceProperties CloudWatchAlarmDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::InstanceGroupConfig.CloudWatchAlarmDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComparisonOperator" JSON..= comparisonOperator,
                            "MetricName" JSON..= metricName, "Period" JSON..= period,
                            "Threshold" JSON..= threshold]
                           (Prelude.catMaybes
                              [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                               (JSON..=) "EvaluationPeriods" Prelude.<$> evaluationPeriods,
                               (JSON..=) "Namespace" Prelude.<$> namespace,
                               (JSON..=) "Statistic" Prelude.<$> statistic,
                               (JSON..=) "Unit" Prelude.<$> unit]))}
instance JSON.ToJSON CloudWatchAlarmDefinitionProperty where
  toJSON CloudWatchAlarmDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComparisonOperator" JSON..= comparisonOperator,
               "MetricName" JSON..= metricName, "Period" JSON..= period,
               "Threshold" JSON..= threshold]
              (Prelude.catMaybes
                 [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                  (JSON..=) "EvaluationPeriods" Prelude.<$> evaluationPeriods,
                  (JSON..=) "Namespace" Prelude.<$> namespace,
                  (JSON..=) "Statistic" Prelude.<$> statistic,
                  (JSON..=) "Unit" Prelude.<$> unit])))
instance Property "ComparisonOperator" CloudWatchAlarmDefinitionProperty where
  type PropertyType "ComparisonOperator" CloudWatchAlarmDefinitionProperty = Value Prelude.Text
  set newValue CloudWatchAlarmDefinitionProperty {..}
    = CloudWatchAlarmDefinitionProperty
        {comparisonOperator = newValue, ..}
instance Property "Dimensions" CloudWatchAlarmDefinitionProperty where
  type PropertyType "Dimensions" CloudWatchAlarmDefinitionProperty = [MetricDimensionProperty]
  set newValue CloudWatchAlarmDefinitionProperty {..}
    = CloudWatchAlarmDefinitionProperty
        {dimensions = Prelude.pure newValue, ..}
instance Property "EvaluationPeriods" CloudWatchAlarmDefinitionProperty where
  type PropertyType "EvaluationPeriods" CloudWatchAlarmDefinitionProperty = Value Prelude.Integer
  set newValue CloudWatchAlarmDefinitionProperty {..}
    = CloudWatchAlarmDefinitionProperty
        {evaluationPeriods = Prelude.pure newValue, ..}
instance Property "MetricName" CloudWatchAlarmDefinitionProperty where
  type PropertyType "MetricName" CloudWatchAlarmDefinitionProperty = Value Prelude.Text
  set newValue CloudWatchAlarmDefinitionProperty {..}
    = CloudWatchAlarmDefinitionProperty {metricName = newValue, ..}
instance Property "Namespace" CloudWatchAlarmDefinitionProperty where
  type PropertyType "Namespace" CloudWatchAlarmDefinitionProperty = Value Prelude.Text
  set newValue CloudWatchAlarmDefinitionProperty {..}
    = CloudWatchAlarmDefinitionProperty
        {namespace = Prelude.pure newValue, ..}
instance Property "Period" CloudWatchAlarmDefinitionProperty where
  type PropertyType "Period" CloudWatchAlarmDefinitionProperty = Value Prelude.Integer
  set newValue CloudWatchAlarmDefinitionProperty {..}
    = CloudWatchAlarmDefinitionProperty {period = newValue, ..}
instance Property "Statistic" CloudWatchAlarmDefinitionProperty where
  type PropertyType "Statistic" CloudWatchAlarmDefinitionProperty = Value Prelude.Text
  set newValue CloudWatchAlarmDefinitionProperty {..}
    = CloudWatchAlarmDefinitionProperty
        {statistic = Prelude.pure newValue, ..}
instance Property "Threshold" CloudWatchAlarmDefinitionProperty where
  type PropertyType "Threshold" CloudWatchAlarmDefinitionProperty = Value Prelude.Double
  set newValue CloudWatchAlarmDefinitionProperty {..}
    = CloudWatchAlarmDefinitionProperty {threshold = newValue, ..}
instance Property "Unit" CloudWatchAlarmDefinitionProperty where
  type PropertyType "Unit" CloudWatchAlarmDefinitionProperty = Value Prelude.Text
  set newValue CloudWatchAlarmDefinitionProperty {..}
    = CloudWatchAlarmDefinitionProperty
        {unit = Prelude.pure newValue, ..}