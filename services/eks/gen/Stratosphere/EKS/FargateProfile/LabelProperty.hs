module Stratosphere.EKS.FargateProfile.LabelProperty (
        LabelProperty(..), mkLabelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LabelProperty
  = LabelProperty {key :: (Value Prelude.Text),
                   value :: (Value Prelude.Text)}
mkLabelProperty ::
  Value Prelude.Text -> Value Prelude.Text -> LabelProperty
mkLabelProperty key value
  = LabelProperty {key = key, value = value}
instance ToResourceProperties LabelProperty where
  toResourceProperties LabelProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::FargateProfile.Label",
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON LabelProperty where
  toJSON LabelProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" LabelProperty where
  type PropertyType "Key" LabelProperty = Value Prelude.Text
  set newValue LabelProperty {..}
    = LabelProperty {key = newValue, ..}
instance Property "Value" LabelProperty where
  type PropertyType "Value" LabelProperty = Value Prelude.Text
  set newValue LabelProperty {..}
    = LabelProperty {value = newValue, ..}