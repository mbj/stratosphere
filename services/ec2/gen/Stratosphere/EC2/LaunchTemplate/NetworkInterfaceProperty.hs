module Stratosphere.EC2.LaunchTemplate.NetworkInterfaceProperty (
        module Exports, NetworkInterfaceProperty(..),
        mkNetworkInterfaceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.ConnectionTrackingSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.EnaSrdSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.Ipv4PrefixSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.Ipv6AddProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.Ipv6PrefixSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.PrivateIpAddProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkInterfaceProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html>
    NetworkInterfaceProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-associatecarrieripaddress>
                              associateCarrierIpAddress :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-associatepublicipaddress>
                              associatePublicIpAddress :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-connectiontrackingspecification>
                              connectionTrackingSpecification :: (Prelude.Maybe ConnectionTrackingSpecificationProperty),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-deleteontermination>
                              deleteOnTermination :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-description>
                              description :: (Prelude.Maybe (Value Prelude.Text)),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-deviceindex>
                              deviceIndex :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-enasrdspecification>
                              enaSrdSpecification :: (Prelude.Maybe EnaSrdSpecificationProperty),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-groups>
                              groups :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-interfacetype>
                              interfaceType :: (Prelude.Maybe (Value Prelude.Text)),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-ipv4prefixcount>
                              ipv4PrefixCount :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-ipv4prefixes>
                              ipv4Prefixes :: (Prelude.Maybe [Ipv4PrefixSpecificationProperty]),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-ipv6addresscount>
                              ipv6AddressCount :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-ipv6addresses>
                              ipv6Addresses :: (Prelude.Maybe [Ipv6AddProperty]),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-ipv6prefixcount>
                              ipv6PrefixCount :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-ipv6prefixes>
                              ipv6Prefixes :: (Prelude.Maybe [Ipv6PrefixSpecificationProperty]),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-networkcardindex>
                              networkCardIndex :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-networkinterfaceid>
                              networkInterfaceId :: (Prelude.Maybe (Value Prelude.Text)),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-primaryipv6>
                              primaryIpv6 :: (Prelude.Maybe (Value Prelude.Bool)),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-privateipaddress>
                              privateIpAddress :: (Prelude.Maybe (Value Prelude.Text)),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-privateipaddresses>
                              privateIpAddresses :: (Prelude.Maybe [PrivateIpAddProperty]),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-secondaryprivateipaddresscount>
                              secondaryPrivateIpAddressCount :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-subnetid>
                              subnetId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkInterfaceProperty :: NetworkInterfaceProperty
mkNetworkInterfaceProperty
  = NetworkInterfaceProperty
      {associateCarrierIpAddress = Prelude.Nothing,
       associatePublicIpAddress = Prelude.Nothing,
       connectionTrackingSpecification = Prelude.Nothing,
       deleteOnTermination = Prelude.Nothing,
       description = Prelude.Nothing, deviceIndex = Prelude.Nothing,
       enaSrdSpecification = Prelude.Nothing, groups = Prelude.Nothing,
       interfaceType = Prelude.Nothing, ipv4PrefixCount = Prelude.Nothing,
       ipv4Prefixes = Prelude.Nothing, ipv6AddressCount = Prelude.Nothing,
       ipv6Addresses = Prelude.Nothing, ipv6PrefixCount = Prelude.Nothing,
       ipv6Prefixes = Prelude.Nothing, networkCardIndex = Prelude.Nothing,
       networkInterfaceId = Prelude.Nothing,
       primaryIpv6 = Prelude.Nothing, privateIpAddress = Prelude.Nothing,
       privateIpAddresses = Prelude.Nothing,
       secondaryPrivateIpAddressCount = Prelude.Nothing,
       subnetId = Prelude.Nothing}
instance ToResourceProperties NetworkInterfaceProperty where
  toResourceProperties NetworkInterfaceProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.NetworkInterface",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AssociateCarrierIpAddress"
                              Prelude.<$> associateCarrierIpAddress,
                            (JSON..=) "AssociatePublicIpAddress"
                              Prelude.<$> associatePublicIpAddress,
                            (JSON..=) "ConnectionTrackingSpecification"
                              Prelude.<$> connectionTrackingSpecification,
                            (JSON..=) "DeleteOnTermination" Prelude.<$> deleteOnTermination,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "DeviceIndex" Prelude.<$> deviceIndex,
                            (JSON..=) "EnaSrdSpecification" Prelude.<$> enaSrdSpecification,
                            (JSON..=) "Groups" Prelude.<$> groups,
                            (JSON..=) "InterfaceType" Prelude.<$> interfaceType,
                            (JSON..=) "Ipv4PrefixCount" Prelude.<$> ipv4PrefixCount,
                            (JSON..=) "Ipv4Prefixes" Prelude.<$> ipv4Prefixes,
                            (JSON..=) "Ipv6AddressCount" Prelude.<$> ipv6AddressCount,
                            (JSON..=) "Ipv6Addresses" Prelude.<$> ipv6Addresses,
                            (JSON..=) "Ipv6PrefixCount" Prelude.<$> ipv6PrefixCount,
                            (JSON..=) "Ipv6Prefixes" Prelude.<$> ipv6Prefixes,
                            (JSON..=) "NetworkCardIndex" Prelude.<$> networkCardIndex,
                            (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
                            (JSON..=) "PrimaryIpv6" Prelude.<$> primaryIpv6,
                            (JSON..=) "PrivateIpAddress" Prelude.<$> privateIpAddress,
                            (JSON..=) "PrivateIpAddresses" Prelude.<$> privateIpAddresses,
                            (JSON..=) "SecondaryPrivateIpAddressCount"
                              Prelude.<$> secondaryPrivateIpAddressCount,
                            (JSON..=) "SubnetId" Prelude.<$> subnetId])}
