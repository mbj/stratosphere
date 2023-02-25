module Stratosphere.Redshift.EndpointAccess.NetworkInterfaceProperty (
        NetworkInterfaceProperty(..), mkNetworkInterfaceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkInterfaceProperty
  = NetworkInterfaceProperty {availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
                              networkInterfaceId :: (Prelude.Maybe (Value Prelude.Text)),
                              privateIpAddress :: (Prelude.Maybe (Value Prelude.Text)),
                              subnetId :: (Prelude.Maybe (Value Prelude.Text))}
mkNetworkInterfaceProperty :: NetworkInterfaceProperty
mkNetworkInterfaceProperty
  = NetworkInterfaceProperty
      {availabilityZone = Prelude.Nothing,
       networkInterfaceId = Prelude.Nothing,
       privateIpAddress = Prelude.Nothing, subnetId = Prelude.Nothing}
instance ToResourceProperties NetworkInterfaceProperty where
  toResourceProperties NetworkInterfaceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::EndpointAccess.NetworkInterface",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                            (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
                            (JSON..=) "PrivateIpAddress" Prelude.<$> privateIpAddress,
                            (JSON..=) "SubnetId" Prelude.<$> subnetId])}
instance JSON.ToJSON NetworkInterfaceProperty where
  toJSON NetworkInterfaceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
               (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
               (JSON..=) "PrivateIpAddress" Prelude.<$> privateIpAddress,
               (JSON..=) "SubnetId" Prelude.<$> subnetId]))
instance Property "AvailabilityZone" NetworkInterfaceProperty where
  type PropertyType "AvailabilityZone" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {availabilityZone = Prelude.pure newValue, ..}
instance Property "NetworkInterfaceId" NetworkInterfaceProperty where
  type PropertyType "NetworkInterfaceId" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {networkInterfaceId = Prelude.pure newValue, ..}
instance Property "PrivateIpAddress" NetworkInterfaceProperty where
  type PropertyType "PrivateIpAddress" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {privateIpAddress = Prelude.pure newValue, ..}
instance Property "SubnetId" NetworkInterfaceProperty where
  type PropertyType "SubnetId" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty {subnetId = Prelude.pure newValue, ..}