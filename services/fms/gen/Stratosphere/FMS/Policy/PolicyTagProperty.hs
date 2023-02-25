module Stratosphere.FMS.Policy.PolicyTagProperty (
        PolicyTagProperty(..), mkPolicyTagProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PolicyTagProperty
  = PolicyTagProperty {key :: (Value Prelude.Text),
                       value :: (Value Prelude.Text)}
mkPolicyTagProperty ::
  Value Prelude.Text -> Value Prelude.Text -> PolicyTagProperty
mkPolicyTagProperty key value
  = PolicyTagProperty {key = key, value = value}
instance ToResourceProperties PolicyTagProperty where
  toResourceProperties PolicyTagProperty {..}
    = ResourceProperties
        {awsType = "AWS::FMS::Policy.PolicyTag",
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON PolicyTagProperty where
  toJSON PolicyTagProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" PolicyTagProperty where
  type PropertyType "Key" PolicyTagProperty = Value Prelude.Text
  set newValue PolicyTagProperty {..}
    = PolicyTagProperty {key = newValue, ..}
instance Property "Value" PolicyTagProperty where
  type PropertyType "Value" PolicyTagProperty = Value Prelude.Text
  set newValue PolicyTagProperty {..}
    = PolicyTagProperty {value = newValue, ..}