instance JSON.ToJSON NetworkInterfaceProperty where
  toJSON NetworkInterfaceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AssociateCarrierIpAddress"
                 Prelude.<$> associateCarrierIpAddress,
               (JSON..=) "AssociatePublicIpAddress"
                 Prelude.<$> associatePublicIpAddress,
               (JSON..=) "ConnectionTrackingSpecification"
                 Prelude.<$> connectionTrackingSpecification,
               (JSON..=) "DeleteOnTermination" Prelude.<$> deleteOnTermination,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "DeviceIndex" Prelude.<$> deviceIndex,
               (JSON..=) "EnaSrdSpecification" Prelude.<$> enaSrdSpecification,
               (JSON..=) "Groups" Prelude.<$> groups,
               (JSON..=) "InterfaceType" Prelude.<$> interfaceType,
               (JSON..=) "Ipv4PrefixCount" Prelude.<$> ipv4PrefixCount,
               (JSON..=) "Ipv4Prefixes" Prelude.<$> ipv4Prefixes,
               (JSON..=) "Ipv6AddressCount" Prelude.<$> ipv6AddressCount,
               (JSON..=) "Ipv6Addresses" Prelude.<$> ipv6Addresses,
               (JSON..=) "Ipv6PrefixCount" Prelude.<$> ipv6PrefixCount,
               (JSON..=) "Ipv6Prefixes" Prelude.<$> ipv6Prefixes,
               (JSON..=) "NetworkCardIndex" Prelude.<$> networkCardIndex,
               (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
               (JSON..=) "PrimaryIpv6" Prelude.<$> primaryIpv6,
               (JSON..=) "PrivateIpAddress" Prelude.<$> privateIpAddress,
               (JSON..=) "PrivateIpAddresses" Prelude.<$> privateIpAddresses,
               (JSON..=) "SecondaryPrivateIpAddressCount"
                 Prelude.<$> secondaryPrivateIpAddressCount,
               (JSON..=) "SubnetId" Prelude.<$> subnetId]))
instance Property "AssociateCarrierIpAddress" NetworkInterfaceProperty where
  type PropertyType "AssociateCarrierIpAddress" NetworkInterfaceProperty = Value Prelude.Bool
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {associateCarrierIpAddress = Prelude.pure newValue, ..}
instance Property "AssociatePublicIpAddress" NetworkInterfaceProperty where
  type PropertyType "AssociatePublicIpAddress" NetworkInterfaceProperty = Value Prelude.Bool
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {associatePublicIpAddress = Prelude.pure newValue, ..}
instance Property "ConnectionTrackingSpecification" NetworkInterfaceProperty where
  type PropertyType "ConnectionTrackingSpecification" NetworkInterfaceProperty = ConnectionTrackingSpecificationProperty
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {connectionTrackingSpecification = Prelude.pure newValue, ..}
instance Property "DeleteOnTermination" NetworkInterfaceProperty where
  type PropertyType "DeleteOnTermination" NetworkInterfaceProperty = Value Prelude.Bool
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {deleteOnTermination = Prelude.pure newValue, ..}
instance Property "Description" NetworkInterfaceProperty where
  type PropertyType "Description" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {description = Prelude.pure newValue, ..}
