module Stratosphere.Lightsail.Instance (
        module Exports, Instance(..), mkInstance
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lightsail.Instance.AddOnProperty as Exports
import {-# SOURCE #-} Stratosphere.Lightsail.Instance.HardwareProperty as Exports
import {-# SOURCE #-} Stratosphere.Lightsail.Instance.LocationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lightsail.Instance.NetworkingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lightsail.Instance.StateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Instance
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-instance.html>
    Instance {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-instance.html#cfn-lightsail-instance-addons>
              addOns :: (Prelude.Maybe [AddOnProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-instance.html#cfn-lightsail-instance-availabilityzone>
              availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-instance.html#cfn-lightsail-instance-blueprintid>
              blueprintId :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-instance.html#cfn-lightsail-instance-bundleid>
              bundleId :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-instance.html#cfn-lightsail-instance-hardware>
              hardware :: (Prelude.Maybe HardwareProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-instance.html#cfn-lightsail-instance-instancename>
              instanceName :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-instance.html#cfn-lightsail-instance-keypairname>
              keyPairName :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-instance.html#cfn-lightsail-instance-location>
              location :: (Prelude.Maybe LocationProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-instance.html#cfn-lightsail-instance-networking>
              networking :: (Prelude.Maybe NetworkingProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-instance.html#cfn-lightsail-instance-state>
              state :: (Prelude.Maybe StateProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-instance.html#cfn-lightsail-instance-tags>
              tags :: (Prelude.Maybe [Tag]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-instance.html#cfn-lightsail-instance-userdata>
              userData :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstance ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Instance
mkInstance blueprintId bundleId instanceName
  = Instance
      {haddock_workaround_ = (), blueprintId = blueprintId,
       bundleId = bundleId, instanceName = instanceName,
       addOns = Prelude.Nothing, availabilityZone = Prelude.Nothing,
       hardware = Prelude.Nothing, keyPairName = Prelude.Nothing,
       location = Prelude.Nothing, networking = Prelude.Nothing,
       state = Prelude.Nothing, tags = Prelude.Nothing,
       userData = Prelude.Nothing}
instance ToResourceProperties Instance where
  toResourceProperties Instance {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Instance", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BlueprintId" JSON..= blueprintId, "BundleId" JSON..= bundleId,
                            "InstanceName" JSON..= instanceName]
                           (Prelude.catMaybes
                              [(JSON..=) "AddOns" Prelude.<$> addOns,
                               (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                               (JSON..=) "Hardware" Prelude.<$> hardware,
                               (JSON..=) "KeyPairName" Prelude.<$> keyPairName,
                               (JSON..=) "Location" Prelude.<$> location,
                               (JSON..=) "Networking" Prelude.<$> networking,
                               (JSON..=) "State" Prelude.<$> state,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "UserData" Prelude.<$> userData]))}
instance JSON.ToJSON Instance where
  toJSON Instance {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BlueprintId" JSON..= blueprintId, "BundleId" JSON..= bundleId,
               "InstanceName" JSON..= instanceName]
              (Prelude.catMaybes
                 [(JSON..=) "AddOns" Prelude.<$> addOns,
                  (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                  (JSON..=) "Hardware" Prelude.<$> hardware,
                  (JSON..=) "KeyPairName" Prelude.<$> keyPairName,
                  (JSON..=) "Location" Prelude.<$> location,
                  (JSON..=) "Networking" Prelude.<$> networking,
                  (JSON..=) "State" Prelude.<$> state,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "UserData" Prelude.<$> userData])))
instance Property "AddOns" Instance where
  type PropertyType "AddOns" Instance = [AddOnProperty]
  set newValue Instance {..}
    = Instance {addOns = Prelude.pure newValue, ..}
instance Property "AvailabilityZone" Instance where
  type PropertyType "AvailabilityZone" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {availabilityZone = Prelude.pure newValue, ..}
instance Property "BlueprintId" Instance where
  type PropertyType "BlueprintId" Instance = Value Prelude.Text
  set newValue Instance {..} = Instance {blueprintId = newValue, ..}
instance Property "BundleId" Instance where
  type PropertyType "BundleId" Instance = Value Prelude.Text
  set newValue Instance {..} = Instance {bundleId = newValue, ..}
instance Property "Hardware" Instance where
  type PropertyType "Hardware" Instance = HardwareProperty
  set newValue Instance {..}
    = Instance {hardware = Prelude.pure newValue, ..}
instance Property "InstanceName" Instance where
  type PropertyType "InstanceName" Instance = Value Prelude.Text
  set newValue Instance {..} = Instance {instanceName = newValue, ..}
instance Property "KeyPairName" Instance where
  type PropertyType "KeyPairName" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {keyPairName = Prelude.pure newValue, ..}
instance Property "Location" Instance where
  type PropertyType "Location" Instance = LocationProperty
  set newValue Instance {..}
    = Instance {location = Prelude.pure newValue, ..}
instance Property "Networking" Instance where
  type PropertyType "Networking" Instance = NetworkingProperty
  set newValue Instance {..}
    = Instance {networking = Prelude.pure newValue, ..}
instance Property "State" Instance where
  type PropertyType "State" Instance = StateProperty
  set newValue Instance {..}
    = Instance {state = Prelude.pure newValue, ..}
instance Property "Tags" Instance where
  type PropertyType "Tags" Instance = [Tag]
  set newValue Instance {..}
    = Instance {tags = Prelude.pure newValue, ..}
instance Property "UserData" Instance where
  type PropertyType "UserData" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {userData = Prelude.pure newValue, ..}