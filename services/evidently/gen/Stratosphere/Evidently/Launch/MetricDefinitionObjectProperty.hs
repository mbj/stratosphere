module Stratosphere.Evidently.Launch.MetricDefinitionObjectProperty (
        MetricDefinitionObjectProperty(..),
        mkMetricDefinitionObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricDefinitionObjectProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-metricdefinitionobject.html>
    MetricDefinitionObjectProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-metricdefinitionobject.html#cfn-evidently-launch-metricdefinitionobject-entityidkey>
                                    entityIdKey :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-metricdefinitionobject.html#cfn-evidently-launch-metricdefinitionobject-eventpattern>
                                    eventPattern :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-metricdefinitionobject.html#cfn-evidently-launch-metricdefinitionobject-metricname>
                                    metricName :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-metricdefinitionobject.html#cfn-evidently-launch-metricdefinitionobject-unitlabel>
                                    unitLabel :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-metricdefinitionobject.html#cfn-evidently-launch-metricdefinitionobject-valuekey>
                                    valueKey :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricDefinitionObjectProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> MetricDefinitionObjectProperty
mkMetricDefinitionObjectProperty entityIdKey metricName valueKey
  = MetricDefinitionObjectProperty
      {haddock_workaround_ = (), entityIdKey = entityIdKey,
       metricName = metricName, valueKey = valueKey,
       eventPattern = Prelude.Nothing, unitLabel = Prelude.Nothing}
instance ToResourceProperties MetricDefinitionObjectProperty where
  toResourceProperties MetricDefinitionObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Launch.MetricDefinitionObject",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EntityIdKey" JSON..= entityIdKey,
                            "MetricName" JSON..= metricName, "ValueKey" JSON..= valueKey]
                           (Prelude.catMaybes
                              [(JSON..=) "EventPattern" Prelude.<$> eventPattern,
                               (JSON..=) "UnitLabel" Prelude.<$> unitLabel]))}
instance JSON.ToJSON MetricDefinitionObjectProperty where
  toJSON MetricDefinitionObjectProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EntityIdKey" JSON..= entityIdKey,
               "MetricName" JSON..= metricName, "ValueKey" JSON..= valueKey]
              (Prelude.catMaybes
                 [(JSON..=) "EventPattern" Prelude.<$> eventPattern,
                  (JSON..=) "UnitLabel" Prelude.<$> unitLabel])))
instance Property "EntityIdKey" MetricDefinitionObjectProperty where
  type PropertyType "EntityIdKey" MetricDefinitionObjectProperty = Value Prelude.Text
  set newValue MetricDefinitionObjectProperty {..}
    = MetricDefinitionObjectProperty {entityIdKey = newValue, ..}
instance Property "EventPattern" MetricDefinitionObjectProperty where
  type PropertyType "EventPattern" MetricDefinitionObjectProperty = Value Prelude.Text
  set newValue MetricDefinitionObjectProperty {..}
    = MetricDefinitionObjectProperty
        {eventPattern = Prelude.pure newValue, ..}
instance Property "MetricName" MetricDefinitionObjectProperty where
  type PropertyType "MetricName" MetricDefinitionObjectProperty = Value Prelude.Text
  set newValue MetricDefinitionObjectProperty {..}
    = MetricDefinitionObjectProperty {metricName = newValue, ..}
instance Property "UnitLabel" MetricDefinitionObjectProperty where
  type PropertyType "UnitLabel" MetricDefinitionObjectProperty = Value Prelude.Text
  set newValue MetricDefinitionObjectProperty {..}
    = MetricDefinitionObjectProperty
        {unitLabel = Prelude.pure newValue, ..}
instance Property "ValueKey" MetricDefinitionObjectProperty where
  type PropertyType "ValueKey" MetricDefinitionObjectProperty = Value Prelude.Text
  set newValue MetricDefinitionObjectProperty {..}
    = MetricDefinitionObjectProperty {valueKey = newValue, ..}