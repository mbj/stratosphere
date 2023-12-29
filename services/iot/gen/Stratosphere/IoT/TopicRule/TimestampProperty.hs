module Stratosphere.IoT.TopicRule.TimestampProperty (
        TimestampProperty(..), mkTimestampProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimestampProperty
  = TimestampProperty {unit :: (Prelude.Maybe (Value Prelude.Text)),
                       value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimestampProperty :: Value Prelude.Text -> TimestampProperty
mkTimestampProperty value
  = TimestampProperty {value = value, unit = Prelude.Nothing}
instance ToResourceProperties TimestampProperty where
  toResourceProperties TimestampProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.Timestamp",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Value" JSON..= value]
                           (Prelude.catMaybes [(JSON..=) "Unit" Prelude.<$> unit]))}
instance JSON.ToJSON TimestampProperty where
  toJSON TimestampProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Value" JSON..= value]
              (Prelude.catMaybes [(JSON..=) "Unit" Prelude.<$> unit])))
instance Property "Unit" TimestampProperty where
  type PropertyType "Unit" TimestampProperty = Value Prelude.Text
  set newValue TimestampProperty {..}
    = TimestampProperty {unit = Prelude.pure newValue, ..}
instance Property "Value" TimestampProperty where
  type PropertyType "Value" TimestampProperty = Value Prelude.Text
  set newValue TimestampProperty {..}
    = TimestampProperty {value = newValue, ..}