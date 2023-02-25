module Stratosphere.ECS.TaskDefinition.MountPointProperty (
        MountPointProperty(..), mkMountPointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MountPointProperty
  = MountPointProperty {containerPath :: (Prelude.Maybe (Value Prelude.Text)),
                        readOnly :: (Prelude.Maybe (Value Prelude.Bool)),
                        sourceVolume :: (Prelude.Maybe (Value Prelude.Text))}
mkMountPointProperty :: MountPointProperty
mkMountPointProperty
  = MountPointProperty
      {containerPath = Prelude.Nothing, readOnly = Prelude.Nothing,
       sourceVolume = Prelude.Nothing}
instance ToResourceProperties MountPointProperty where
  toResourceProperties MountPointProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.MountPoint",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerPath" Prelude.<$> containerPath,
                            (JSON..=) "ReadOnly" Prelude.<$> readOnly,
                            (JSON..=) "SourceVolume" Prelude.<$> sourceVolume])}
instance JSON.ToJSON MountPointProperty where
  toJSON MountPointProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerPath" Prelude.<$> containerPath,
               (JSON..=) "ReadOnly" Prelude.<$> readOnly,
               (JSON..=) "SourceVolume" Prelude.<$> sourceVolume]))
instance Property "ContainerPath" MountPointProperty where
  type PropertyType "ContainerPath" MountPointProperty = Value Prelude.Text
  set newValue MountPointProperty {..}
    = MountPointProperty {containerPath = Prelude.pure newValue, ..}
instance Property "ReadOnly" MountPointProperty where
  type PropertyType "ReadOnly" MountPointProperty = Value Prelude.Bool
  set newValue MountPointProperty {..}
    = MountPointProperty {readOnly = Prelude.pure newValue, ..}
instance Property "SourceVolume" MountPointProperty where
  type PropertyType "SourceVolume" MountPointProperty = Value Prelude.Text
  set newValue MountPointProperty {..}
    = MountPointProperty {sourceVolume = Prelude.pure newValue, ..}