module Stratosphere.RUM.AppMonitor.MetricDefinitionProperty (
        MetricDefinitionProperty(..), mkMetricDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricDefinitionProperty
  = MetricDefinitionProperty {dimensionKeys :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                              eventPattern :: (Prelude.Maybe (Value Prelude.Text)),
                              name :: (Value Prelude.Text),
                              unitLabel :: (Prelude.Maybe (Value Prelude.Text)),
                              valueKey :: (Prelude.Maybe (Value Prelude.Text))}
mkMetricDefinitionProperty ::
  Value Prelude.Text -> MetricDefinitionProperty
mkMetricDefinitionProperty name
  = MetricDefinitionProperty
      {name = name, dimensionKeys = Prelude.Nothing,
       eventPattern = Prelude.Nothing, unitLabel = Prelude.Nothing,
       valueKey = Prelude.Nothing}
instance ToResourceProperties MetricDefinitionProperty where
  toResourceProperties MetricDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::RUM::AppMonitor.MetricDefinition",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "DimensionKeys" Prelude.<$> dimensionKeys,
                               (JSON..=) "EventPattern" Prelude.<$> eventPattern,
                               (JSON..=) "UnitLabel" Prelude.<$> unitLabel,
                               (JSON..=) "ValueKey" Prelude.<$> valueKey]))}
instance JSON.ToJSON MetricDefinitionProperty where
  toJSON MetricDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "DimensionKeys" Prelude.<$> dimensionKeys,
                  (JSON..=) "EventPattern" Prelude.<$> eventPattern,
                  (JSON..=) "UnitLabel" Prelude.<$> unitLabel,
                  (JSON..=) "ValueKey" Prelude.<$> valueKey])))
instance Property "DimensionKeys" MetricDefinitionProperty where
  type PropertyType "DimensionKeys" MetricDefinitionProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue MetricDefinitionProperty {..}
    = MetricDefinitionProperty
        {dimensionKeys = Prelude.pure newValue, ..}
instance Property "EventPattern" MetricDefinitionProperty where
  type PropertyType "EventPattern" MetricDefinitionProperty = Value Prelude.Text
  set newValue MetricDefinitionProperty {..}
    = MetricDefinitionProperty
        {eventPattern = Prelude.pure newValue, ..}
instance Property "Name" MetricDefinitionProperty where
  type PropertyType "Name" MetricDefinitionProperty = Value Prelude.Text
  set newValue MetricDefinitionProperty {..}
    = MetricDefinitionProperty {name = newValue, ..}
instance Property "UnitLabel" MetricDefinitionProperty where
  type PropertyType "UnitLabel" MetricDefinitionProperty = Value Prelude.Text
  set newValue MetricDefinitionProperty {..}
    = MetricDefinitionProperty {unitLabel = Prelude.pure newValue, ..}
instance Property "ValueKey" MetricDefinitionProperty where
  type PropertyType "ValueKey" MetricDefinitionProperty = Value Prelude.Text
  set newValue MetricDefinitionProperty {..}
    = MetricDefinitionProperty {valueKey = Prelude.pure newValue, ..}