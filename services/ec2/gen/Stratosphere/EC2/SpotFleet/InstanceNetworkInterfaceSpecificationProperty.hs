module Stratosphere.EC2.SpotFleet.InstanceNetworkInterfaceSpecificationProperty (
        module Exports, InstanceNetworkInterfaceSpecificationProperty(..),
        mkInstanceNetworkInterfaceSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.InstanceIpv6AddressProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.PrivateIpAddressSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceNetworkInterfaceSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancenetworkinterfacespecification.html>
    InstanceNetworkInterfaceSpecificationProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancenetworkinterfacespecification.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-associatepublicipaddress>
                                                   associatePublicIpAddress :: (Prelude.Maybe (Value Prelude.Bool)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancenetworkinterfacespecification.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-deleteontermination>
                                                   deleteOnTermination :: (Prelude.Maybe (Value Prelude.Bool)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancenetworkinterfacespecification.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-description>
                                                   description :: (Prelude.Maybe (Value Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancenetworkinterfacespecification.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-deviceindex>
                                                   deviceIndex :: (Prelude.Maybe (Value Prelude.Integer)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancenetworkinterfacespecification.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-groups>
                                                   groups :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancenetworkinterfacespecification.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-ipv6addresscount>
                                                   ipv6AddressCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancenetworkinterfacespecification.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-ipv6addresses>
                                                   ipv6Addresses :: (Prelude.Maybe [InstanceIpv6AddressProperty]),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancenetworkinterfacespecification.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-networkinterfaceid>
                                                   networkInterfaceId :: (Prelude.Maybe (Value Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancenetworkinterfacespecification.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-privateipaddresses>
                                                   privateIpAddresses :: (Prelude.Maybe [PrivateIpAddressSpecificationProperty]),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancenetworkinterfacespecification.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-secondaryprivateipaddresscount>
                                                   secondaryPrivateIpAddressCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instancenetworkinterfacespecification.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-subnetid>
                                                   subnetId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceNetworkInterfaceSpecificationProperty ::
  InstanceNetworkInterfaceSpecificationProperty
mkInstanceNetworkInterfaceSpecificationProperty
  = InstanceNetworkInterfaceSpecificationProperty
      {haddock_workaround_ = (),
       associatePublicIpAddress = Prelude.Nothing,
       deleteOnTermination = Prelude.Nothing,
       description = Prelude.Nothing, deviceIndex = Prelude.Nothing,
       groups = Prelude.Nothing, ipv6AddressCount = Prelude.Nothing,
       ipv6Addresses = Prelude.Nothing,
       networkInterfaceId = Prelude.Nothing,
       privateIpAddresses = Prelude.Nothing,
       secondaryPrivateIpAddressCount = Prelude.Nothing,
       subnetId = Prelude.Nothing}
instance ToResourceProperties InstanceNetworkInterfaceSpecificationProperty where
  toResourceProperties
    InstanceNetworkInterfaceSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.InstanceNetworkInterfaceSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AssociatePublicIpAddress"
                              Prelude.<$> associatePublicIpAddress,
                            (JSON..=) "DeleteOnTermination" Prelude.<$> deleteOnTermination,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "DeviceIndex" Prelude.<$> deviceIndex,
                            (JSON..=) "Groups" Prelude.<$> groups,
                            (JSON..=) "Ipv6AddressCount" Prelude.<$> ipv6AddressCount,
                            (JSON..=) "Ipv6Addresses" Prelude.<$> ipv6Addresses,
                            (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
                            (JSON..=) "PrivateIpAddresses" Prelude.<$> privateIpAddresses,
                            (JSON..=) "SecondaryPrivateIpAddressCount"
                              Prelude.<$> secondaryPrivateIpAddressCount,
                            (JSON..=) "SubnetId" Prelude.<$> subnetId])}
instance JSON.ToJSON InstanceNetworkInterfaceSpecificationProperty where
  toJSON InstanceNetworkInterfaceSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AssociatePublicIpAddress"
                 Prelude.<$> associatePublicIpAddress,
               (JSON..=) "DeleteOnTermination" Prelude.<$> deleteOnTermination,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "DeviceIndex" Prelude.<$> deviceIndex,
               (JSON..=) "Groups" Prelude.<$> groups,
               (JSON..=) "Ipv6AddressCount" Prelude.<$> ipv6AddressCount,
               (JSON..=) "Ipv6Addresses" Prelude.<$> ipv6Addresses,
               (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
               (JSON..=) "PrivateIpAddresses" Prelude.<$> privateIpAddresses,
               (JSON..=) "SecondaryPrivateIpAddressCount"
                 Prelude.<$> secondaryPrivateIpAddressCount,
               (JSON..=) "SubnetId" Prelude.<$> subnetId]))
instance Property "AssociatePublicIpAddress" InstanceNetworkInterfaceSpecificationProperty where
  type PropertyType "AssociatePublicIpAddress" InstanceNetworkInterfaceSpecificationProperty = Value Prelude.Bool
  set newValue InstanceNetworkInterfaceSpecificationProperty {..}
    = InstanceNetworkInterfaceSpecificationProperty
        {associatePublicIpAddress = Prelude.pure newValue, ..}
instance Property "DeleteOnTermination" InstanceNetworkInterfaceSpecificationProperty where
  type PropertyType "DeleteOnTermination" InstanceNetworkInterfaceSpecificationProperty = Value Prelude.Bool
  set newValue InstanceNetworkInterfaceSpecificationProperty {..}
    = InstanceNetworkInterfaceSpecificationProperty
        {deleteOnTermination = Prelude.pure newValue, ..}
instance Property "Description" InstanceNetworkInterfaceSpecificationProperty where
  type PropertyType "Description" InstanceNetworkInterfaceSpecificationProperty = Value Prelude.Text
  set newValue InstanceNetworkInterfaceSpecificationProperty {..}
    = InstanceNetworkInterfaceSpecificationProperty
        {description = Prelude.pure newValue, ..}
instance Property "DeviceIndex" InstanceNetworkInterfaceSpecificationProperty where
  type PropertyType "DeviceIndex" InstanceNetworkInterfaceSpecificationProperty = Value Prelude.Integer
  set newValue InstanceNetworkInterfaceSpecificationProperty {..}
    = InstanceNetworkInterfaceSpecificationProperty
        {deviceIndex = Prelude.pure newValue, ..}
instance Property "Groups" InstanceNetworkInterfaceSpecificationProperty where
  type PropertyType "Groups" InstanceNetworkInterfaceSpecificationProperty = ValueList Prelude.Text
  set newValue InstanceNetworkInterfaceSpecificationProperty {..}
    = InstanceNetworkInterfaceSpecificationProperty
        {groups = Prelude.pure newValue, ..}
instance Property "Ipv6AddressCount" InstanceNetworkInterfaceSpecificationProperty where
  type PropertyType "Ipv6AddressCount" InstanceNetworkInterfaceSpecificationProperty = Value Prelude.Integer
  set newValue InstanceNetworkInterfaceSpecificationProperty {..}
    = InstanceNetworkInterfaceSpecificationProperty
        {ipv6AddressCount = Prelude.pure newValue, ..}
instance Property "Ipv6Addresses" InstanceNetworkInterfaceSpecificationProperty where
  type PropertyType "Ipv6Addresses" InstanceNetworkInterfaceSpecificationProperty = [InstanceIpv6AddressProperty]
  set newValue InstanceNetworkInterfaceSpecificationProperty {..}
    = InstanceNetworkInterfaceSpecificationProperty
        {ipv6Addresses = Prelude.pure newValue, ..}
instance Property "NetworkInterfaceId" InstanceNetworkInterfaceSpecificationProperty where
  type PropertyType "NetworkInterfaceId" InstanceNetworkInterfaceSpecificationProperty = Value Prelude.Text
  set newValue InstanceNetworkInterfaceSpecificationProperty {..}
    = InstanceNetworkInterfaceSpecificationProperty
        {networkInterfaceId = Prelude.pure newValue, ..}
instance Property "PrivateIpAddresses" InstanceNetworkInterfaceSpecificationProperty where
  type PropertyType "PrivateIpAddresses" InstanceNetworkInterfaceSpecificationProperty = [PrivateIpAddressSpecificationProperty]
  set newValue InstanceNetworkInterfaceSpecificationProperty {..}
    = InstanceNetworkInterfaceSpecificationProperty
        {privateIpAddresses = Prelude.pure newValue, ..}
instance Property "SecondaryPrivateIpAddressCount" InstanceNetworkInterfaceSpecificationProperty where
  type PropertyType "SecondaryPrivateIpAddressCount" InstanceNetworkInterfaceSpecificationProperty = Value Prelude.Integer
  set newValue InstanceNetworkInterfaceSpecificationProperty {..}
    = InstanceNetworkInterfaceSpecificationProperty
        {secondaryPrivateIpAddressCount = Prelude.pure newValue, ..}
instance Property "SubnetId" InstanceNetworkInterfaceSpecificationProperty where
  type PropertyType "SubnetId" InstanceNetworkInterfaceSpecificationProperty = Value Prelude.Text
  set newValue InstanceNetworkInterfaceSpecificationProperty {..}
    = InstanceNetworkInterfaceSpecificationProperty
        {subnetId = Prelude.pure newValue, ..}