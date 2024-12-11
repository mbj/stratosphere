module Stratosphere.GameLift.ContainerGroupDefinition.SupportContainerDefinitionProperty (
        module Exports, SupportContainerDefinitionProperty(..),
        mkSupportContainerDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GameLift.ContainerGroupDefinition.ContainerDependencyProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.ContainerGroupDefinition.ContainerEnvironmentProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.ContainerGroupDefinition.ContainerHealthCheckProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.ContainerGroupDefinition.ContainerMountPointProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.ContainerGroupDefinition.PortConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SupportContainerDefinitionProperty
  = SupportContainerDefinitionProperty {containerName :: (Value Prelude.Text),
                                        dependsOn :: (Prelude.Maybe [ContainerDependencyProperty]),
                                        environmentOverride :: (Prelude.Maybe [ContainerEnvironmentProperty]),
                                        essential :: (Prelude.Maybe (Value Prelude.Bool)),
                                        healthCheck :: (Prelude.Maybe ContainerHealthCheckProperty),
                                        imageUri :: (Value Prelude.Text),
                                        memoryHardLimitMebibytes :: (Prelude.Maybe (Value Prelude.Integer)),
                                        mountPoints :: (Prelude.Maybe [ContainerMountPointProperty]),
                                        portConfiguration :: (Prelude.Maybe PortConfigurationProperty),
                                        resolvedImageDigest :: (Prelude.Maybe (Value Prelude.Text)),
                                        vcpu :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSupportContainerDefinitionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SupportContainerDefinitionProperty
mkSupportContainerDefinitionProperty containerName imageUri
  = SupportContainerDefinitionProperty
      {containerName = containerName, imageUri = imageUri,
       dependsOn = Prelude.Nothing, environmentOverride = Prelude.Nothing,
       essential = Prelude.Nothing, healthCheck = Prelude.Nothing,
       memoryHardLimitMebibytes = Prelude.Nothing,
       mountPoints = Prelude.Nothing, portConfiguration = Prelude.Nothing,
       resolvedImageDigest = Prelude.Nothing, vcpu = Prelude.Nothing}
instance ToResourceProperties SupportContainerDefinitionProperty where
  toResourceProperties SupportContainerDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::ContainerGroupDefinition.SupportContainerDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ContainerName" JSON..= containerName,
                            "ImageUri" JSON..= imageUri]
                           (Prelude.catMaybes
                              [(JSON..=) "DependsOn" Prelude.<$> dependsOn,
                               (JSON..=) "EnvironmentOverride" Prelude.<$> environmentOverride,
                               (JSON..=) "Essential" Prelude.<$> essential,
                               (JSON..=) "HealthCheck" Prelude.<$> healthCheck,
                               (JSON..=) "MemoryHardLimitMebibytes"
                                 Prelude.<$> memoryHardLimitMebibytes,
                               (JSON..=) "MountPoints" Prelude.<$> mountPoints,
                               (JSON..=) "PortConfiguration" Prelude.<$> portConfiguration,
                               (JSON..=) "ResolvedImageDigest" Prelude.<$> resolvedImageDigest,
                               (JSON..=) "Vcpu" Prelude.<$> vcpu]))}
instance JSON.ToJSON SupportContainerDefinitionProperty where
  toJSON SupportContainerDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ContainerName" JSON..= containerName,
               "ImageUri" JSON..= imageUri]
              (Prelude.catMaybes
                 [(JSON..=) "DependsOn" Prelude.<$> dependsOn,
                  (JSON..=) "EnvironmentOverride" Prelude.<$> environmentOverride,
                  (JSON..=) "Essential" Prelude.<$> essential,
                  (JSON..=) "HealthCheck" Prelude.<$> healthCheck,
                  (JSON..=) "MemoryHardLimitMebibytes"
                    Prelude.<$> memoryHardLimitMebibytes,
                  (JSON..=) "MountPoints" Prelude.<$> mountPoints,
                  (JSON..=) "PortConfiguration" Prelude.<$> portConfiguration,
                  (JSON..=) "ResolvedImageDigest" Prelude.<$> resolvedImageDigest,
                  (JSON..=) "Vcpu" Prelude.<$> vcpu])))
