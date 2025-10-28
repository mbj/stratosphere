module Stratosphere.GameLift.ContainerGroupDefinition.GameServerContainerDefinitionProperty (
        module Exports, GameServerContainerDefinitionProperty(..),
        mkGameServerContainerDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GameLift.ContainerGroupDefinition.ContainerDependencyProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.ContainerGroupDefinition.ContainerEnvironmentProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.ContainerGroupDefinition.ContainerMountPointProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.ContainerGroupDefinition.PortConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GameServerContainerDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containergroupdefinition-gameservercontainerdefinition.html>
    GameServerContainerDefinitionProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containergroupdefinition-gameservercontainerdefinition.html#cfn-gamelift-containergroupdefinition-gameservercontainerdefinition-containername>
                                           containerName :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containergroupdefinition-gameservercontainerdefinition.html#cfn-gamelift-containergroupdefinition-gameservercontainerdefinition-dependson>
                                           dependsOn :: (Prelude.Maybe [ContainerDependencyProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containergroupdefinition-gameservercontainerdefinition.html#cfn-gamelift-containergroupdefinition-gameservercontainerdefinition-environmentoverride>
                                           environmentOverride :: (Prelude.Maybe [ContainerEnvironmentProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containergroupdefinition-gameservercontainerdefinition.html#cfn-gamelift-containergroupdefinition-gameservercontainerdefinition-imageuri>
                                           imageUri :: (Value Prelude.Text),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containergroupdefinition-gameservercontainerdefinition.html#cfn-gamelift-containergroupdefinition-gameservercontainerdefinition-mountpoints>
                                           mountPoints :: (Prelude.Maybe [ContainerMountPointProperty]),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containergroupdefinition-gameservercontainerdefinition.html#cfn-gamelift-containergroupdefinition-gameservercontainerdefinition-portconfiguration>
                                           portConfiguration :: (Prelude.Maybe PortConfigurationProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containergroupdefinition-gameservercontainerdefinition.html#cfn-gamelift-containergroupdefinition-gameservercontainerdefinition-resolvedimagedigest>
                                           resolvedImageDigest :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-containergroupdefinition-gameservercontainerdefinition.html#cfn-gamelift-containergroupdefinition-gameservercontainerdefinition-serversdkversion>
                                           serverSdkVersion :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGameServerContainerDefinitionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> GameServerContainerDefinitionProperty
mkGameServerContainerDefinitionProperty
  containerName
  imageUri
  serverSdkVersion
  = GameServerContainerDefinitionProperty
      {haddock_workaround_ = (), containerName = containerName,
       imageUri = imageUri, serverSdkVersion = serverSdkVersion,
       dependsOn = Prelude.Nothing, environmentOverride = Prelude.Nothing,
       mountPoints = Prelude.Nothing, portConfiguration = Prelude.Nothing,
       resolvedImageDigest = Prelude.Nothing}
instance ToResourceProperties GameServerContainerDefinitionProperty where
  toResourceProperties GameServerContainerDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::ContainerGroupDefinition.GameServerContainerDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ContainerName" JSON..= containerName,
                            "ImageUri" JSON..= imageUri,
                            "ServerSdkVersion" JSON..= serverSdkVersion]
                           (Prelude.catMaybes
                              [(JSON..=) "DependsOn" Prelude.<$> dependsOn,
                               (JSON..=) "EnvironmentOverride" Prelude.<$> environmentOverride,
                               (JSON..=) "MountPoints" Prelude.<$> mountPoints,
                               (JSON..=) "PortConfiguration" Prelude.<$> portConfiguration,
                               (JSON..=) "ResolvedImageDigest" Prelude.<$> resolvedImageDigest]))}
instance JSON.ToJSON GameServerContainerDefinitionProperty where
  toJSON GameServerContainerDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ContainerName" JSON..= containerName,
               "ImageUri" JSON..= imageUri,
               "ServerSdkVersion" JSON..= serverSdkVersion]
              (Prelude.catMaybes
                 [(JSON..=) "DependsOn" Prelude.<$> dependsOn,
                  (JSON..=) "EnvironmentOverride" Prelude.<$> environmentOverride,
                  (JSON..=) "MountPoints" Prelude.<$> mountPoints,
                  (JSON..=) "PortConfiguration" Prelude.<$> portConfiguration,
                  (JSON..=) "ResolvedImageDigest" Prelude.<$> resolvedImageDigest])))
instance Property "ContainerName" GameServerContainerDefinitionProperty where
  type PropertyType "ContainerName" GameServerContainerDefinitionProperty = Value Prelude.Text
  set newValue GameServerContainerDefinitionProperty {..}
    = GameServerContainerDefinitionProperty
        {containerName = newValue, ..}
instance Property "DependsOn" GameServerContainerDefinitionProperty where
  type PropertyType "DependsOn" GameServerContainerDefinitionProperty = [ContainerDependencyProperty]
  set newValue GameServerContainerDefinitionProperty {..}
    = GameServerContainerDefinitionProperty
        {dependsOn = Prelude.pure newValue, ..}
instance Property "EnvironmentOverride" GameServerContainerDefinitionProperty where
  type PropertyType "EnvironmentOverride" GameServerContainerDefinitionProperty = [ContainerEnvironmentProperty]
  set newValue GameServerContainerDefinitionProperty {..}
    = GameServerContainerDefinitionProperty
        {environmentOverride = Prelude.pure newValue, ..}
instance Property "ImageUri" GameServerContainerDefinitionProperty where
  type PropertyType "ImageUri" GameServerContainerDefinitionProperty = Value Prelude.Text
  set newValue GameServerContainerDefinitionProperty {..}
    = GameServerContainerDefinitionProperty {imageUri = newValue, ..}
instance Property "MountPoints" GameServerContainerDefinitionProperty where
  type PropertyType "MountPoints" GameServerContainerDefinitionProperty = [ContainerMountPointProperty]
  set newValue GameServerContainerDefinitionProperty {..}
    = GameServerContainerDefinitionProperty
        {mountPoints = Prelude.pure newValue, ..}
instance Property "PortConfiguration" GameServerContainerDefinitionProperty where
  type PropertyType "PortConfiguration" GameServerContainerDefinitionProperty = PortConfigurationProperty
  set newValue GameServerContainerDefinitionProperty {..}
    = GameServerContainerDefinitionProperty
        {portConfiguration = Prelude.pure newValue, ..}
instance Property "ResolvedImageDigest" GameServerContainerDefinitionProperty where
  type PropertyType "ResolvedImageDigest" GameServerContainerDefinitionProperty = Value Prelude.Text
  set newValue GameServerContainerDefinitionProperty {..}
    = GameServerContainerDefinitionProperty
        {resolvedImageDigest = Prelude.pure newValue, ..}
instance Property "ServerSdkVersion" GameServerContainerDefinitionProperty where
  type PropertyType "ServerSdkVersion" GameServerContainerDefinitionProperty = Value Prelude.Text
  set newValue GameServerContainerDefinitionProperty {..}
    = GameServerContainerDefinitionProperty
        {serverSdkVersion = newValue, ..}