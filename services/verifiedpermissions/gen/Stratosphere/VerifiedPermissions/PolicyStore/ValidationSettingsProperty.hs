module Stratosphere.VerifiedPermissions.PolicyStore.ValidationSettingsProperty (
        ValidationSettingsProperty(..), mkValidationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ValidationSettingsProperty
  = ValidationSettingsProperty {mode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkValidationSettingsProperty ::
  Value Prelude.Text -> ValidationSettingsProperty
mkValidationSettingsProperty mode
  = ValidationSettingsProperty {mode = mode}
instance ToResourceProperties ValidationSettingsProperty where
  toResourceProperties ValidationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::VerifiedPermissions::PolicyStore.ValidationSettings",
         supportsTags = Prelude.False, properties = ["Mode" JSON..= mode]}
instance JSON.ToJSON ValidationSettingsProperty where
  toJSON ValidationSettingsProperty {..}
    = JSON.object ["Mode" JSON..= mode]
instance Property "Mode" ValidationSettingsProperty where
  type PropertyType "Mode" ValidationSettingsProperty = Value Prelude.Text
  set newValue ValidationSettingsProperty {}
    = ValidationSettingsProperty {mode = newValue, ..}