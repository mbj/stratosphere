module Stratosphere.IoT.TopicRule.TimestreamTimestampProperty (
        TimestreamTimestampProperty(..), mkTimestreamTimestampProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimestreamTimestampProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-timestreamtimestamp.html>
    TimestreamTimestampProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-timestreamtimestamp.html#cfn-iot-topicrule-timestreamtimestamp-unit>
                                 unit :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-timestreamtimestamp.html#cfn-iot-topicrule-timestreamtimestamp-value>
                                 value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimestreamTimestampProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TimestreamTimestampProperty
mkTimestreamTimestampProperty unit value
  = TimestreamTimestampProperty
      {haddock_workaround_ = (), unit = unit, value = value}
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