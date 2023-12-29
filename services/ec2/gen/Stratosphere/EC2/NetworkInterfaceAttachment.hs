module Stratosphere.EC2.NetworkInterfaceAttachment (
        NetworkInterfaceAttachment(..), mkNetworkInterfaceAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkInterfaceAttachment
  = NetworkInterfaceAttachment {deleteOnTermination :: (Prelude.Maybe (Value Prelude.Bool)),
                                deviceIndex :: (Value Prelude.Text),
                                instanceId :: (Value Prelude.Text),
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
      {deviceIndex = deviceIndex, instanceId = instanceId,
       networkInterfaceId = networkInterfaceId,
       deleteOnTermination = Prelude.Nothing}
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
                              [(JSON..=) "DeleteOnTermination"
                                 Prelude.<$> deleteOnTermination]))}
instance JSON.ToJSON NetworkInterfaceAttachment where
  toJSON NetworkInterfaceAttachment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DeviceIndex" JSON..= deviceIndex,
               "InstanceId" JSON..= instanceId,
               "NetworkInterfaceId" JSON..= networkInterfaceId]
              (Prelude.catMaybes
                 [(JSON..=) "DeleteOnTermination"
                    Prelude.<$> deleteOnTermination])))
instance Property "DeleteOnTermination" NetworkInterfaceAttachment where
  type PropertyType "DeleteOnTermination" NetworkInterfaceAttachment = Value Prelude.Bool
  set newValue NetworkInterfaceAttachment {..}
    = NetworkInterfaceAttachment
        {deleteOnTermination = Prelude.pure newValue, ..}
instance Property "DeviceIndex" NetworkInterfaceAttachment where
  type PropertyType "DeviceIndex" NetworkInterfaceAttachment = Value Prelude.Text
  set newValue NetworkInterfaceAttachment {..}
    = NetworkInterfaceAttachment {deviceIndex = newValue, ..}
instance Property "InstanceId" NetworkInterfaceAttachment where
  type PropertyType "InstanceId" NetworkInterfaceAttachment = Value Prelude.Text
  set newValue NetworkInterfaceAttachment {..}
    = NetworkInterfaceAttachment {instanceId = newValue, ..}
instance Property "NetworkInterfaceId" NetworkInterfaceAttachment where
  type PropertyType "NetworkInterfaceId" NetworkInterfaceAttachment = Value Prelude.Text
  set newValue NetworkInterfaceAttachment {..}
    = NetworkInterfaceAttachment {networkInterfaceId = newValue, ..}