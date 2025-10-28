module Stratosphere.Batch.JobDefinition.TaskContainerPropertiesProperty (
        module Exports, TaskContainerPropertiesProperty(..),
        mkTaskContainerPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EnvironmentProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.LinuxParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.LogConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.MountPointsProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.RepositoryCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.ResourceRequirementProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.SecretProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.TaskContainerDependencyProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.UlimitProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TaskContainerPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-taskcontainerproperties.html>
    TaskContainerPropertiesProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-taskcontainerproperties.html#cfn-batch-jobdefinition-taskcontainerproperties-command>
                                     command :: (Prelude.Maybe (ValueList Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-taskcontainerproperties.html#cfn-batch-jobdefinition-taskcontainerproperties-dependson>
                                     dependsOn :: (Prelude.Maybe [TaskContainerDependencyProperty]),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-taskcontainerproperties.html#cfn-batch-jobdefinition-taskcontainerproperties-environment>
                                     environment :: (Prelude.Maybe [EnvironmentProperty]),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-taskcontainerproperties.html#cfn-batch-jobdefinition-taskcontainerproperties-essential>
                                     essential :: (Prelude.Maybe (Value Prelude.Bool)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-taskcontainerproperties.html#cfn-batch-jobdefinition-taskcontainerproperties-image>
                                     image :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-taskcontainerproperties.html#cfn-batch-jobdefinition-taskcontainerproperties-linuxparameters>
                                     linuxParameters :: (Prelude.Maybe LinuxParametersProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-taskcontainerproperties.html#cfn-batch-jobdefinition-taskcontainerproperties-logconfiguration>
                                     logConfiguration :: (Prelude.Maybe LogConfigurationProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-taskcontainerproperties.html#cfn-batch-jobdefinition-taskcontainerproperties-mountpoints>
                                     mountPoints :: (Prelude.Maybe [MountPointsProperty]),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-taskcontainerproperties.html#cfn-batch-jobdefinition-taskcontainerproperties-name>
                                     name :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-taskcontainerproperties.html#cfn-batch-jobdefinition-taskcontainerproperties-privileged>
                                     privileged :: (Prelude.Maybe (Value Prelude.Bool)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-taskcontainerproperties.html#cfn-batch-jobdefinition-taskcontainerproperties-readonlyrootfilesystem>
                                     readonlyRootFilesystem :: (Prelude.Maybe (Value Prelude.Bool)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-taskcontainerproperties.html#cfn-batch-jobdefinition-taskcontainerproperties-repositorycredentials>
                                     repositoryCredentials :: (Prelude.Maybe RepositoryCredentialsProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-taskcontainerproperties.html#cfn-batch-jobdefinition-taskcontainerproperties-resourcerequirements>
                                     resourceRequirements :: (Prelude.Maybe [ResourceRequirementProperty]),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-taskcontainerproperties.html#cfn-batch-jobdefinition-taskcontainerproperties-secrets>
                                     secrets :: (Prelude.Maybe [SecretProperty]),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-taskcontainerproperties.html#cfn-batch-jobdefinition-taskcontainerproperties-ulimits>
                                     ulimits :: (Prelude.Maybe [UlimitProperty]),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-taskcontainerproperties.html#cfn-batch-jobdefinition-taskcontainerproperties-user>
                                     user :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTaskContainerPropertiesProperty ::
  Value Prelude.Text -> TaskContainerPropertiesProperty
mkTaskContainerPropertiesProperty image
  = TaskContainerPropertiesProperty
      {haddock_workaround_ = (), image = image,
       command = Prelude.Nothing, dependsOn = Prelude.Nothing,
       environment = Prelude.Nothing, essential = Prelude.Nothing,
       linuxParameters = Prelude.Nothing,
       logConfiguration = Prelude.Nothing, mountPoints = Prelude.Nothing,
       name = Prelude.Nothing, privileged = Prelude.Nothing,
       readonlyRootFilesystem = Prelude.Nothing,
       repositoryCredentials = Prelude.Nothing,
       resourceRequirements = Prelude.Nothing, secrets = Prelude.Nothing,
       ulimits = Prelude.Nothing, user = Prelude.Nothing}
instance ToResourceProperties TaskContainerPropertiesProperty where
  toResourceProperties TaskContainerPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.TaskContainerProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Image" JSON..= image]
                           (Prelude.catMaybes
                              [(JSON..=) "Command" Prelude.<$> command,
                               (JSON..=) "DependsOn" Prelude.<$> dependsOn,
                               (JSON..=) "Environment" Prelude.<$> environment,
                               (JSON..=) "Essential" Prelude.<$> essential,
                               (JSON..=) "LinuxParameters" Prelude.<$> linuxParameters,
                               (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
                               (JSON..=) "MountPoints" Prelude.<$> mountPoints,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Privileged" Prelude.<$> privileged,
                               (JSON..=) "ReadonlyRootFilesystem"
                                 Prelude.<$> readonlyRootFilesystem,
                               (JSON..=) "RepositoryCredentials"
                                 Prelude.<$> repositoryCredentials,
                               (JSON..=) "ResourceRequirements" Prelude.<$> resourceRequirements,
                               (JSON..=) "Secrets" Prelude.<$> secrets,
                               (JSON..=) "Ulimits" Prelude.<$> ulimits,
                               (JSON..=) "User" Prelude.<$> user]))}
instance JSON.ToJSON TaskContainerPropertiesProperty where
  toJSON TaskContainerPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Image" JSON..= image]
              (Prelude.catMaybes
                 [(JSON..=) "Command" Prelude.<$> command,
                  (JSON..=) "DependsOn" Prelude.<$> dependsOn,
                  (JSON..=) "Environment" Prelude.<$> environment,
                  (JSON..=) "Essential" Prelude.<$> essential,
                  (JSON..=) "LinuxParameters" Prelude.<$> linuxParameters,
                  (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
                  (JSON..=) "MountPoints" Prelude.<$> mountPoints,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Privileged" Prelude.<$> privileged,
                  (JSON..=) "ReadonlyRootFilesystem"
                    Prelude.<$> readonlyRootFilesystem,
                  (JSON..=) "RepositoryCredentials"
                    Prelude.<$> repositoryCredentials,
                  (JSON..=) "ResourceRequirements" Prelude.<$> resourceRequirements,
                  (JSON..=) "Secrets" Prelude.<$> secrets,
                  (JSON..=) "Ulimits" Prelude.<$> ulimits,
                  (JSON..=) "User" Prelude.<$> user])))
instance Property "Command" TaskContainerPropertiesProperty where
  type PropertyType "Command" TaskContainerPropertiesProperty = ValueList Prelude.Text
  set newValue TaskContainerPropertiesProperty {..}
    = TaskContainerPropertiesProperty
        {command = Prelude.pure newValue, ..}
instance Property "DependsOn" TaskContainerPropertiesProperty where
  type PropertyType "DependsOn" TaskContainerPropertiesProperty = [TaskContainerDependencyProperty]
  set newValue TaskContainerPropertiesProperty {..}
    = TaskContainerPropertiesProperty
        {dependsOn = Prelude.pure newValue, ..}
instance Property "Environment" TaskContainerPropertiesProperty where
  type PropertyType "Environment" TaskContainerPropertiesProperty = [EnvironmentProperty]
  set newValue TaskContainerPropertiesProperty {..}
    = TaskContainerPropertiesProperty
        {environment = Prelude.pure newValue, ..}
instance Property "Essential" TaskContainerPropertiesProperty where
  type PropertyType "Essential" TaskContainerPropertiesProperty = Value Prelude.Bool
  set newValue TaskContainerPropertiesProperty {..}
    = TaskContainerPropertiesProperty
        {essential = Prelude.pure newValue, ..}
instance Property "Image" TaskContainerPropertiesProperty where
  type PropertyType "Image" TaskContainerPropertiesProperty = Value Prelude.Text
  set newValue TaskContainerPropertiesProperty {..}
    = TaskContainerPropertiesProperty {image = newValue, ..}
instance Property "LinuxParameters" TaskContainerPropertiesProperty where
  type PropertyType "LinuxParameters" TaskContainerPropertiesProperty = LinuxParametersProperty
  set newValue TaskContainerPropertiesProperty {..}
    = TaskContainerPropertiesProperty
        {linuxParameters = Prelude.pure newValue, ..}
instance Property "LogConfiguration" TaskContainerPropertiesProperty where
  type PropertyType "LogConfiguration" TaskContainerPropertiesProperty = LogConfigurationProperty
  set newValue TaskContainerPropertiesProperty {..}
    = TaskContainerPropertiesProperty
        {logConfiguration = Prelude.pure newValue, ..}
instance Property "MountPoints" TaskContainerPropertiesProperty where
  type PropertyType "MountPoints" TaskContainerPropertiesProperty = [MountPointsProperty]
  set newValue TaskContainerPropertiesProperty {..}
    = TaskContainerPropertiesProperty
        {mountPoints = Prelude.pure newValue, ..}
instance Property "Name" TaskContainerPropertiesProperty where
  type PropertyType "Name" TaskContainerPropertiesProperty = Value Prelude.Text
  set newValue TaskContainerPropertiesProperty {..}
    = TaskContainerPropertiesProperty
        {name = Prelude.pure newValue, ..}
instance Property "Privileged" TaskContainerPropertiesProperty where
  type PropertyType "Privileged" TaskContainerPropertiesProperty = Value Prelude.Bool
  set newValue TaskContainerPropertiesProperty {..}
    = TaskContainerPropertiesProperty
        {privileged = Prelude.pure newValue, ..}
instance Property "ReadonlyRootFilesystem" TaskContainerPropertiesProperty where
  type PropertyType "ReadonlyRootFilesystem" TaskContainerPropertiesProperty = Value Prelude.Bool
  set newValue TaskContainerPropertiesProperty {..}
    = TaskContainerPropertiesProperty
        {readonlyRootFilesystem = Prelude.pure newValue, ..}
instance Property "RepositoryCredentials" TaskContainerPropertiesProperty where
  type PropertyType "RepositoryCredentials" TaskContainerPropertiesProperty = RepositoryCredentialsProperty
  set newValue TaskContainerPropertiesProperty {..}
    = TaskContainerPropertiesProperty
        {repositoryCredentials = Prelude.pure newValue, ..}
instance Property "ResourceRequirements" TaskContainerPropertiesProperty where
  type PropertyType "ResourceRequirements" TaskContainerPropertiesProperty = [ResourceRequirementProperty]
  set newValue TaskContainerPropertiesProperty {..}
    = TaskContainerPropertiesProperty
        {resourceRequirements = Prelude.pure newValue, ..}
instance Property "Secrets" TaskContainerPropertiesProperty where
  type PropertyType "Secrets" TaskContainerPropertiesProperty = [SecretProperty]
  set newValue TaskContainerPropertiesProperty {..}
    = TaskContainerPropertiesProperty
        {secrets = Prelude.pure newValue, ..}
instance Property "Ulimits" TaskContainerPropertiesProperty where
  type PropertyType "Ulimits" TaskContainerPropertiesProperty = [UlimitProperty]
  set newValue TaskContainerPropertiesProperty {..}
    = TaskContainerPropertiesProperty
        {ulimits = Prelude.pure newValue, ..}
instance Property "User" TaskContainerPropertiesProperty where
  type PropertyType "User" TaskContainerPropertiesProperty = Value Prelude.Text
  set newValue TaskContainerPropertiesProperty {..}
    = TaskContainerPropertiesProperty
        {user = Prelude.pure newValue, ..}