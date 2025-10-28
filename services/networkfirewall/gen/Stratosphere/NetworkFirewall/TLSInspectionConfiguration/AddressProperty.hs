module Stratosphere.NetworkFirewall.TLSInspectionConfiguration.AddressProperty (
        AddressProperty(..), mkAddressProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AddressProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-tlsinspectionconfiguration-address.html>
    AddressProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-tlsinspectionconfiguration-address.html#cfn-networkfirewall-tlsinspectionconfiguration-address-addressdefinition>
                     addressDefinition :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAddressProperty :: Value Prelude.Text -> AddressProperty
mkAddressProperty addressDefinition
  = AddressProperty
      {haddock_workaround_ = (), addressDefinition = addressDefinition}
instance ToResourceProperties AddressProperty where
  toResourceProperties AddressProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::TLSInspectionConfiguration.Address",
         supportsTags = Prelude.False,
         properties = ["AddressDefinition" JSON..= addressDefinition]}
instance JSON.ToJSON AddressProperty where
  toJSON AddressProperty {..}
    = JSON.object ["AddressDefinition" JSON..= addressDefinition]
instance Property "AddressDefinition" AddressProperty where
  type PropertyType "AddressDefinition" AddressProperty = Value Prelude.Text
  set newValue AddressProperty {..}
    = AddressProperty {addressDefinition = newValue, ..}