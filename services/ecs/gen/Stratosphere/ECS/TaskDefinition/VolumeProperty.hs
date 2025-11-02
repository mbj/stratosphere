module Stratosphere.ECS.TaskDefinition.VolumeProperty (
        module Exports, VolumeProperty(..), mkVolumeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.DockerVolumeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.EFSVolumeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.FSxWindowsFileServerVolumeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.HostVolumePropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VolumeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volume.html>
    VolumeProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volume.html#cfn-ecs-taskdefinition-volume-configuredatlaunch>
                    configuredAtLaunch :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volume.html#cfn-ecs-taskdefinition-volume-dockervolumeconfiguration>
                    dockerVolumeConfiguration :: (Prelude.Maybe DockerVolumeConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volume.html#cfn-ecs-taskdefinition-volume-efsvolumeconfiguration>
                    eFSVolumeConfiguration :: (Prelude.Maybe EFSVolumeConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volume.html#cfn-ecs-taskdefinition-volume-fsxwindowsfileservervolumeconfiguration>
                    fSxWindowsFileServerVolumeConfiguration :: (Prelude.Maybe FSxWindowsFileServerVolumeConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volume.html#cfn-ecs-taskdefinition-volume-host>
                    host :: (Prelude.Maybe HostVolumePropertiesProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volume.html#cfn-ecs-taskdefinition-volume-name>
                    name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVolumeProperty :: VolumeProperty
mkVolumeProperty
  = VolumeProperty
      {haddock_workaround_ = (), configuredAtLaunch = Prelude.Nothing,
       dockerVolumeConfiguration = Prelude.Nothing,
       eFSVolumeConfiguration = Prelude.Nothing,
       fSxWindowsFileServerVolumeConfiguration = Prelude.Nothing,
       host = Prelude.Nothing, name = Prelude.Nothing}
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
                            (JSON..=) "FSxWindowsFileServerVolumeConfiguration"
                              Prelude.<$> fSxWindowsFileServerVolumeConfiguration,
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
               (JSON..=) "FSxWindowsFileServerVolumeConfiguration"
                 Prelude.<$> fSxWindowsFileServerVolumeConfiguration,
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
instance Property "FSxWindowsFileServerVolumeConfiguration" VolumeProperty where
  type PropertyType "FSxWindowsFileServerVolumeConfiguration" VolumeProperty = FSxWindowsFileServerVolumeConfigurationProperty
  set newValue VolumeProperty {..}
    = VolumeProperty
        {fSxWindowsFileServerVolumeConfiguration = Prelude.pure newValue,
         ..}
instance Property "Host" VolumeProperty where
  type PropertyType "Host" VolumeProperty = HostVolumePropertiesProperty
  set newValue VolumeProperty {..}
    = VolumeProperty {host = Prelude.pure newValue, ..}
instance Property "Name" VolumeProperty where
  type PropertyType "Name" VolumeProperty = Value Prelude.Text
  set newValue VolumeProperty {..}
    = VolumeProperty {name = Prelude.pure newValue, ..}