module Stratosphere.MediaLive.CloudWatchAlarmTemplate (
        CloudWatchAlarmTemplate(..), mkCloudWatchAlarmTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudWatchAlarmTemplate
  = CloudWatchAlarmTemplate {comparisonOperator :: (Value Prelude.Text),
                             datapointsToAlarm :: (Prelude.Maybe (Value Prelude.Double)),
                             description :: (Prelude.Maybe (Value Prelude.Text)),
                             evaluationPeriods :: (Value Prelude.Double),
                             groupIdentifier :: (Value Prelude.Text),
                             metricName :: (Value Prelude.Text),
                             name :: (Value Prelude.Text),
                             period :: (Value Prelude.Double),
                             statistic :: (Value Prelude.Text),
                             tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                             targetResourceType :: (Value Prelude.Text),
                             threshold :: (Value Prelude.Double),
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
      {comparisonOperator = comparisonOperator,
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