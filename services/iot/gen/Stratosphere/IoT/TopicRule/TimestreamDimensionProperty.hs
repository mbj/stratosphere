module Stratosphere.IoT.TopicRule.TimestreamDimensionProperty (
        TimestreamDimensionProperty(..), mkTimestreamDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimestreamDimensionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-timestreamdimension.html>
    TimestreamDimensionProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-timestreamdimension.html#cfn-iot-topicrule-timestreamdimension-name>
                                 name :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-timestreamdimension.html#cfn-iot-topicrule-timestreamdimension-value>
                                 value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimestreamDimensionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TimestreamDimensionProperty
mkTimestreamDimensionProperty name value
  = TimestreamDimensionProperty
      {haddock_workaround_ = (), name = name, value = value}
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