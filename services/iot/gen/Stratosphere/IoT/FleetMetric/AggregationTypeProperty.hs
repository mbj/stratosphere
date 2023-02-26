module Stratosphere.IoT.FleetMetric.AggregationTypeProperty (
        AggregationTypeProperty(..), mkAggregationTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AggregationTypeProperty
  = AggregationTypeProperty {name :: (Value Prelude.Text),
                             values :: (ValueList Prelude.Text)}
mkAggregationTypeProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> AggregationTypeProperty
mkAggregationTypeProperty name values
  = AggregationTypeProperty {name = name, values = values}
instance ToResourceProperties AggregationTypeProperty where
  toResourceProperties AggregationTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::FleetMetric.AggregationType",
         properties = ["Name" JSON..= name, "Values" JSON..= values]}
instance JSON.ToJSON AggregationTypeProperty where
  toJSON AggregationTypeProperty {..}
    = JSON.object ["Name" JSON..= name, "Values" JSON..= values]
instance Property "Name" AggregationTypeProperty where
  type PropertyType "Name" AggregationTypeProperty = Value Prelude.Text
  set newValue AggregationTypeProperty {..}
    = AggregationTypeProperty {name = newValue, ..}
instance Property "Values" AggregationTypeProperty where
  type PropertyType "Values" AggregationTypeProperty = ValueList Prelude.Text
  set newValue AggregationTypeProperty {..}
    = AggregationTypeProperty {values = newValue, ..}