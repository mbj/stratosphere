module Stratosphere.Batch.JobDefinition.ContainerPropertiesProperty (
        module Exports, ContainerPropertiesProperty(..),
        mkContainerPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EnvironmentProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.FargatePlatformConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.LinuxParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.LogConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.MountPointsProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.NetworkConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.ResourceRequirementProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.SecretProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.UlimitProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.VolumesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContainerPropertiesProperty
  = ContainerPropertiesProperty {command :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 environment :: (Prelude.Maybe [EnvironmentProperty]),
                                 executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                 fargatePlatformConfiguration :: (Prelude.Maybe FargatePlatformConfigurationProperty),
                                 image :: (Value Prelude.Text),
                                 instanceType :: (Prelude.Maybe (Value Prelude.Text)),
                                 jobRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                 linuxParameters :: (Prelude.Maybe LinuxParametersProperty),
                                 logConfiguration :: (Prelude.Maybe LogConfigurationProperty),
                                 memory :: (Prelude.Maybe (Value Prelude.Integer)),
                                 mountPoints :: (Prelude.Maybe [MountPointsProperty]),
                                 networkConfiguration :: (Prelude.Maybe NetworkConfigurationProperty),
                                 privileged :: (Prelude.Maybe (Value Prelude.Bool)),
                                 readonlyRootFilesystem :: (Prelude.Maybe (Value Prelude.Bool)),
                                 resourceRequirements :: (Prelude.Maybe [ResourceRequirementProperty]),
                                 secrets :: (Prelude.Maybe [SecretProperty]),
                                 ulimits :: (Prelude.Maybe [UlimitProperty]),
                                 user :: (Prelude.Maybe (Value Prelude.Text)),
                                 vcpus :: (Prelude.Maybe (Value Prelude.Integer)),
                                 volumes :: (Prelude.Maybe [VolumesProperty])}
mkContainerPropertiesProperty ::
  Value Prelude.Text -> ContainerPropertiesProperty
mkContainerPropertiesProperty image
  = ContainerPropertiesProperty
      {image = image, command = Prelude.Nothing,
       environment = Prelude.Nothing, executionRoleArn = Prelude.Nothing,
       fargatePlatformConfiguration = Prelude.Nothing,
       instanceType = Prelude.Nothing, jobRoleArn = Prelude.Nothing,
       linuxParameters = Prelude.Nothing,
       logConfiguration = Prelude.Nothing, memory = Prelude.Nothing,
       mountPoints = Prelude.Nothing,
       networkConfiguration = Prelude.Nothing,
       privileged = Prelude.Nothing,
       readonlyRootFilesystem = Prelude.Nothing,
       resourceRequirements = Prelude.Nothing, secrets = Prelude.Nothing,
       ulimits = Prelude.Nothing, user = Prelude.Nothing,
       vcpus = Prelude.Nothing, volumes = Prelude.Nothing}
instance ToResourceProperties ContainerPropertiesProperty where
  toResourceProperties ContainerPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.ContainerProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Image" JSON..= image]
                           (Prelude.catMaybes
                              [(JSON..=) "Command" Prelude.<$> command,
                               (JSON..=) "Environment" Prelude.<$> environment,
                               (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                               (JSON..=) "FargatePlatformConfiguration"
                                 Prelude.<$> fargatePlatformConfiguration,
                               (JSON..=) "InstanceType" Prelude.<$> instanceType,
                               (JSON..=) "JobRoleArn" Prelude.<$> jobRoleArn,
                               (JSON..=) "LinuxParameters" Prelude.<$> linuxParameters,
                               (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
                               (JSON..=) "Memory" Prelude.<$> memory,
                               (JSON..=) "MountPoints" Prelude.<$> mountPoints,
                               (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                               (JSON..=) "Privileged" Prelude.<$> privileged,
                               (JSON..=) "ReadonlyRootFilesystem"
                                 Prelude.<$> readonlyRootFilesystem,
                               (JSON..=) "ResourceRequirements" Prelude.<$> resourceRequirements,
                               (JSON..=) "Secrets" Prelude.<$> secrets,
                               (JSON..=) "Ulimits" Prelude.<$> ulimits,
                               (JSON..=) "User" Prelude.<$> user,
                               (JSON..=) "Vcpus" Prelude.<$> vcpus,
                               (JSON..=) "Volumes" Prelude.<$> volumes]))}
instance JSON.ToJSON ContainerPropertiesProperty where
  toJSON ContainerPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Image" JSON..= image]
              (Prelude.catMaybes
                 [(JSON..=) "Command" Prelude.<$> command,
                  (JSON..=) "Environment" Prelude.<$> environment,
                  (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                  (JSON..=) "FargatePlatformConfiguration"
                    Prelude.<$> fargatePlatformConfiguration,
                  (JSON..=) "InstanceType" Prelude.<$> instanceType,
                  (JSON..=) "JobRoleArn" Prelude.<$> jobRoleArn,
                  (JSON..=) "LinuxParameters" Prelude.<$> linuxParameters,
                  (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
                  (JSON..=) "Memory" Prelude.<$> memory,
                  (JSON..=) "MountPoints" Prelude.<$> mountPoints,
                  (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                  (JSON..=) "Privileged" Prelude.<$> privileged,
                  (JSON..=) "ReadonlyRootFilesystem"
                    Prelude.<$> readonlyRootFilesystem,
                  (JSON..=) "ResourceRequirements" Prelude.<$> resourceRequirements,
                  (JSON..=) "Secrets" Prelude.<$> secrets,
                  (JSON..=) "Ulimits" Prelude.<$> ulimits,
                  (JSON..=) "User" Prelude.<$> user,
                  (JSON..=) "Vcpus" Prelude.<$> vcpus,
                  (JSON..=) "Volumes" Prelude.<$> volumes])))
instance Property "Command" ContainerPropertiesProperty where
  type PropertyType "Command" ContainerPropertiesProperty = ValueList Prelude.Text
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty {command = Prelude.pure newValue, ..}
instance Property "Environment" ContainerPropertiesProperty where
  type PropertyType "Environment" ContainerPropertiesProperty = [EnvironmentProperty]
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty
        {environment = Prelude.pure newValue, ..}
instance Property "ExecutionRoleArn" ContainerPropertiesProperty where
  type PropertyType "ExecutionRoleArn" ContainerPropertiesProperty = Value Prelude.Text
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty
        {executionRoleArn = Prelude.pure newValue, ..}
instance Property "FargatePlatformConfiguration" ContainerPropertiesProperty where
  type PropertyType "FargatePlatformConfiguration" ContainerPropertiesProperty = FargatePlatformConfigurationProperty
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty
        {fargatePlatformConfiguration = Prelude.pure newValue, ..}
instance Property "Image" ContainerPropertiesProperty where
  type PropertyType "Image" ContainerPropertiesProperty = Value Prelude.Text
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty {image = newValue, ..}
instance Property "InstanceType" ContainerPropertiesProperty where
  type PropertyType "InstanceType" ContainerPropertiesProperty = Value Prelude.Text
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty
        {instanceType = Prelude.pure newValue, ..}
instance Property "JobRoleArn" ContainerPropertiesProperty where
  type PropertyType "JobRoleArn" ContainerPropertiesProperty = Value Prelude.Text
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty
        {jobRoleArn = Prelude.pure newValue, ..}
instance Property "LinuxParameters" ContainerPropertiesProperty where
  type PropertyType "LinuxParameters" ContainerPropertiesProperty = LinuxParametersProperty
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty
        {linuxParameters = Prelude.pure newValue, ..}
instance Property "LogConfiguration" ContainerPropertiesProperty where
  type PropertyType "LogConfiguration" ContainerPropertiesProperty = LogConfigurationProperty
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty
        {logConfiguration = Prelude.pure newValue, ..}
instance Property "Memory" ContainerPropertiesProperty where
  type PropertyType "Memory" ContainerPropertiesProperty = Value Prelude.Integer
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty {memory = Prelude.pure newValue, ..}
instance Property "MountPoints" ContainerPropertiesProperty where
  type PropertyType "MountPoints" ContainerPropertiesProperty = [MountPointsProperty]
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty
        {mountPoints = Prelude.pure newValue, ..}
instance Property "NetworkConfiguration" ContainerPropertiesProperty where
  type PropertyType "NetworkConfiguration" ContainerPropertiesProperty = NetworkConfigurationProperty
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty
        {networkConfiguration = Prelude.pure newValue, ..}
instance Property "Privileged" ContainerPropertiesProperty where
  type PropertyType "Privileged" ContainerPropertiesProperty = Value Prelude.Bool
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty
        {privileged = Prelude.pure newValue, ..}
instance Property "ReadonlyRootFilesystem" ContainerPropertiesProperty where
  type PropertyType "ReadonlyRootFilesystem" ContainerPropertiesProperty = Value Prelude.Bool
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty
        {readonlyRootFilesystem = Prelude.pure newValue, ..}
instance Property "ResourceRequirements" ContainerPropertiesProperty where
  type PropertyType "ResourceRequirements" ContainerPropertiesProperty = [ResourceRequirementProperty]
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty
        {resourceRequirements = Prelude.pure newValue, ..}
instance Property "Secrets" ContainerPropertiesProperty where
  type PropertyType "Secrets" ContainerPropertiesProperty = [SecretProperty]
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty {secrets = Prelude.pure newValue, ..}
instance Property "Ulimits" ContainerPropertiesProperty where
  type PropertyType "Ulimits" ContainerPropertiesProperty = [UlimitProperty]
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty {ulimits = Prelude.pure newValue, ..}
instance Property "User" ContainerPropertiesProperty where
  type PropertyType "User" ContainerPropertiesProperty = Value Prelude.Text
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty {user = Prelude.pure newValue, ..}
instance Property "Vcpus" ContainerPropertiesProperty where
  type PropertyType "Vcpus" ContainerPropertiesProperty = Value Prelude.Integer
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty {vcpus = Prelude.pure newValue, ..}
instance Property "Volumes" ContainerPropertiesProperty where
  type PropertyType "Volumes" ContainerPropertiesProperty = [VolumesProperty]
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty {volumes = Prelude.pure newValue, ..}