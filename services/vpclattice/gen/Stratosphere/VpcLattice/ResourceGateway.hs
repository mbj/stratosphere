module Stratosphere.VpcLattice.ResourceGateway (
        ResourceGateway(..), mkResourceGateway
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ResourceGateway
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-resourcegateway.html>
    ResourceGateway {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-resourcegateway.html#cfn-vpclattice-resourcegateway-ipaddresstype>
                     ipAddressType :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-resourcegateway.html#cfn-vpclattice-resourcegateway-ipv4addressespereni>
                     ipv4AddressesPerEni :: (Prelude.Maybe (Value Prelude.Integer)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-resourcegateway.html#cfn-vpclattice-resourcegateway-name>
                     name :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-resourcegateway.html#cfn-vpclattice-resourcegateway-securitygroupids>
                     securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-resourcegateway.html#cfn-vpclattice-resourcegateway-subnetids>
                     subnetIds :: (ValueList Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-resourcegateway.html#cfn-vpclattice-resourcegateway-tags>
                     tags :: (Prelude.Maybe [Tag]),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-resourcegateway.html#cfn-vpclattice-resourcegateway-vpcidentifier>
                     vpcIdentifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResourceGateway ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> Value Prelude.Text -> ResourceGateway
mkResourceGateway name subnetIds vpcIdentifier
  = ResourceGateway
      {haddock_workaround_ = (), name = name, subnetIds = subnetIds,
       vpcIdentifier = vpcIdentifier, ipAddressType = Prelude.Nothing,
       ipv4AddressesPerEni = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ResourceGateway where
  toResourceProperties ResourceGateway {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::ResourceGateway",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "SubnetIds" JSON..= subnetIds,
                            "VpcIdentifier" JSON..= vpcIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
                               (JSON..=) "Ipv4AddressesPerEni" Prelude.<$> ipv4AddressesPerEni,
                               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ResourceGateway where
  toJSON ResourceGateway {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "SubnetIds" JSON..= subnetIds,
               "VpcIdentifier" JSON..= vpcIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
                  (JSON..=) "Ipv4AddressesPerEni" Prelude.<$> ipv4AddressesPerEni,
                  (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "IpAddressType" ResourceGateway where
  type PropertyType "IpAddressType" ResourceGateway = Value Prelude.Text
  set newValue ResourceGateway {..}
    = ResourceGateway {ipAddressType = Prelude.pure newValue, ..}
instance Property "Ipv4AddressesPerEni" ResourceGateway where
  type PropertyType "Ipv4AddressesPerEni" ResourceGateway = Value Prelude.Integer
  set newValue ResourceGateway {..}
    = ResourceGateway {ipv4AddressesPerEni = Prelude.pure newValue, ..}
instance Property "Name" ResourceGateway where
  type PropertyType "Name" ResourceGateway = Value Prelude.Text
  set newValue ResourceGateway {..}
    = ResourceGateway {name = newValue, ..}
instance Property "SecurityGroupIds" ResourceGateway where
  type PropertyType "SecurityGroupIds" ResourceGateway = ValueList Prelude.Text
  set newValue ResourceGateway {..}
    = ResourceGateway {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SubnetIds" ResourceGateway where
  type PropertyType "SubnetIds" ResourceGateway = ValueList Prelude.Text
  set newValue ResourceGateway {..}
    = ResourceGateway {subnetIds = newValue, ..}
instance Property "Tags" ResourceGateway where
  type PropertyType "Tags" ResourceGateway = [Tag]
  set newValue ResourceGateway {..}
    = ResourceGateway {tags = Prelude.pure newValue, ..}
instance Property "VpcIdentifier" ResourceGateway where
  type PropertyType "VpcIdentifier" ResourceGateway = Value Prelude.Text
  set newValue ResourceGateway {..}
    = ResourceGateway {vpcIdentifier = newValue, ..}