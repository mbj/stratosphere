module Stratosphere.ServiceCatalog.CloudFormationProvisionedProduct.ProvisioningParameterProperty (
        ProvisioningParameterProperty(..), mkProvisioningParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ProvisioningParameterProperty
  = ProvisioningParameterProperty {key :: (Value Prelude.Text),
                                   value :: (Value Prelude.Text)}
mkProvisioningParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ProvisioningParameterProperty
mkProvisioningParameterProperty key value
  = ProvisioningParameterProperty {key = key, value = value}
instance ToResourceProperties ProvisioningParameterProperty where
  toResourceProperties ProvisioningParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ServiceCatalog::CloudFormationProvisionedProduct.ProvisioningParameter",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON ProvisioningParameterProperty where
  toJSON ProvisioningParameterProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" ProvisioningParameterProperty where
  type PropertyType "Key" ProvisioningParameterProperty = Value Prelude.Text
  set newValue ProvisioningParameterProperty {..}
    = ProvisioningParameterProperty {key = newValue, ..}
instance Property "Value" ProvisioningParameterProperty where
  type PropertyType "Value" ProvisioningParameterProperty = Value Prelude.Text
  set newValue ProvisioningParameterProperty {..}
    = ProvisioningParameterProperty {value = newValue, ..}