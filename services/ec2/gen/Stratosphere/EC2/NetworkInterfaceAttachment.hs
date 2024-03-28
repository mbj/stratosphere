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
  = NetworkInterfaceAttachment {deleteOnTermination :: (Prelude.Maybe (Value Prelude.Bool)),
                                deviceIndex :: (Value Prelude.Text),
                                enaSrdSpecification :: (Prelude.Maybe EnaSrdSpecificationProperty),
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