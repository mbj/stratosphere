module Stratosphere.Batch.JobDefinition.ContainerPropertiesProperty (
        module Exports, ContainerPropertiesProperty(..),
        mkContainerPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EnvironmentProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EphemeralStorageProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.FargatePlatformConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.LinuxParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.LogConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.MountPointProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.NetworkConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.RepositoryCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.ResourceRequirementProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.RuntimePlatformProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.SecretProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.UlimitProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.VolumeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContainerPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html>
    ContainerPropertiesProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-command>
                                 command :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-enableexecutecommand>
                                 enableExecuteCommand :: (Prelude.Maybe (Value Prelude.Bool)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-environment>
                                 environment :: (Prelude.Maybe [EnvironmentProperty]),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-ephemeralstorage>
                                 ephemeralStorage :: (Prelude.Maybe EphemeralStorageProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-executionrolearn>
                                 executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-fargateplatformconfiguration>
                                 fargatePlatformConfiguration :: (Prelude.Maybe FargatePlatformConfigurationProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-image>
                                 image :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-jobrolearn>
                                 jobRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-linuxparameters>
                                 linuxParameters :: (Prelude.Maybe LinuxParametersProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-logconfiguration>
                                 logConfiguration :: (Prelude.Maybe LogConfigurationProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-memory>
                                 memory :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-mountpoints>
                                 mountPoints :: (Prelude.Maybe [MountPointProperty]),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-networkconfiguration>
                                 networkConfiguration :: (Prelude.Maybe NetworkConfigurationProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-privileged>
                                 privileged :: (Prelude.Maybe (Value Prelude.Bool)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-readonlyrootfilesystem>
                                 readonlyRootFilesystem :: (Prelude.Maybe (Value Prelude.Bool)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-repositorycredentials>
                                 repositoryCredentials :: (Prelude.Maybe RepositoryCredentialsProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-resourcerequirements>
                                 resourceRequirements :: (Prelude.Maybe [ResourceRequirementProperty]),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-runtimeplatform>
                                 runtimePlatform :: (Prelude.Maybe RuntimePlatformProperty),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-secrets>
                                 secrets :: (Prelude.Maybe [SecretProperty]),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-ulimits>
                                 ulimits :: (Prelude.Maybe [UlimitProperty]),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-user>
                                 user :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-vcpus>
                                 vcpus :: (Prelude.Maybe (Value Prelude.Integer)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-containerproperties.html#cfn-batch-jobdefinition-containerproperties-volumes>
                                 volumes :: (Prelude.Maybe [VolumeProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerPropertiesProperty ::
  Value Prelude.Text -> ContainerPropertiesProperty
mkContainerPropertiesProperty image
  = ContainerPropertiesProperty
      {haddock_workaround_ = (), image = image,
       command = Prelude.Nothing, enableExecuteCommand = Prelude.Nothing,
       environment = Prelude.Nothing, ephemeralStorage = Prelude.Nothing,
       executionRoleArn = Prelude.Nothing,
       fargatePlatformConfiguration = Prelude.Nothing,
       jobRoleArn = Prelude.Nothing, linuxParameters = Prelude.Nothing,
       logConfiguration = Prelude.Nothing, memory = Prelude.Nothing,
       mountPoints = Prelude.Nothing,
       networkConfiguration = Prelude.Nothing,
       privileged = Prelude.Nothing,
       readonlyRootFilesystem = Prelude.Nothing,
       repositoryCredentials = Prelude.Nothing,
       resourceRequirements = Prelude.Nothing,
       runtimePlatform = Prelude.Nothing, secrets = Prelude.Nothing,
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
                               (JSON..=) "EnableExecuteCommand" Prelude.<$> enableExecuteCommand,
                               (JSON..=) "Environment" Prelude.<$> environment,
                               (JSON..=) "EphemeralStorage" Prelude.<$> ephemeralStorage,
                               (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                               (JSON..=) "FargatePlatformConfiguration"
                                 Prelude.<$> fargatePlatformConfiguration,
                               (JSON..=) "JobRoleArn" Prelude.<$> jobRoleArn,
                               (JSON..=) "LinuxParameters" Prelude.<$> linuxParameters,
                               (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
                               (JSON..=) "Memory" Prelude.<$> memory,
                               (JSON..=) "MountPoints" Prelude.<$> mountPoints,
                               (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                               (JSON..=) "Privileged" Prelude.<$> privileged,
                               (JSON..=) "ReadonlyRootFilesystem"
                                 Prelude.<$> readonlyRootFilesystem,
                               (JSON..=) "RepositoryCredentials"
                                 Prelude.<$> repositoryCredentials,
                               (JSON..=) "ResourceRequirements" Prelude.<$> resourceRequirements,
                               (JSON..=) "RuntimePlatform" Prelude.<$> runtimePlatform,
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
                  (JSON..=) "EnableExecuteCommand" Prelude.<$> enableExecuteCommand,
                  (JSON..=) "Environment" Prelude.<$> environment,
                  (JSON..=) "EphemeralStorage" Prelude.<$> ephemeralStorage,
                  (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                  (JSON..=) "FargatePlatformConfiguration"
                    Prelude.<$> fargatePlatformConfiguration,
                  (JSON..=) "JobRoleArn" Prelude.<$> jobRoleArn,
                  (JSON..=) "LinuxParameters" Prelude.<$> linuxParameters,
                  (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
                  (JSON..=) "Memory" Prelude.<$> memory,
                  (JSON..=) "MountPoints" Prelude.<$> mountPoints,
                  (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                  (JSON..=) "Privileged" Prelude.<$> privileged,
                  (JSON..=) "ReadonlyRootFilesystem"
                    Prelude.<$> readonlyRootFilesystem,
                  (JSON..=) "RepositoryCredentials"
                    Prelude.<$> repositoryCredentials,
                  (JSON..=) "ResourceRequirements" Prelude.<$> resourceRequirements,
                  (JSON..=) "RuntimePlatform" Prelude.<$> runtimePlatform,
                  (JSON..=) "Secrets" Prelude.<$> secrets,
                  (JSON..=) "Ulimits" Prelude.<$> ulimits,
                  (JSON..=) "User" Prelude.<$> user,
                  (JSON..=) "Vcpus" Prelude.<$> vcpus,
                  (JSON..=) "Volumes" Prelude.<$> volumes])))
instance Property "Command" ContainerPropertiesProperty where
  type PropertyType "Command" ContainerPropertiesProperty = ValueList Prelude.Text
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty {command = Prelude.pure newValue, ..}
instance Property "EnableExecuteCommand" ContainerPropertiesProperty where
  type PropertyType "EnableExecuteCommand" ContainerPropertiesProperty = Value Prelude.Bool
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty
        {enableExecuteCommand = Prelude.pure newValue, ..}
instance Property "Environment" ContainerPropertiesProperty where
  type PropertyType "Environment" ContainerPropertiesProperty = [EnvironmentProperty]
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty
        {environment = Prelude.pure newValue, ..}
instance Property "EphemeralStorage" ContainerPropertiesProperty where
  type PropertyType "EphemeralStorage" ContainerPropertiesProperty = EphemeralStorageProperty
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty
        {ephemeralStorage = Prelude.pure newValue, ..}
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
  type PropertyType "MountPoints" ContainerPropertiesProperty = [MountPointProperty]
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
instance Property "RepositoryCredentials" ContainerPropertiesProperty where
  type PropertyType "RepositoryCredentials" ContainerPropertiesProperty = RepositoryCredentialsProperty
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty
        {repositoryCredentials = Prelude.pure newValue, ..}
instance Property "ResourceRequirements" ContainerPropertiesProperty where
  type PropertyType "ResourceRequirements" ContainerPropertiesProperty = [ResourceRequirementProperty]
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty
        {resourceRequirements = Prelude.pure newValue, ..}
instance Property "RuntimePlatform" ContainerPropertiesProperty where
  type PropertyType "RuntimePlatform" ContainerPropertiesProperty = RuntimePlatformProperty
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty
        {runtimePlatform = Prelude.pure newValue, ..}
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
  type PropertyType "Volumes" ContainerPropertiesProperty = [VolumeProperty]
  set newValue ContainerPropertiesProperty {..}
    = ContainerPropertiesProperty {volumes = Prelude.pure newValue, ..}