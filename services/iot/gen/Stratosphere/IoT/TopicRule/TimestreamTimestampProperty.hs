module Stratosphere.IoT.TopicRule.TimestreamTimestampProperty (
        TimestreamTimestampProperty(..), mkTimestreamTimestampProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimestreamTimestampProperty
  = TimestreamTimestampProperty {unit :: (Value Prelude.Text),
                                 value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimestreamTimestampProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TimestreamTimestampProperty
mkTimestreamTimestampProperty unit value
  = TimestreamTimestampProperty {unit = unit, value = value}
instance ToResourceProperties TimestreamTimestampProperty where
  toResourceProperties TimestreamTimestampProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.TimestreamTimestamp",
         supportsTags = Prelude.False,
         properties = ["Unit" JSON..= unit, "Value" JSON..= value]}
instance JSON.ToJSON TimestreamTimestampProperty where
  toJSON TimestreamTimestampProperty {..}
    = JSON.object ["Unit" JSON..= unit, "Value" JSON..= value]
instance Property "Unit" TimestreamTimestampProperty where
  type PropertyType "Unit" TimestreamTimestampProperty = Value Prelude.Text
  set newValue TimestreamTimestampProperty {..}
    = TimestreamTimestampProperty {unit = newValue, ..}
instance Property "Value" TimestreamTimestampProperty where
  type PropertyType "Value" TimestreamTimestampProperty = Value Prelude.Text
  set newValue TimestreamTimestampProperty {..}
    = TimestreamTimestampProperty {value = newValue, ..}