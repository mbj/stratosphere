module Stratosphere.IoTFleetWise.Vehicle.TimePeriodProperty (
        TimePeriodProperty(..), mkTimePeriodProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimePeriodProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-vehicle-timeperiod.html>
    TimePeriodProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-vehicle-timeperiod.html#cfn-iotfleetwise-vehicle-timeperiod-unit>
                        unit :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotfleetwise-vehicle-timeperiod.html#cfn-iotfleetwise-vehicle-timeperiod-value>
                        value :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimePeriodProperty ::
  Value Prelude.Text -> Value Prelude.Double -> TimePeriodProperty
mkTimePeriodProperty unit value
  = TimePeriodProperty
      {haddock_workaround_ = (), unit = unit, value = value}
instance ToResourceProperties TimePeriodProperty where
  toResourceProperties TimePeriodProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Vehicle.TimePeriod",
         supportsTags = Prelude.False,
         properties = ["Unit" JSON..= unit, "Value" JSON..= value]}
instance JSON.ToJSON TimePeriodProperty where
  toJSON TimePeriodProperty {..}
    = JSON.object ["Unit" JSON..= unit, "Value" JSON..= value]
instance Property "Unit" TimePeriodProperty where
  type PropertyType "Unit" TimePeriodProperty = Value Prelude.Text
  set newValue TimePeriodProperty {..}
    = TimePeriodProperty {unit = newValue, ..}
instance Property "Value" TimePeriodProperty where
  type PropertyType "Value" TimePeriodProperty = Value Prelude.Double
  set newValue TimePeriodProperty {..}
    = TimePeriodProperty {value = newValue, ..}