instance Property "ContainerName" SupportContainerDefinitionProperty where
  type PropertyType "ContainerName" SupportContainerDefinitionProperty = Value Prelude.Text
  set newValue SupportContainerDefinitionProperty {..}
    = SupportContainerDefinitionProperty {containerName = newValue, ..}
instance Property "DependsOn" SupportContainerDefinitionProperty where
  type PropertyType "DependsOn" SupportContainerDefinitionProperty = [ContainerDependencyProperty]
  set newValue SupportContainerDefinitionProperty {..}
    = SupportContainerDefinitionProperty
        {dependsOn = Prelude.pure newValue, ..}
instance Property "EnvironmentOverride" SupportContainerDefinitionProperty where
  type PropertyType "EnvironmentOverride" SupportContainerDefinitionProperty = [ContainerEnvironmentProperty]
  set newValue SupportContainerDefinitionProperty {..}
    = SupportContainerDefinitionProperty
        {environmentOverride = Prelude.pure newValue, ..}
instance Property "Essential" SupportContainerDefinitionProperty where
  type PropertyType "Essential" SupportContainerDefinitionProperty = Value Prelude.Bool
  set newValue SupportContainerDefinitionProperty {..}
    = SupportContainerDefinitionProperty
        {essential = Prelude.pure newValue, ..}
instance Property "HealthCheck" SupportContainerDefinitionProperty where
  type PropertyType "HealthCheck" SupportContainerDefinitionProperty = ContainerHealthCheckProperty
  set newValue SupportContainerDefinitionProperty {..}
    = SupportContainerDefinitionProperty
        {healthCheck = Prelude.pure newValue, ..}
instance Property "ImageUri" SupportContainerDefinitionProperty where
  type PropertyType "ImageUri" SupportContainerDefinitionProperty = Value Prelude.Text
  set newValue SupportContainerDefinitionProperty {..}
    = SupportContainerDefinitionProperty {imageUri = newValue, ..}
instance Property "MemoryHardLimitMebibytes" SupportContainerDefinitionProperty where
  type PropertyType "MemoryHardLimitMebibytes" SupportContainerDefinitionProperty = Value Prelude.Integer
  set newValue SupportContainerDefinitionProperty {..}
    = SupportContainerDefinitionProperty
        {memoryHardLimitMebibytes = Prelude.pure newValue, ..}
instance Property "MountPoints" SupportContainerDefinitionProperty where
  type PropertyType "MountPoints" SupportContainerDefinitionProperty = [ContainerMountPointProperty]
  set newValue SupportContainerDefinitionProperty {..}
    = SupportContainerDefinitionProperty
        {mountPoints = Prelude.pure newValue, ..}
instance Property "PortConfiguration" SupportContainerDefinitionProperty where
  type PropertyType "PortConfiguration" SupportContainerDefinitionProperty = PortConfigurationProperty
  set newValue SupportContainerDefinitionProperty {..}
    = SupportContainerDefinitionProperty
        {portConfiguration = Prelude.pure newValue, ..}
instance Property "ResolvedImageDigest" SupportContainerDefinitionProperty where
  type PropertyType "ResolvedImageDigest" SupportContainerDefinitionProperty = Value Prelude.Text
  set newValue SupportContainerDefinitionProperty {..}
    = SupportContainerDefinitionProperty
        {resolvedImageDigest = Prelude.pure newValue, ..}
instance Property "Vcpu" SupportContainerDefinitionProperty where
  type PropertyType "Vcpu" SupportContainerDefinitionProperty = Value Prelude.Double
  set newValue SupportContainerDefinitionProperty {..}
    = SupportContainerDefinitionProperty
        {vcpu = Prelude.pure newValue, ..}