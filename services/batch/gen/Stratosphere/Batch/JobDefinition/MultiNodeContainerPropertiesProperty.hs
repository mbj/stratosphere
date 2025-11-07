module Stratosphere.Batch.JobDefinition.MultiNodeContainerPropertiesProperty (
        module Exports, MultiNodeContainerPropertiesProperty(..),
        mkMultiNodeContainerPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EnvironmentProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EphemeralStorageProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.LinuxParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.LogConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.MountPointProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.RepositoryCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.ResourceRequirementProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.RuntimePlatformProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.SecretProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.UlimitProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.VolumeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiNodeContainerPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html>
    MultiNodeContainerPropertiesProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-command>
                                          command :: (Prelude.Maybe (ValueList Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-enableexecutecommand>
                                          enableExecuteCommand :: (Prelude.Maybe (Value Prelude.Bool)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-environment>
                                          environment :: (Prelude.Maybe [EnvironmentProperty]),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-ephemeralstorage>
                                          ephemeralStorage :: (Prelude.Maybe EphemeralStorageProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-executionrolearn>
                                          executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-image>
                                          image :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-instancetype>
                                          instanceType :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-jobrolearn>
                                          jobRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-linuxparameters>
                                          linuxParameters :: (Prelude.Maybe LinuxParametersProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-logconfiguration>
                                          logConfiguration :: (Prelude.Maybe LogConfigurationProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-memory>
                                          memory :: (Prelude.Maybe (Value Prelude.Integer)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-mountpoints>
                                          mountPoints :: (Prelude.Maybe [MountPointProperty]),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-privileged>
                                          privileged :: (Prelude.Maybe (Value Prelude.Bool)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-readonlyrootfilesystem>
                                          readonlyRootFilesystem :: (Prelude.Maybe (Value Prelude.Bool)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-repositorycredentials>
                                          repositoryCredentials :: (Prelude.Maybe RepositoryCredentialsProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-resourcerequirements>
                                          resourceRequirements :: (Prelude.Maybe [ResourceRequirementProperty]),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-runtimeplatform>
                                          runtimePlatform :: (Prelude.Maybe RuntimePlatformProperty),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-secrets>
                                          secrets :: (Prelude.Maybe [SecretProperty]),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-ulimits>
                                          ulimits :: (Prelude.Maybe [UlimitProperty]),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-user>
                                          user :: (Prelude.Maybe (Value Prelude.Text)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-vcpus>
                                          vcpus :: (Prelude.Maybe (Value Prelude.Integer)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodecontainerproperties.html#cfn-batch-jobdefinition-multinodecontainerproperties-volumes>
                                          volumes :: (Prelude.Maybe [VolumeProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiNodeContainerPropertiesProperty ::
  Value Prelude.Text -> MultiNodeContainerPropertiesProperty
mkMultiNodeContainerPropertiesProperty image
  = MultiNodeContainerPropertiesProperty
      {haddock_workaround_ = (), image = image,
       command = Prelude.Nothing, enableExecuteCommand = Prelude.Nothing,
       environment = Prelude.Nothing, ephemeralStorage = Prelude.Nothing,
       executionRoleArn = Prelude.Nothing, instanceType = Prelude.Nothing,
       jobRoleArn = Prelude.Nothing, linuxParameters = Prelude.Nothing,
       logConfiguration = Prelude.Nothing, memory = Prelude.Nothing,
       mountPoints = Prelude.Nothing, privileged = Prelude.Nothing,
       readonlyRootFilesystem = Prelude.Nothing,
       repositoryCredentials = Prelude.Nothing,
       resourceRequirements = Prelude.Nothing,
       runtimePlatform = Prelude.Nothing, secrets = Prelude.Nothing,
       ulimits = Prelude.Nothing, user = Prelude.Nothing,
       vcpus = Prelude.Nothing, volumes = Prelude.Nothing}
instance ToResourceProperties MultiNodeContainerPropertiesProperty where
  toResourceProperties MultiNodeContainerPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.MultiNodeContainerProperties",
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
                               (JSON..=) "InstanceType" Prelude.<$> instanceType,
                               (JSON..=) "JobRoleArn" Prelude.<$> jobRoleArn,
                               (JSON..=) "LinuxParameters" Prelude.<$> linuxParameters,
                               (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
                               (JSON..=) "Memory" Prelude.<$> memory,
                               (JSON..=) "MountPoints" Prelude.<$> mountPoints,
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
instance JSON.ToJSON MultiNodeContainerPropertiesProperty where
  toJSON MultiNodeContainerPropertiesProperty {..}
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
                  (JSON..=) "InstanceType" Prelude.<$> instanceType,
                  (JSON..=) "JobRoleArn" Prelude.<$> jobRoleArn,
                  (JSON..=) "LinuxParameters" Prelude.<$> linuxParameters,
                  (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
                  (JSON..=) "Memory" Prelude.<$> memory,
                  (JSON..=) "MountPoints" Prelude.<$> mountPoints,
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
instance Property "Command" MultiNodeContainerPropertiesProperty where
  type PropertyType "Command" MultiNodeContainerPropertiesProperty = ValueList Prelude.Text
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {command = Prelude.pure newValue, ..}
instance Property "EnableExecuteCommand" MultiNodeContainerPropertiesProperty where
  type PropertyType "EnableExecuteCommand" MultiNodeContainerPropertiesProperty = Value Prelude.Bool
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {enableExecuteCommand = Prelude.pure newValue, ..}
instance Property "Environment" MultiNodeContainerPropertiesProperty where
  type PropertyType "Environment" MultiNodeContainerPropertiesProperty = [EnvironmentProperty]
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {environment = Prelude.pure newValue, ..}
instance Property "EphemeralStorage" MultiNodeContainerPropertiesProperty where
  type PropertyType "EphemeralStorage" MultiNodeContainerPropertiesProperty = EphemeralStorageProperty
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {ephemeralStorage = Prelude.pure newValue, ..}
instance Property "ExecutionRoleArn" MultiNodeContainerPropertiesProperty where
  type PropertyType "ExecutionRoleArn" MultiNodeContainerPropertiesProperty = Value Prelude.Text
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {executionRoleArn = Prelude.pure newValue, ..}
instance Property "Image" MultiNodeContainerPropertiesProperty where
  type PropertyType "Image" MultiNodeContainerPropertiesProperty = Value Prelude.Text
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty {image = newValue, ..}
instance Property "InstanceType" MultiNodeContainerPropertiesProperty where
  type PropertyType "InstanceType" MultiNodeContainerPropertiesProperty = Value Prelude.Text
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {instanceType = Prelude.pure newValue, ..}
instance Property "JobRoleArn" MultiNodeContainerPropertiesProperty where
  type PropertyType "JobRoleArn" MultiNodeContainerPropertiesProperty = Value Prelude.Text
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {jobRoleArn = Prelude.pure newValue, ..}
instance Property "LinuxParameters" MultiNodeContainerPropertiesProperty where
  type PropertyType "LinuxParameters" MultiNodeContainerPropertiesProperty = LinuxParametersProperty
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {linuxParameters = Prelude.pure newValue, ..}
instance Property "LogConfiguration" MultiNodeContainerPropertiesProperty where
  type PropertyType "LogConfiguration" MultiNodeContainerPropertiesProperty = LogConfigurationProperty
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {logConfiguration = Prelude.pure newValue, ..}
instance Property "Memory" MultiNodeContainerPropertiesProperty where
  type PropertyType "Memory" MultiNodeContainerPropertiesProperty = Value Prelude.Integer
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {memory = Prelude.pure newValue, ..}
instance Property "MountPoints" MultiNodeContainerPropertiesProperty where
  type PropertyType "MountPoints" MultiNodeContainerPropertiesProperty = [MountPointProperty]
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {mountPoints = Prelude.pure newValue, ..}
instance Property "Privileged" MultiNodeContainerPropertiesProperty where
  type PropertyType "Privileged" MultiNodeContainerPropertiesProperty = Value Prelude.Bool
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {privileged = Prelude.pure newValue, ..}
instance Property "ReadonlyRootFilesystem" MultiNodeContainerPropertiesProperty where
  type PropertyType "ReadonlyRootFilesystem" MultiNodeContainerPropertiesProperty = Value Prelude.Bool
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {readonlyRootFilesystem = Prelude.pure newValue, ..}
instance Property "RepositoryCredentials" MultiNodeContainerPropertiesProperty where
  type PropertyType "RepositoryCredentials" MultiNodeContainerPropertiesProperty = RepositoryCredentialsProperty
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {repositoryCredentials = Prelude.pure newValue, ..}
instance Property "ResourceRequirements" MultiNodeContainerPropertiesProperty where
  type PropertyType "ResourceRequirements" MultiNodeContainerPropertiesProperty = [ResourceRequirementProperty]
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {resourceRequirements = Prelude.pure newValue, ..}
instance Property "RuntimePlatform" MultiNodeContainerPropertiesProperty where
  type PropertyType "RuntimePlatform" MultiNodeContainerPropertiesProperty = RuntimePlatformProperty
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {runtimePlatform = Prelude.pure newValue, ..}
instance Property "Secrets" MultiNodeContainerPropertiesProperty where
  type PropertyType "Secrets" MultiNodeContainerPropertiesProperty = [SecretProperty]
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {secrets = Prelude.pure newValue, ..}
instance Property "Ulimits" MultiNodeContainerPropertiesProperty where
  type PropertyType "Ulimits" MultiNodeContainerPropertiesProperty = [UlimitProperty]
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {ulimits = Prelude.pure newValue, ..}
instance Property "User" MultiNodeContainerPropertiesProperty where
  type PropertyType "User" MultiNodeContainerPropertiesProperty = Value Prelude.Text
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {user = Prelude.pure newValue, ..}
instance Property "Vcpus" MultiNodeContainerPropertiesProperty where
  type PropertyType "Vcpus" MultiNodeContainerPropertiesProperty = Value Prelude.Integer
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {vcpus = Prelude.pure newValue, ..}
instance Property "Volumes" MultiNodeContainerPropertiesProperty where
  type PropertyType "Volumes" MultiNodeContainerPropertiesProperty = [VolumeProperty]
  set newValue MultiNodeContainerPropertiesProperty {..}
    = MultiNodeContainerPropertiesProperty
        {volumes = Prelude.pure newValue, ..}