module Stratosphere.QuickSight.Topic.NamedEntityDefinitionMetricProperty (
        NamedEntityDefinitionMetricProperty(..),
        mkNamedEntityDefinitionMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NamedEntityDefinitionMetricProperty
  = NamedEntityDefinitionMetricProperty {aggregation :: (Prelude.Maybe (Value Prelude.Text)),
                                         aggregationFunctionParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNamedEntityDefinitionMetricProperty ::
  NamedEntityDefinitionMetricProperty
mkNamedEntityDefinitionMetricProperty
  = NamedEntityDefinitionMetricProperty
      {aggregation = Prelude.Nothing,
       aggregationFunctionParameters = Prelude.Nothing}
instance ToResourceProperties NamedEntityDefinitionMetricProperty where
  toResourceProperties NamedEntityDefinitionMetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.NamedEntityDefinitionMetric",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Aggregation" Prelude.<$> aggregation,
                            (JSON..=) "AggregationFunctionParameters"
                              Prelude.<$> aggregationFunctionParameters])}
instance JSON.ToJSON NamedEntityDefinitionMetricProperty where
  toJSON NamedEntityDefinitionMetricProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Aggregation" Prelude.<$> aggregation,
               (JSON..=) "AggregationFunctionParameters"
                 Prelude.<$> aggregationFunctionParameters]))
instance Property "Aggregation" NamedEntityDefinitionMetricProperty where
  type PropertyType "Aggregation" NamedEntityDefinitionMetricProperty = Value Prelude.Text
  set newValue NamedEntityDefinitionMetricProperty {..}
    = NamedEntityDefinitionMetricProperty
        {aggregation = Prelude.pure newValue, ..}
instance Property "AggregationFunctionParameters" NamedEntityDefinitionMetricProperty where
  type PropertyType "AggregationFunctionParameters" NamedEntityDefinitionMetricProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue NamedEntityDefinitionMetricProperty {..}
    = NamedEntityDefinitionMetricProperty
        {aggregationFunctionParameters = Prelude.pure newValue, ..}