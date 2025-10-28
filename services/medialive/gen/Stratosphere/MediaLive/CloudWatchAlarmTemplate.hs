module Stratosphere.MediaLive.CloudWatchAlarmTemplate (
        CloudWatchAlarmTemplate(..), mkCloudWatchAlarmTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchAlarmTemplate
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-cloudwatchalarmtemplate.html>
    CloudWatchAlarmTemplate {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-cloudwatchalarmtemplate.html#cfn-medialive-cloudwatchalarmtemplate-comparisonoperator>
                             comparisonOperator :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-cloudwatchalarmtemplate.html#cfn-medialive-cloudwatchalarmtemplate-datapointstoalarm>
                             datapointsToAlarm :: (Prelude.Maybe (Value Prelude.Double)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-cloudwatchalarmtemplate.html#cfn-medialive-cloudwatchalarmtemplate-description>
                             description :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-cloudwatchalarmtemplate.html#cfn-medialive-cloudwatchalarmtemplate-evaluationperiods>
                             evaluationPeriods :: (Value Prelude.Double),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-cloudwatchalarmtemplate.html#cfn-medialive-cloudwatchalarmtemplate-groupidentifier>
                             groupIdentifier :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-cloudwatchalarmtemplate.html#cfn-medialive-cloudwatchalarmtemplate-metricname>
                             metricName :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-cloudwatchalarmtemplate.html#cfn-medialive-cloudwatchalarmtemplate-name>
                             name :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-cloudwatchalarmtemplate.html#cfn-medialive-cloudwatchalarmtemplate-period>
                             period :: (Value Prelude.Double),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-cloudwatchalarmtemplate.html#cfn-medialive-cloudwatchalarmtemplate-statistic>
                             statistic :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-cloudwatchalarmtemplate.html#cfn-medialive-cloudwatchalarmtemplate-tags>
                             tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-cloudwatchalarmtemplate.html#cfn-medialive-cloudwatchalarmtemplate-targetresourcetype>
                             targetResourceType :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-cloudwatchalarmtemplate.html#cfn-medialive-cloudwatchalarmtemplate-threshold>
                             threshold :: (Value Prelude.Double),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-medialive-cloudwatchalarmtemplate.html#cfn-medialive-cloudwatchalarmtemplate-treatmissingdata>
                             treatMissingData :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudWatchAlarmTemplate ::
  Value Prelude.Text
  -> Value Prelude.Double
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> Value Prelude.Double
                 -> Value Prelude.Text
                    -> Value Prelude.Text
                       -> Value Prelude.Double
                          -> Value Prelude.Text -> CloudWatchAlarmTemplate
mkCloudWatchAlarmTemplate
  comparisonOperator
  evaluationPeriods
  groupIdentifier
  metricName
  name
  period
  statistic
  targetResourceType
  threshold
  treatMissingData
  = CloudWatchAlarmTemplate
      {haddock_workaround_ = (), comparisonOperator = comparisonOperator,
       evaluationPeriods = evaluationPeriods,
       groupIdentifier = groupIdentifier, metricName = metricName,
       name = name, period = period, statistic = statistic,
       targetResourceType = targetResourceType, threshold = threshold,
       treatMissingData = treatMissingData,
       datapointsToAlarm = Prelude.Nothing, description = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties CloudWatchAlarmTemplate where
  toResourceProperties CloudWatchAlarmTemplate {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::CloudWatchAlarmTemplate",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ComparisonOperator" JSON..= comparisonOperator,
                            "EvaluationPeriods" JSON..= evaluationPeriods,
                            "GroupIdentifier" JSON..= groupIdentifier,
                            "MetricName" JSON..= metricName, "Name" JSON..= name,
                            "Period" JSON..= period, "Statistic" JSON..= statistic,
                            "TargetResourceType" JSON..= targetResourceType,
                            "Threshold" JSON..= threshold,
                            "TreatMissingData" JSON..= treatMissingData]
                           (Prelude.catMaybes
                              [(JSON..=) "DatapointsToAlarm" Prelude.<$> datapointsToAlarm,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON CloudWatchAlarmTemplate where
  toJSON CloudWatchAlarmTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ComparisonOperator" JSON..= comparisonOperator,
               "EvaluationPeriods" JSON..= evaluationPeriods,
               "GroupIdentifier" JSON..= groupIdentifier,
               "MetricName" JSON..= metricName, "Name" JSON..= name,
               "Period" JSON..= period, "Statistic" JSON..= statistic,
               "TargetResourceType" JSON..= targetResourceType,
               "Threshold" JSON..= threshold,
               "TreatMissingData" JSON..= treatMissingData]
              (Prelude.catMaybes
                 [(JSON..=) "DatapointsToAlarm" Prelude.<$> datapointsToAlarm,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ComparisonOperator" CloudWatchAlarmTemplate where
  type PropertyType "ComparisonOperator" CloudWatchAlarmTemplate = Value Prelude.Text
  set newValue CloudWatchAlarmTemplate {..}
    = CloudWatchAlarmTemplate {comparisonOperator = newValue, ..}
instance Property "DatapointsToAlarm" CloudWatchAlarmTemplate where
  type PropertyType "DatapointsToAlarm" CloudWatchAlarmTemplate = Value Prelude.Double
  set newValue CloudWatchAlarmTemplate {..}
    = CloudWatchAlarmTemplate
        {datapointsToAlarm = Prelude.pure newValue, ..}
instance Property "Description" CloudWatchAlarmTemplate where
  type PropertyType "Description" CloudWatchAlarmTemplate = Value Prelude.Text
  set newValue CloudWatchAlarmTemplate {..}
    = CloudWatchAlarmTemplate {description = Prelude.pure newValue, ..}
instance Property "EvaluationPeriods" CloudWatchAlarmTemplate where
  type PropertyType "EvaluationPeriods" CloudWatchAlarmTemplate = Value Prelude.Double
  set newValue CloudWatchAlarmTemplate {..}
    = CloudWatchAlarmTemplate {evaluationPeriods = newValue, ..}
instance Property "GroupIdentifier" CloudWatchAlarmTemplate where
  type PropertyType "GroupIdentifier" CloudWatchAlarmTemplate = Value Prelude.Text
  set newValue CloudWatchAlarmTemplate {..}
    = CloudWatchAlarmTemplate {groupIdentifier = newValue, ..}
instance Property "MetricName" CloudWatchAlarmTemplate where
  type PropertyType "MetricName" CloudWatchAlarmTemplate = Value Prelude.Text
  set newValue CloudWatchAlarmTemplate {..}
    = CloudWatchAlarmTemplate {metricName = newValue, ..}
instance Property "Name" CloudWatchAlarmTemplate where
  type PropertyType "Name" CloudWatchAlarmTemplate = Value Prelude.Text
  set newValue CloudWatchAlarmTemplate {..}
    = CloudWatchAlarmTemplate {name = newValue, ..}
instance Property "Period" CloudWatchAlarmTemplate where
  type PropertyType "Period" CloudWatchAlarmTemplate = Value Prelude.Double
  set newValue CloudWatchAlarmTemplate {..}
    = CloudWatchAlarmTemplate {period = newValue, ..}
instance Property "Statistic" CloudWatchAlarmTemplate where
  type PropertyType "Statistic" CloudWatchAlarmTemplate = Value Prelude.Text
  set newValue CloudWatchAlarmTemplate {..}
    = CloudWatchAlarmTemplate {statistic = newValue, ..}
instance Property "Tags" CloudWatchAlarmTemplate where
  type PropertyType "Tags" CloudWatchAlarmTemplate = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue CloudWatchAlarmTemplate {..}
    = CloudWatchAlarmTemplate {tags = Prelude.pure newValue, ..}
instance Property "TargetResourceType" CloudWatchAlarmTemplate where
  type PropertyType "TargetResourceType" CloudWatchAlarmTemplate = Value Prelude.Text
  set newValue CloudWatchAlarmTemplate {..}
    = CloudWatchAlarmTemplate {targetResourceType = newValue, ..}
instance Property "Threshold" CloudWatchAlarmTemplate where
  type PropertyType "Threshold" CloudWatchAlarmTemplate = Value Prelude.Double
  set newValue CloudWatchAlarmTemplate {..}
    = CloudWatchAlarmTemplate {threshold = newValue, ..}
instance Property "TreatMissingData" CloudWatchAlarmTemplate where
  type PropertyType "TreatMissingData" CloudWatchAlarmTemplate = Value Prelude.Text
  set newValue CloudWatchAlarmTemplate {..}
    = CloudWatchAlarmTemplate {treatMissingData = newValue, ..}