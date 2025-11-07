module Stratosphere.EC2.Host (
        Host(..), mkHost
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Host
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-host.html>
    Host {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-host.html#cfn-ec2-host-assetid>
          assetId :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-host.html#cfn-ec2-host-autoplacement>
          autoPlacement :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-host.html#cfn-ec2-host-availabilityzone>
          availabilityZone :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-host.html#cfn-ec2-host-hostmaintenance>
          hostMaintenance :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-host.html#cfn-ec2-host-hostrecovery>
          hostRecovery :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-host.html#cfn-ec2-host-instancefamily>
          instanceFamily :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-host.html#cfn-ec2-host-instancetype>
          instanceType :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-host.html#cfn-ec2-host-outpostarn>
          outpostArn :: (Prelude.Maybe (Value Prelude.Text)),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-host.html#cfn-ec2-host-tags>
          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHost :: Value Prelude.Text -> Host
mkHost availabilityZone
  = Host
      {haddock_workaround_ = (), availabilityZone = availabilityZone,
       assetId = Prelude.Nothing, autoPlacement = Prelude.Nothing,
       hostMaintenance = Prelude.Nothing, hostRecovery = Prelude.Nothing,
       instanceFamily = Prelude.Nothing, instanceType = Prelude.Nothing,
       outpostArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Host where
  toResourceProperties Host {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Host", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AvailabilityZone" JSON..= availabilityZone]
                           (Prelude.catMaybes
                              [(JSON..=) "AssetId" Prelude.<$> assetId,
                               (JSON..=) "AutoPlacement" Prelude.<$> autoPlacement,
                               (JSON..=) "HostMaintenance" Prelude.<$> hostMaintenance,
                               (JSON..=) "HostRecovery" Prelude.<$> hostRecovery,
                               (JSON..=) "InstanceFamily" Prelude.<$> instanceFamily,
                               (JSON..=) "InstanceType" Prelude.<$> instanceType,
                               (JSON..=) "OutpostArn" Prelude.<$> outpostArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Host where
  toJSON Host {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AvailabilityZone" JSON..= availabilityZone]
              (Prelude.catMaybes
                 [(JSON..=) "AssetId" Prelude.<$> assetId,
                  (JSON..=) "AutoPlacement" Prelude.<$> autoPlacement,
                  (JSON..=) "HostMaintenance" Prelude.<$> hostMaintenance,
                  (JSON..=) "HostRecovery" Prelude.<$> hostRecovery,
                  (JSON..=) "InstanceFamily" Prelude.<$> instanceFamily,
                  (JSON..=) "InstanceType" Prelude.<$> instanceType,
                  (JSON..=) "OutpostArn" Prelude.<$> outpostArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AssetId" Host where
  type PropertyType "AssetId" Host = Value Prelude.Text
  set newValue Host {..} = Host {assetId = Prelude.pure newValue, ..}
instance Property "AutoPlacement" Host where
  type PropertyType "AutoPlacement" Host = Value Prelude.Text
  set newValue Host {..}
    = Host {autoPlacement = Prelude.pure newValue, ..}
instance Property "AvailabilityZone" Host where
  type PropertyType "AvailabilityZone" Host = Value Prelude.Text
  set newValue Host {..} = Host {availabilityZone = newValue, ..}
instance Property "HostMaintenance" Host where
  type PropertyType "HostMaintenance" Host = Value Prelude.Text
  set newValue Host {..}
    = Host {hostMaintenance = Prelude.pure newValue, ..}
instance Property "HostRecovery" Host where
  type PropertyType "HostRecovery" Host = Value Prelude.Text
  set newValue Host {..}
    = Host {hostRecovery = Prelude.pure newValue, ..}
instance Property "InstanceFamily" Host where
  type PropertyType "InstanceFamily" Host = Value Prelude.Text
  set newValue Host {..}
    = Host {instanceFamily = Prelude.pure newValue, ..}
instance Property "InstanceType" Host where
  type PropertyType "InstanceType" Host = Value Prelude.Text
  set newValue Host {..}
    = Host {instanceType = Prelude.pure newValue, ..}
instance Property "OutpostArn" Host where
  type PropertyType "OutpostArn" Host = Value Prelude.Text
  set newValue Host {..}
    = Host {outpostArn = Prelude.pure newValue, ..}
instance Property "Tags" Host where
  type PropertyType "Tags" Host = [Tag]
  set newValue Host {..} = Host {tags = Prelude.pure newValue, ..}