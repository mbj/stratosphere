module Stratosphere.IoT.TopicRule.TimestreamDimensionProperty (
        TimestreamDimensionProperty(..), mkTimestreamDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimestreamDimensionProperty
  = TimestreamDimensionProperty {name :: (Value Prelude.Text),
                                 value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimestreamDimensionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TimestreamDimensionProperty
mkTimestreamDimensionProperty name value
  = TimestreamDimensionProperty {name = name, value = value}
instance ToResourceProperties TimestreamDimensionProperty where
  toResourceProperties TimestreamDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.TimestreamDimension",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON TimestreamDimensionProperty where
  toJSON TimestreamDimensionProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" TimestreamDimensionProperty where
  type PropertyType "Name" TimestreamDimensionProperty = Value Prelude.Text
  set newValue TimestreamDimensionProperty {..}
    = TimestreamDimensionProperty {name = newValue, ..}
instance Property "Value" TimestreamDimensionProperty where
  type PropertyType "Value" TimestreamDimensionProperty = Value Prelude.Text
  set newValue TimestreamDimensionProperty {..}
    = TimestreamDimensionProperty {value = newValue, ..}