module Stratosphere.Evidently.Experiment.MetricGoalObjectProperty (
        MetricGoalObjectProperty(..), mkMetricGoalObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricGoalObjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-experiment-metricgoalobject.html>
    MetricGoalObjectProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-experiment-metricgoalobject.html#cfn-evidently-experiment-metricgoalobject-desiredchange>
                              desiredChange :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-experiment-metricgoalobject.html#cfn-evidently-experiment-metricgoalobject-entityidkey>
                              entityIdKey :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-experiment-metricgoalobject.html#cfn-evidently-experiment-metricgoalobject-eventpattern>
                              eventPattern :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-experiment-metricgoalobject.html#cfn-evidently-experiment-metricgoalobject-metricname>
                              metricName :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-experiment-metricgoalobject.html#cfn-evidently-experiment-metricgoalobject-unitlabel>
                              unitLabel :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-experiment-metricgoalobject.html#cfn-evidently-experiment-metricgoalobject-valuekey>
                              valueKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricGoalObjectProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> MetricGoalObjectProperty
mkMetricGoalObjectProperty
  desiredChange
  entityIdKey
  metricName
  valueKey
  = MetricGoalObjectProperty
      {haddock_workaround_ = (), desiredChange = desiredChange,
       entityIdKey = entityIdKey, metricName = metricName,
       valueKey = valueKey, eventPattern = Prelude.Nothing,
       unitLabel = Prelude.Nothing}
instance ToResourceProperties MetricGoalObjectProperty where
  toResourceProperties MetricGoalObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Experiment.MetricGoalObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DesiredChange" JSON..= desiredChange,
                            "EntityIdKey" JSON..= entityIdKey, "MetricName" JSON..= metricName,
                            "ValueKey" JSON..= valueKey]
                           (Prelude.catMaybes
                              [(JSON..=) "EventPattern" Prelude.<$> eventPattern,
                               (JSON..=) "UnitLabel" Prelude.<$> unitLabel]))}
instance JSON.ToJSON MetricGoalObjectProperty where
  toJSON MetricGoalObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DesiredChange" JSON..= desiredChange,
               "EntityIdKey" JSON..= entityIdKey, "MetricName" JSON..= metricName,
               "ValueKey" JSON..= valueKey]
              (Prelude.catMaybes
                 [(JSON..=) "EventPattern" Prelude.<$> eventPattern,
                  (JSON..=) "UnitLabel" Prelude.<$> unitLabel])))
instance Property "DesiredChange" MetricGoalObjectProperty where
  type PropertyType "DesiredChange" MetricGoalObjectProperty = Value Prelude.Text
  set newValue MetricGoalObjectProperty {..}
    = MetricGoalObjectProperty {desiredChange = newValue, ..}
instance Property "EntityIdKey" MetricGoalObjectProperty where
  type PropertyType "EntityIdKey" MetricGoalObjectProperty = Value Prelude.Text
  set newValue MetricGoalObjectProperty {..}
    = MetricGoalObjectProperty {entityIdKey = newValue, ..}
instance Property "EventPattern" MetricGoalObjectProperty where
  type PropertyType "EventPattern" MetricGoalObjectProperty = Value Prelude.Text
  set newValue MetricGoalObjectProperty {..}
    = MetricGoalObjectProperty
        {eventPattern = Prelude.pure newValue, ..}
instance Property "MetricName" MetricGoalObjectProperty where
  type PropertyType "MetricName" MetricGoalObjectProperty = Value Prelude.Text
  set newValue MetricGoalObjectProperty {..}
    = MetricGoalObjectProperty {metricName = newValue, ..}
instance Property "UnitLabel" MetricGoalObjectProperty where
  type PropertyType "UnitLabel" MetricGoalObjectProperty = Value Prelude.Text
  set newValue MetricGoalObjectProperty {..}
    = MetricGoalObjectProperty {unitLabel = Prelude.pure newValue, ..}
instance Property "ValueKey" MetricGoalObjectProperty where
  type PropertyType "ValueKey" MetricGoalObjectProperty = Value Prelude.Text
  set newValue MetricGoalObjectProperty {..}
    = MetricGoalObjectProperty {valueKey = newValue, ..}