module Stratosphere.ECS.TaskDefinition.HostVolumePropertiesProperty (
        HostVolumePropertiesProperty(..), mkHostVolumePropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HostVolumePropertiesProperty
  = HostVolumePropertiesProperty {sourcePath :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHostVolumePropertiesProperty :: HostVolumePropertiesProperty
mkHostVolumePropertiesProperty
  = HostVolumePropertiesProperty {sourcePath = Prelude.Nothing}
instance ToResourceProperties HostVolumePropertiesProperty where
  toResourceProperties HostVolumePropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.HostVolumeProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SourcePath" Prelude.<$> sourcePath])}
instance JSON.ToJSON HostVolumePropertiesProperty where
  toJSON HostVolumePropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SourcePath" Prelude.<$> sourcePath]))
instance Property "SourcePath" HostVolumePropertiesProperty where
  type PropertyType "SourcePath" HostVolumePropertiesProperty = Value Prelude.Text
  set newValue HostVolumePropertiesProperty {}
    = HostVolumePropertiesProperty
        {sourcePath = Prelude.pure newValue, ..}