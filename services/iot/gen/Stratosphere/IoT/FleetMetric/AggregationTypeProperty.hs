module Stratosphere.IoT.FleetMetric.AggregationTypeProperty (
        AggregationTypeProperty(..), mkAggregationTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AggregationTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-fleetmetric-aggregationtype.html>
    AggregationTypeProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-fleetmetric-aggregationtype.html#cfn-iot-fleetmetric-aggregationtype-name>
                             name :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-fleetmetric-aggregationtype.html#cfn-iot-fleetmetric-aggregationtype-values>
                             values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAggregationTypeProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> AggregationTypeProperty
mkAggregationTypeProperty name values
  = AggregationTypeProperty
      {haddock_workaround_ = (), name = name, values = values}
instance ToResourceProperties AggregationTypeProperty where
  toResourceProperties AggregationTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::FleetMetric.AggregationType",
         supportsTags = Prelude.False,
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