module Stratosphere.EFS.MountTarget (
        MountTarget(..), mkMountTarget
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MountTarget
  = MountTarget {fileSystemId :: (Value Prelude.Text),
                 ipAddress :: (Prelude.Maybe (Value Prelude.Text)),
                 securityGroups :: (ValueList (Value Prelude.Text)),
                 subnetId :: (Value Prelude.Text)}
mkMountTarget ::
  Value Prelude.Text
  -> ValueList (Value Prelude.Text)
     -> Value Prelude.Text -> MountTarget
mkMountTarget fileSystemId securityGroups subnetId
  = MountTarget
      {fileSystemId = fileSystemId, securityGroups = securityGroups,
       subnetId = subnetId, ipAddress = Prelude.Nothing}
instance ToResourceProperties MountTarget where
  toResourceProperties MountTarget {..}
    = ResourceProperties
        {awsType = "AWS::EFS::MountTarget",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FileSystemId" JSON..= fileSystemId,
                            "SecurityGroups" JSON..= securityGroups,
                            "SubnetId" JSON..= subnetId]
                           (Prelude.catMaybes [(JSON..=) "IpAddress" Prelude.<$> ipAddress]))}
instance JSON.ToJSON MountTarget where
  toJSON MountTarget {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FileSystemId" JSON..= fileSystemId,
               "SecurityGroups" JSON..= securityGroups,
               "SubnetId" JSON..= subnetId]
              (Prelude.catMaybes [(JSON..=) "IpAddress" Prelude.<$> ipAddress])))
instance Property "FileSystemId" MountTarget where
  type PropertyType "FileSystemId" MountTarget = Value Prelude.Text
  set newValue MountTarget {..}
    = MountTarget {fileSystemId = newValue, ..}
instance Property "IpAddress" MountTarget where
  type PropertyType "IpAddress" MountTarget = Value Prelude.Text
  set newValue MountTarget {..}
    = MountTarget {ipAddress = Prelude.pure newValue, ..}
instance Property "SecurityGroups" MountTarget where
  type PropertyType "SecurityGroups" MountTarget = ValueList (Value Prelude.Text)
  set newValue MountTarget {..}
    = MountTarget {securityGroups = newValue, ..}
instance Property "SubnetId" MountTarget where
  type PropertyType "SubnetId" MountTarget = Value Prelude.Text
  set newValue MountTarget {..}
    = MountTarget {subnetId = newValue, ..}