instance Property "DeviceIndex" NetworkInterfaceProperty where
  type PropertyType "DeviceIndex" NetworkInterfaceProperty = Value Prelude.Integer
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {deviceIndex = Prelude.pure newValue, ..}
instance Property "EnaSrdSpecification" NetworkInterfaceProperty where
  type PropertyType "EnaSrdSpecification" NetworkInterfaceProperty = EnaSrdSpecificationProperty
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {enaSrdSpecification = Prelude.pure newValue, ..}
instance Property "Groups" NetworkInterfaceProperty where
  type PropertyType "Groups" NetworkInterfaceProperty = ValueList Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty {groups = Prelude.pure newValue, ..}
instance Property "InterfaceType" NetworkInterfaceProperty where
  type PropertyType "InterfaceType" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {interfaceType = Prelude.pure newValue, ..}
instance Property "Ipv4PrefixCount" NetworkInterfaceProperty where
  type PropertyType "Ipv4PrefixCount" NetworkInterfaceProperty = Value Prelude.Integer
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {ipv4PrefixCount = Prelude.pure newValue, ..}
instance Property "Ipv4Prefixes" NetworkInterfaceProperty where
  type PropertyType "Ipv4Prefixes" NetworkInterfaceProperty = [Ipv4PrefixSpecificationProperty]
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {ipv4Prefixes = Prelude.pure newValue, ..}
instance Property "Ipv6AddressCount" NetworkInterfaceProperty where
  type PropertyType "Ipv6AddressCount" NetworkInterfaceProperty = Value Prelude.Integer
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {ipv6AddressCount = Prelude.pure newValue, ..}
instance Property "Ipv6Addresses" NetworkInterfaceProperty where
  type PropertyType "Ipv6Addresses" NetworkInterfaceProperty = [Ipv6AddProperty]
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {ipv6Addresses = Prelude.pure newValue, ..}
instance Property "Ipv6PrefixCount" NetworkInterfaceProperty where
  type PropertyType "Ipv6PrefixCount" NetworkInterfaceProperty = Value Prelude.Integer
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {ipv6PrefixCount = Prelude.pure newValue, ..}
instance Property "Ipv6Prefixes" NetworkInterfaceProperty where
  type PropertyType "Ipv6Prefixes" NetworkInterfaceProperty = [Ipv6PrefixSpecificationProperty]
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {ipv6Prefixes = Prelude.pure newValue, ..}
instance Property "NetworkCardIndex" NetworkInterfaceProperty where
  type PropertyType "NetworkCardIndex" NetworkInterfaceProperty = Value Prelude.Integer
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {networkCardIndex = Prelude.pure newValue, ..}
instance Property "NetworkInterfaceId" NetworkInterfaceProperty where
  type PropertyType "NetworkInterfaceId" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {networkInterfaceId = Prelude.pure newValue, ..}
instance Property "PrimaryIpv6" NetworkInterfaceProperty where
  type PropertyType "PrimaryIpv6" NetworkInterfaceProperty = Value Prelude.Bool
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {primaryIpv6 = Prelude.pure newValue, ..}
instance Property "PrivateIpAddress" NetworkInterfaceProperty where
  type PropertyType "PrivateIpAddress" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {privateIpAddress = Prelude.pure newValue, ..}
instance Property "PrivateIpAddresses" NetworkInterfaceProperty where
  type PropertyType "PrivateIpAddresses" NetworkInterfaceProperty = [PrivateIpAddProperty]
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {privateIpAddresses = Prelude.pure newValue, ..}
instance Property "SecondaryPrivateIpAddressCount" NetworkInterfaceProperty where
  type PropertyType "SecondaryPrivateIpAddressCount" NetworkInterfaceProperty = Value Prelude.Integer
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {secondaryPrivateIpAddressCount = Prelude.pure newValue, ..}
instance Property "SubnetId" NetworkInterfaceProperty where
  type PropertyType "SubnetId" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty {subnetId = Prelude.pure newValue, ..}