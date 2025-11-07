module Stratosphere.EC2.NatGateway (
        NatGateway(..), mkNatGateway
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data NatGateway
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html>
    NatGateway {haddock_workaround_ :: (),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-allocationid>
                allocationId :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-connectivitytype>
                connectivityType :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-maxdraindurationseconds>
                maxDrainDurationSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-privateipaddress>
                privateIpAddress :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-secondaryallocationids>
                secondaryAllocationIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-secondaryprivateipaddresscount>
                secondaryPrivateIpAddressCount :: (Prelude.Maybe (Value Prelude.Integer)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-secondaryprivateipaddresses>
                secondaryPrivateIpAddresses :: (Prelude.Maybe (ValueList Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-subnetid>
                subnetId :: (Prelude.Maybe (Value Prelude.Text)),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-tags>
                tags :: (Prelude.Maybe [Tag]),
                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-natgateway.html#cfn-ec2-natgateway-vpcid>
                vpcId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNatGateway :: NatGateway
mkNatGateway
  = NatGateway
      {haddock_workaround_ = (), allocationId = Prelude.Nothing,
       connectivityType = Prelude.Nothing,
       maxDrainDurationSeconds = Prelude.Nothing,
       privateIpAddress = Prelude.Nothing,
       secondaryAllocationIds = Prelude.Nothing,
       secondaryPrivateIpAddressCount = Prelude.Nothing,
       secondaryPrivateIpAddresses = Prelude.Nothing,
       subnetId = Prelude.Nothing, tags = Prelude.Nothing,
       vpcId = Prelude.Nothing}
instance ToResourceProperties NatGateway where
  toResourceProperties NatGateway {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NatGateway", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllocationId" Prelude.<$> allocationId,
                            (JSON..=) "ConnectivityType" Prelude.<$> connectivityType,
                            (JSON..=) "MaxDrainDurationSeconds"
                              Prelude.<$> maxDrainDurationSeconds,
                            (JSON..=) "PrivateIpAddress" Prelude.<$> privateIpAddress,
                            (JSON..=) "SecondaryAllocationIds"
                              Prelude.<$> secondaryAllocationIds,
                            (JSON..=) "SecondaryPrivateIpAddressCount"
                              Prelude.<$> secondaryPrivateIpAddressCount,
                            (JSON..=) "SecondaryPrivateIpAddresses"
                              Prelude.<$> secondaryPrivateIpAddresses,
                            (JSON..=) "SubnetId" Prelude.<$> subnetId,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "VpcId" Prelude.<$> vpcId])}
instance JSON.ToJSON NatGateway where
  toJSON NatGateway {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllocationId" Prelude.<$> allocationId,
               (JSON..=) "ConnectivityType" Prelude.<$> connectivityType,
               (JSON..=) "MaxDrainDurationSeconds"
                 Prelude.<$> maxDrainDurationSeconds,
               (JSON..=) "PrivateIpAddress" Prelude.<$> privateIpAddress,
               (JSON..=) "SecondaryAllocationIds"
                 Prelude.<$> secondaryAllocationIds,
               (JSON..=) "SecondaryPrivateIpAddressCount"
                 Prelude.<$> secondaryPrivateIpAddressCount,
               (JSON..=) "SecondaryPrivateIpAddresses"
                 Prelude.<$> secondaryPrivateIpAddresses,
               (JSON..=) "SubnetId" Prelude.<$> subnetId,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "VpcId" Prelude.<$> vpcId]))
instance Property "AllocationId" NatGateway where
  type PropertyType "AllocationId" NatGateway = Value Prelude.Text
  set newValue NatGateway {..}
    = NatGateway {allocationId = Prelude.pure newValue, ..}
instance Property "ConnectivityType" NatGateway where
  type PropertyType "ConnectivityType" NatGateway = Value Prelude.Text
  set newValue NatGateway {..}
    = NatGateway {connectivityType = Prelude.pure newValue, ..}
instance Property "MaxDrainDurationSeconds" NatGateway where
  type PropertyType "MaxDrainDurationSeconds" NatGateway = Value Prelude.Integer
  set newValue NatGateway {..}
    = NatGateway {maxDrainDurationSeconds = Prelude.pure newValue, ..}
instance Property "PrivateIpAddress" NatGateway where
  type PropertyType "PrivateIpAddress" NatGateway = Value Prelude.Text
  set newValue NatGateway {..}
    = NatGateway {privateIpAddress = Prelude.pure newValue, ..}
instance Property "SecondaryAllocationIds" NatGateway where
  type PropertyType "SecondaryAllocationIds" NatGateway = ValueList Prelude.Text
  set newValue NatGateway {..}
    = NatGateway {secondaryAllocationIds = Prelude.pure newValue, ..}
instance Property "SecondaryPrivateIpAddressCount" NatGateway where
  type PropertyType "SecondaryPrivateIpAddressCount" NatGateway = Value Prelude.Integer
  set newValue NatGateway {..}
    = NatGateway
        {secondaryPrivateIpAddressCount = Prelude.pure newValue, ..}
instance Property "SecondaryPrivateIpAddresses" NatGateway where
  type PropertyType "SecondaryPrivateIpAddresses" NatGateway = ValueList Prelude.Text
  set newValue NatGateway {..}
    = NatGateway
        {secondaryPrivateIpAddresses = Prelude.pure newValue, ..}
instance Property "SubnetId" NatGateway where
  type PropertyType "SubnetId" NatGateway = Value Prelude.Text
  set newValue NatGateway {..}
    = NatGateway {subnetId = Prelude.pure newValue, ..}
instance Property "Tags" NatGateway where
  type PropertyType "Tags" NatGateway = [Tag]
  set newValue NatGateway {..}
    = NatGateway {tags = Prelude.pure newValue, ..}
instance Property "VpcId" NatGateway where
  type PropertyType "VpcId" NatGateway = Value Prelude.Text
  set newValue NatGateway {..}
    = NatGateway {vpcId = Prelude.pure newValue, ..}