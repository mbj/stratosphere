module Stratosphere.EC2.EIPAssociation (
        EIPAssociation(..), mkEIPAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EIPAssociation
  = EIPAssociation {allocationId :: (Prelude.Maybe (Value Prelude.Text)),
                    instanceId :: (Prelude.Maybe (Value Prelude.Text)),
                    networkInterfaceId :: (Prelude.Maybe (Value Prelude.Text)),
                    privateIpAddress :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEIPAssociation :: EIPAssociation
mkEIPAssociation
  = EIPAssociation
      {allocationId = Prelude.Nothing, instanceId = Prelude.Nothing,
       networkInterfaceId = Prelude.Nothing,
       privateIpAddress = Prelude.Nothing}
instance ToResourceProperties EIPAssociation where
  toResourceProperties EIPAssociation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EIPAssociation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllocationId" Prelude.<$> allocationId,
                            (JSON..=) "InstanceId" Prelude.<$> instanceId,
                            (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
                            (JSON..=) "PrivateIpAddress" Prelude.<$> privateIpAddress])}
instance JSON.ToJSON EIPAssociation where
  toJSON EIPAssociation {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllocationId" Prelude.<$> allocationId,
               (JSON..=) "InstanceId" Prelude.<$> instanceId,
               (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
               (JSON..=) "PrivateIpAddress" Prelude.<$> privateIpAddress]))
instance Property "AllocationId" EIPAssociation where
  type PropertyType "AllocationId" EIPAssociation = Value Prelude.Text
  set newValue EIPAssociation {..}
    = EIPAssociation {allocationId = Prelude.pure newValue, ..}
instance Property "InstanceId" EIPAssociation where
  type PropertyType "InstanceId" EIPAssociation = Value Prelude.Text
  set newValue EIPAssociation {..}
    = EIPAssociation {instanceId = Prelude.pure newValue, ..}
instance Property "NetworkInterfaceId" EIPAssociation where
  type PropertyType "NetworkInterfaceId" EIPAssociation = Value Prelude.Text
  set newValue EIPAssociation {..}
    = EIPAssociation {networkInterfaceId = Prelude.pure newValue, ..}
instance Property "PrivateIpAddress" EIPAssociation where
  type PropertyType "PrivateIpAddress" EIPAssociation = Value Prelude.Text
  set newValue EIPAssociation {..}
    = EIPAssociation {privateIpAddress = Prelude.pure newValue, ..}