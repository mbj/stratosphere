module Stratosphere.EC2.Host (
        Host(..), mkHost
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Host
  = Host {autoPlacement :: (Prelude.Maybe (Value Prelude.Text)),
          availabilityZone :: (Value Prelude.Text),
          hostRecovery :: (Prelude.Maybe (Value Prelude.Text)),
          instanceFamily :: (Prelude.Maybe (Value Prelude.Text)),
          instanceType :: (Prelude.Maybe (Value Prelude.Text)),
          outpostArn :: (Prelude.Maybe (Value Prelude.Text))}
mkHost :: Value Prelude.Text -> Host
mkHost availabilityZone
  = Host
      {availabilityZone = availabilityZone,
       autoPlacement = Prelude.Nothing, hostRecovery = Prelude.Nothing,
       instanceFamily = Prelude.Nothing, instanceType = Prelude.Nothing,
       outpostArn = Prelude.Nothing}
instance ToResourceProperties Host where
  toResourceProperties Host {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Host",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AvailabilityZone" JSON..= availabilityZone]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoPlacement" Prelude.<$> autoPlacement,
                               (JSON..=) "HostRecovery" Prelude.<$> hostRecovery,
                               (JSON..=) "InstanceFamily" Prelude.<$> instanceFamily,
                               (JSON..=) "InstanceType" Prelude.<$> instanceType,
                               (JSON..=) "OutpostArn" Prelude.<$> outpostArn]))}
instance JSON.ToJSON Host where
  toJSON Host {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AvailabilityZone" JSON..= availabilityZone]
              (Prelude.catMaybes
                 [(JSON..=) "AutoPlacement" Prelude.<$> autoPlacement,
                  (JSON..=) "HostRecovery" Prelude.<$> hostRecovery,
                  (JSON..=) "InstanceFamily" Prelude.<$> instanceFamily,
                  (JSON..=) "InstanceType" Prelude.<$> instanceType,
                  (JSON..=) "OutpostArn" Prelude.<$> outpostArn])))
instance Property "AutoPlacement" Host where
  type PropertyType "AutoPlacement" Host = Value Prelude.Text
  set newValue Host {..}
    = Host {autoPlacement = Prelude.pure newValue, ..}
instance Property "AvailabilityZone" Host where
  type PropertyType "AvailabilityZone" Host = Value Prelude.Text
  set newValue Host {..} = Host {availabilityZone = newValue, ..}
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