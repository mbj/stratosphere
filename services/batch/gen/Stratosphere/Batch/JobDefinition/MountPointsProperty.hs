module Stratosphere.Batch.JobDefinition.MountPointsProperty (
        MountPointsProperty(..), mkMountPointsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MountPointsProperty
  = MountPointsProperty {containerPath :: (Prelude.Maybe (Value Prelude.Text)),
                         readOnly :: (Prelude.Maybe (Value Prelude.Bool)),
                         sourceVolume :: (Prelude.Maybe (Value Prelude.Text))}
mkMountPointsProperty :: MountPointsProperty
mkMountPointsProperty
  = MountPointsProperty
      {containerPath = Prelude.Nothing, readOnly = Prelude.Nothing,
       sourceVolume = Prelude.Nothing}
instance ToResourceProperties MountPointsProperty where
  toResourceProperties MountPointsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.MountPoints",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerPath" Prelude.<$> containerPath,
                            (JSON..=) "ReadOnly" Prelude.<$> readOnly,
                            (JSON..=) "SourceVolume" Prelude.<$> sourceVolume])}
instance JSON.ToJSON MountPointsProperty where
  toJSON MountPointsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerPath" Prelude.<$> containerPath,
               (JSON..=) "ReadOnly" Prelude.<$> readOnly,
               (JSON..=) "SourceVolume" Prelude.<$> sourceVolume]))
instance Property "ContainerPath" MountPointsProperty where
  type PropertyType "ContainerPath" MountPointsProperty = Value Prelude.Text
  set newValue MountPointsProperty {..}
    = MountPointsProperty {containerPath = Prelude.pure newValue, ..}
instance Property "ReadOnly" MountPointsProperty where
  type PropertyType "ReadOnly" MountPointsProperty = Value Prelude.Bool
  set newValue MountPointsProperty {..}
    = MountPointsProperty {readOnly = Prelude.pure newValue, ..}
instance Property "SourceVolume" MountPointsProperty where
  type PropertyType "SourceVolume" MountPointsProperty = Value Prelude.Text
  set newValue MountPointsProperty {..}
    = MountPointsProperty {sourceVolume = Prelude.pure newValue, ..}