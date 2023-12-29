module Stratosphere.NetworkFirewall.RuleGroup.AddressProperty (
        AddressProperty(..), mkAddressProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AddressProperty
  = AddressProperty {addressDefinition :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAddressProperty :: Value Prelude.Text -> AddressProperty
mkAddressProperty addressDefinition
  = AddressProperty {addressDefinition = addressDefinition}
instance ToResourceProperties AddressProperty where
  toResourceProperties AddressProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.Address",
         supportsTags = Prelude.False,
         properties = ["AddressDefinition" JSON..= addressDefinition]}
instance JSON.ToJSON AddressProperty where
  toJSON AddressProperty {..}
    = JSON.object ["AddressDefinition" JSON..= addressDefinition]
instance Property "AddressDefinition" AddressProperty where
  type PropertyType "AddressDefinition" AddressProperty = Value Prelude.Text
  set newValue AddressProperty {}
    = AddressProperty {addressDefinition = newValue, ..}