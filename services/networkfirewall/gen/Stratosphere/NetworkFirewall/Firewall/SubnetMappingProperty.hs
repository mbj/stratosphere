module Stratosphere.NetworkFirewall.Firewall.SubnetMappingProperty (
        SubnetMappingProperty(..), mkSubnetMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubnetMappingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewall-subnetmapping.html>
    SubnetMappingProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewall-subnetmapping.html#cfn-networkfirewall-firewall-subnetmapping-ipaddresstype>
                           iPAddressType :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewall-subnetmapping.html#cfn-networkfirewall-firewall-subnetmapping-subnetid>
                           subnetId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubnetMappingProperty ::
  Value Prelude.Text -> SubnetMappingProperty
mkSubnetMappingProperty subnetId
  = SubnetMappingProperty
      {haddock_workaround_ = (), subnetId = subnetId,
       iPAddressType = Prelude.Nothing}
instance ToResourceProperties SubnetMappingProperty where
  toResourceProperties SubnetMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::Firewall.SubnetMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SubnetId" JSON..= subnetId]
                           (Prelude.catMaybes
                              [(JSON..=) "IPAddressType" Prelude.<$> iPAddressType]))}
instance JSON.ToJSON SubnetMappingProperty where
  toJSON SubnetMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SubnetId" JSON..= subnetId]
              (Prelude.catMaybes
                 [(JSON..=) "IPAddressType" Prelude.<$> iPAddressType])))
instance Property "IPAddressType" SubnetMappingProperty where
  type PropertyType "IPAddressType" SubnetMappingProperty = Value Prelude.Text
  set newValue SubnetMappingProperty {..}
    = SubnetMappingProperty {iPAddressType = Prelude.pure newValue, ..}
instance Property "SubnetId" SubnetMappingProperty where
  type PropertyType "SubnetId" SubnetMappingProperty = Value Prelude.Text
  set newValue SubnetMappingProperty {..}
    = SubnetMappingProperty {subnetId = newValue, ..}