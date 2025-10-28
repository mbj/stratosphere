module Stratosphere.EC2.NetworkInterfaceAttachment (
        module Exports, NetworkInterfaceAttachment(..),
        mkNetworkInterfaceAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.NetworkInterfaceAttachment.EnaSrdSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkInterfaceAttachment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfaceattachment.html>
    NetworkInterfaceAttachment {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfaceattachment.html#cfn-ec2-networkinterfaceattachment-deleteontermination>
                                deleteOnTermination :: (Prelude.Maybe (Value Prelude.Bool)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfaceattachment.html#cfn-ec2-networkinterfaceattachment-deviceindex>
                                deviceIndex :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfaceattachment.html#cfn-ec2-networkinterfaceattachment-enasrdspecification>
                                enaSrdSpecification :: (Prelude.Maybe EnaSrdSpecificationProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfaceattachment.html#cfn-ec2-networkinterfaceattachment-instanceid>
                                instanceId :: (Value Prelude.Text),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterfaceattachment.html#cfn-ec2-networkinterfaceattachment-networkinterfaceid>
                                networkInterfaceId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkInterfaceAttachment ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> NetworkInterfaceAttachment
mkNetworkInterfaceAttachment
  deviceIndex
  instanceId
  networkInterfaceId
  = NetworkInterfaceAttachment
      {haddock_workaround_ = (), deviceIndex = deviceIndex,
       instanceId = instanceId, networkInterfaceId = networkInterfaceId,
       deleteOnTermination = Prelude.Nothing,
       enaSrdSpecification = Prelude.Nothing}
instance ToResourceProperties NetworkInterfaceAttachment where
  toResourceProperties NetworkInterfaceAttachment {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInterfaceAttachment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DeviceIndex" JSON..= deviceIndex,
                            "InstanceId" JSON..= instanceId,
                            "NetworkInterfaceId" JSON..= networkInterfaceId]
                           (Prelude.catMaybes
                              [(JSON..=) "DeleteOnTermination" Prelude.<$> deleteOnTermination,
                               (JSON..=) "EnaSrdSpecification" Prelude.<$> enaSrdSpecification]))}
instance JSON.ToJSON NetworkInterfaceAttachment where
  toJSON NetworkInterfaceAttachment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DeviceIndex" JSON..= deviceIndex,
               "InstanceId" JSON..= instanceId,
               "NetworkInterfaceId" JSON..= networkInterfaceId]
              (Prelude.catMaybes
                 [(JSON..=) "DeleteOnTermination" Prelude.<$> deleteOnTermination,
                  (JSON..=) "EnaSrdSpecification" Prelude.<$> enaSrdSpecification])))
instance Property "DeleteOnTermination" NetworkInterfaceAttachment where
  type PropertyType "DeleteOnTermination" NetworkInterfaceAttachment = Value Prelude.Bool
  set newValue NetworkInterfaceAttachment {..}
    = NetworkInterfaceAttachment
        {deleteOnTermination = Prelude.pure newValue, ..}
instance Property "DeviceIndex" NetworkInterfaceAttachment where
  type PropertyType "DeviceIndex" NetworkInterfaceAttachment = Value Prelude.Text
  set newValue NetworkInterfaceAttachment {..}
    = NetworkInterfaceAttachment {deviceIndex = newValue, ..}
instance Property "EnaSrdSpecification" NetworkInterfaceAttachment where
  type PropertyType "EnaSrdSpecification" NetworkInterfaceAttachment = EnaSrdSpecificationProperty
  set newValue NetworkInterfaceAttachment {..}
    = NetworkInterfaceAttachment
        {enaSrdSpecification = Prelude.pure newValue, ..}
instance Property "InstanceId" NetworkInterfaceAttachment where
  type PropertyType "InstanceId" NetworkInterfaceAttachment = Value Prelude.Text
  set newValue NetworkInterfaceAttachment {..}
    = NetworkInterfaceAttachment {instanceId = newValue, ..}
instance Property "NetworkInterfaceId" NetworkInterfaceAttachment where
  type PropertyType "NetworkInterfaceId" NetworkInterfaceAttachment = Value Prelude.Text
  set newValue NetworkInterfaceAttachment {..}
    = NetworkInterfaceAttachment {networkInterfaceId = newValue, ..}