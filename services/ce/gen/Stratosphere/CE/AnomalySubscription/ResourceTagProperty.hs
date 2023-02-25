module Stratosphere.CE.AnomalySubscription.ResourceTagProperty (
        ResourceTagProperty(..), mkResourceTagProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResourceTagProperty
  = ResourceTagProperty {key :: (Value Prelude.Text),
                         value :: (Value Prelude.Text)}
mkResourceTagProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ResourceTagProperty
mkResourceTagProperty key value
  = ResourceTagProperty {key = key, value = value}
instance ToResourceProperties ResourceTagProperty where
  toResourceProperties ResourceTagProperty {..}
    = ResourceProperties
        {awsType = "AWS::CE::AnomalySubscription.ResourceTag",
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON ResourceTagProperty where
  toJSON ResourceTagProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" ResourceTagProperty where
  type PropertyType "Key" ResourceTagProperty = Value Prelude.Text
  set newValue ResourceTagProperty {..}
    = ResourceTagProperty {key = newValue, ..}
instance Property "Value" ResourceTagProperty where
  type PropertyType "Value" ResourceTagProperty = Value Prelude.Text
  set newValue ResourceTagProperty {..}
    = ResourceTagProperty {value = newValue, ..}