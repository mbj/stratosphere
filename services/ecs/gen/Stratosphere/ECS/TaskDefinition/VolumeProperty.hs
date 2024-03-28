module Stratosphere.ECS.TaskDefinition.VolumeProperty (
        module Exports, VolumeProperty(..), mkVolumeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.DockerVolumeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.EFSVolumeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.HostVolumePropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VolumeProperty
  = VolumeProperty {configuredAtLaunch :: (Prelude.Maybe (Value Prelude.Bool)),
                    dockerVolumeConfiguration :: (Prelude.Maybe DockerVolumeConfigurationProperty),
                    eFSVolumeConfiguration :: (Prelude.Maybe EFSVolumeConfigurationProperty),
                    host :: (Prelude.Maybe HostVolumePropertiesProperty),
                    name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVolumeProperty :: VolumeProperty
mkVolumeProperty
  = VolumeProperty
      {configuredAtLaunch = Prelude.Nothing,
       dockerVolumeConfiguration = Prelude.Nothing,
       eFSVolumeConfiguration = Prelude.Nothing, host = Prelude.Nothing,
       name = Prelude.Nothing}
instance ToResourceProperties VolumeProperty where
  toResourceProperties VolumeProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.Volume",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ConfiguredAtLaunch" Prelude.<$> configuredAtLaunch,
                            (JSON..=) "DockerVolumeConfiguration"
                              Prelude.<$> dockerVolumeConfiguration,
                            (JSON..=) "EFSVolumeConfiguration"
                              Prelude.<$> eFSVolumeConfiguration,
                            (JSON..=) "Host" Prelude.<$> host,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON VolumeProperty where
  toJSON VolumeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ConfiguredAtLaunch" Prelude.<$> configuredAtLaunch,
               (JSON..=) "DockerVolumeConfiguration"
                 Prelude.<$> dockerVolumeConfiguration,
               (JSON..=) "EFSVolumeConfiguration"
                 Prelude.<$> eFSVolumeConfiguration,
               (JSON..=) "Host" Prelude.<$> host,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "ConfiguredAtLaunch" VolumeProperty where
  type PropertyType "ConfiguredAtLaunch" VolumeProperty = Value Prelude.Bool
  set newValue VolumeProperty {..}
    = VolumeProperty {configuredAtLaunch = Prelude.pure newValue, ..}
instance Property "DockerVolumeConfiguration" VolumeProperty where
  type PropertyType "DockerVolumeConfiguration" VolumeProperty = DockerVolumeConfigurationProperty
  set newValue VolumeProperty {..}
    = VolumeProperty
        {dockerVolumeConfiguration = Prelude.pure newValue, ..}
instance Property "EFSVolumeConfiguration" VolumeProperty where
  type PropertyType "EFSVolumeConfiguration" VolumeProperty = EFSVolumeConfigurationProperty
  set newValue VolumeProperty {..}
    = VolumeProperty
        {eFSVolumeConfiguration = Prelude.pure newValue, ..}
instance Property "Host" VolumeProperty where
  type PropertyType "Host" VolumeProperty = HostVolumePropertiesProperty
  set newValue VolumeProperty {..}
    = VolumeProperty {host = Prelude.pure newValue, ..}
instance Property "Name" VolumeProperty where
  type PropertyType "Name" VolumeProperty = Value Prelude.Text
  set newValue VolumeProperty {..}
    = VolumeProperty {name = Prelude.pure newValue, ..}