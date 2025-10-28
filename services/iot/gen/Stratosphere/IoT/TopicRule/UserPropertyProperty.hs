module Stratosphere.IoT.TopicRule.UserPropertyProperty (
        UserPropertyProperty(..), mkUserPropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPropertyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-userproperty.html>
    UserPropertyProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-userproperty.html#cfn-iot-topicrule-userproperty-key>
                          key :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-userproperty.html#cfn-iot-topicrule-userproperty-value>
                          value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUserPropertyProperty ::
  Value Prelude.Text -> Value Prelude.Text -> UserPropertyProperty
mkUserPropertyProperty key value
  = UserPropertyProperty
      {haddock_workaround_ = (), key = key, value = value}
instance ToResourceProperties UserPropertyProperty where
  toResourceProperties UserPropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.UserProperty",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON UserPropertyProperty where
  toJSON UserPropertyProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" UserPropertyProperty where
  type PropertyType "Key" UserPropertyProperty = Value Prelude.Text
  set newValue UserPropertyProperty {..}
    = UserPropertyProperty {key = newValue, ..}
instance Property "Value" UserPropertyProperty where
  type PropertyType "Value" UserPropertyProperty = Value Prelude.Text
  set newValue UserPropertyProperty {..}
    = UserPropertyProperty {value = newValue, ..}