module Stratosphere.IoT.TopicRule.UserPropertyProperty (
        UserPropertyProperty(..), mkUserPropertyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UserPropertyProperty
  = UserPropertyProperty {key :: (Value Prelude.Text),
                          value :: (Value Prelude.Text)}
mkUserPropertyProperty ::
  Value Prelude.Text -> Value Prelude.Text -> UserPropertyProperty
mkUserPropertyProperty key value
  = UserPropertyProperty {key = key, value = value}
instance ToResourceProperties UserPropertyProperty where
  toResourceProperties UserPropertyProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.UserProperty",
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