module Stratosphere.ECS.TaskDefinition.ContainerDefinitionProperty (
        module Exports, ContainerDefinitionProperty(..),
        mkContainerDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.ContainerDependencyProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.EnvironmentFileProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.FirelensConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.HealthCheckProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.HostEntryProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.KeyValuePairProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.LinuxParametersProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.LogConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.MountPointProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.PortMappingProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.RepositoryCredentialsProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.ResourceRequirementProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.SecretProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.SystemControlProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.UlimitProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.VolumeFromProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContainerDefinitionProperty
  = ContainerDefinitionProperty {command :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                 cpu :: (Prelude.Maybe (Value Prelude.Integer)),
                                 dependsOn :: (Prelude.Maybe [ContainerDependencyProperty]),
                                 disableNetworking :: (Prelude.Maybe (Value Prelude.Bool)),
                                 dnsSearchDomains :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                 dnsServers :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                 dockerLabels :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                 dockerSecurityOptions :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                 entryPoint :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                 environment :: (Prelude.Maybe [KeyValuePairProperty]),
                                 environmentFiles :: (Prelude.Maybe [EnvironmentFileProperty]),
                                 essential :: (Prelude.Maybe (Value Prelude.Bool)),
                                 extraHosts :: (Prelude.Maybe [HostEntryProperty]),
                                 firelensConfiguration :: (Prelude.Maybe FirelensConfigurationProperty),
                                 healthCheck :: (Prelude.Maybe HealthCheckProperty),
                                 hostname :: (Prelude.Maybe (Value Prelude.Text)),
                                 image :: (Value Prelude.Text),
                                 interactive :: (Prelude.Maybe (Value Prelude.Bool)),
                                 links :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                                 linuxParameters :: (Prelude.Maybe LinuxParametersProperty),
                                 logConfiguration :: (Prelude.Maybe LogConfigurationProperty),
                                 memory :: (Prelude.Maybe (Value Prelude.Integer)),
                                 memoryReservation :: (Prelude.Maybe (Value Prelude.Integer)),
                                 mountPoints :: (Prelude.Maybe [MountPointProperty]),
                                 name :: (Value Prelude.Text),
                                 portMappings :: (Prelude.Maybe [PortMappingProperty]),
                                 privileged :: (Prelude.Maybe (Value Prelude.Bool)),
                                 pseudoTerminal :: (Prelude.Maybe (Value Prelude.Bool)),
                                 readonlyRootFilesystem :: (Prelude.Maybe (Value Prelude.Bool)),
                                 repositoryCredentials :: (Prelude.Maybe RepositoryCredentialsProperty),
                                 resourceRequirements :: (Prelude.Maybe [ResourceRequirementProperty]),
                                 secrets :: (Prelude.Maybe [SecretProperty]),
                                 startTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                                 stopTimeout :: (Prelude.Maybe (Value Prelude.Integer)),
                                 systemControls :: (Prelude.Maybe [SystemControlProperty]),
                                 ulimits :: (Prelude.Maybe [UlimitProperty]),
                                 user :: (Prelude.Maybe (Value Prelude.Text)),
                                 volumesFrom :: (Prelude.Maybe [VolumeFromProperty]),
                                 workingDirectory :: (Prelude.Maybe (Value Prelude.Text))}
mkContainerDefinitionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ContainerDefinitionProperty
mkContainerDefinitionProperty image name
  = ContainerDefinitionProperty
      {image = image, name = name, command = Prelude.Nothing,
       cpu = Prelude.Nothing, dependsOn = Prelude.Nothing,
       disableNetworking = Prelude.Nothing,
       dnsSearchDomains = Prelude.Nothing, dnsServers = Prelude.Nothing,
       dockerLabels = Prelude.Nothing,
       dockerSecurityOptions = Prelude.Nothing,
       entryPoint = Prelude.Nothing, environment = Prelude.Nothing,
       environmentFiles = Prelude.Nothing, essential = Prelude.Nothing,
       extraHosts = Prelude.Nothing,
       firelensConfiguration = Prelude.Nothing,
       healthCheck = Prelude.Nothing, hostname = Prelude.Nothing,
       interactive = Prelude.Nothing, links = Prelude.Nothing,
       linuxParameters = Prelude.Nothing,
       logConfiguration = Prelude.Nothing, memory = Prelude.Nothing,
       memoryReservation = Prelude.Nothing, mountPoints = Prelude.Nothing,
       portMappings = Prelude.Nothing, privileged = Prelude.Nothing,
       pseudoTerminal = Prelude.Nothing,
       readonlyRootFilesystem = Prelude.Nothing,
       repositoryCredentials = Prelude.Nothing,
       resourceRequirements = Prelude.Nothing, secrets = Prelude.Nothing,
       startTimeout = Prelude.Nothing, stopTimeout = Prelude.Nothing,
       systemControls = Prelude.Nothing, ulimits = Prelude.Nothing,
       user = Prelude.Nothing, volumesFrom = Prelude.Nothing,
       workingDirectory = Prelude.Nothing}
instance ToResourceProperties ContainerDefinitionProperty where
  toResourceProperties ContainerDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.ContainerDefinition",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Image" JSON..= image, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Command" Prelude.<$> command,
                               (JSON..=) "Cpu" Prelude.<$> cpu,
                               (JSON..=) "DependsOn" Prelude.<$> dependsOn,
                               (JSON..=) "DisableNetworking" Prelude.<$> disableNetworking,
                               (JSON..=) "DnsSearchDomains" Prelude.<$> dnsSearchDomains,
                               (JSON..=) "DnsServers" Prelude.<$> dnsServers,
                               (JSON..=) "DockerLabels" Prelude.<$> dockerLabels,
                               (JSON..=) "DockerSecurityOptions"
                                 Prelude.<$> dockerSecurityOptions,
                               (JSON..=) "EntryPoint" Prelude.<$> entryPoint,
                               (JSON..=) "Environment" Prelude.<$> environment,
                               (JSON..=) "EnvironmentFiles" Prelude.<$> environmentFiles,
                               (JSON..=) "Essential" Prelude.<$> essential,
                               (JSON..=) "ExtraHosts" Prelude.<$> extraHosts,
                               (JSON..=) "FirelensConfiguration"
                                 Prelude.<$> firelensConfiguration,
                               (JSON..=) "HealthCheck" Prelude.<$> healthCheck,
                               (JSON..=) "Hostname" Prelude.<$> hostname,
                               (JSON..=) "Interactive" Prelude.<$> interactive,
                               (JSON..=) "Links" Prelude.<$> links,
                               (JSON..=) "LinuxParameters" Prelude.<$> linuxParameters,
                               (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
                               (JSON..=) "Memory" Prelude.<$> memory,
                               (JSON..=) "MemoryReservation" Prelude.<$> memoryReservation,
                               (JSON..=) "MountPoints" Prelude.<$> mountPoints,
                               (JSON..=) "PortMappings" Prelude.<$> portMappings,
                               (JSON..=) "Privileged" Prelude.<$> privileged,
                               (JSON..=) "PseudoTerminal" Prelude.<$> pseudoTerminal,
                               (JSON..=) "ReadonlyRootFilesystem"
                                 Prelude.<$> readonlyRootFilesystem,
                               (JSON..=) "RepositoryCredentials"
                                 Prelude.<$> repositoryCredentials,
                               (JSON..=) "ResourceRequirements" Prelude.<$> resourceRequirements,
                               (JSON..=) "Secrets" Prelude.<$> secrets,
                               (JSON..=) "StartTimeout" Prelude.<$> startTimeout,
                               (JSON..=) "StopTimeout" Prelude.<$> stopTimeout,
                               (JSON..=) "SystemControls" Prelude.<$> systemControls,
                               (JSON..=) "Ulimits" Prelude.<$> ulimits,
                               (JSON..=) "User" Prelude.<$> user,
                               (JSON..=) "VolumesFrom" Prelude.<$> volumesFrom,
                               (JSON..=) "WorkingDirectory" Prelude.<$> workingDirectory]))}
instance JSON.ToJSON ContainerDefinitionProperty where
  toJSON ContainerDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Image" JSON..= image, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Command" Prelude.<$> command,
                  (JSON..=) "Cpu" Prelude.<$> cpu,
                  (JSON..=) "DependsOn" Prelude.<$> dependsOn,
                  (JSON..=) "DisableNetworking" Prelude.<$> disableNetworking,
                  (JSON..=) "DnsSearchDomains" Prelude.<$> dnsSearchDomains,
                  (JSON..=) "DnsServers" Prelude.<$> dnsServers,
                  (JSON..=) "DockerLabels" Prelude.<$> dockerLabels,
                  (JSON..=) "DockerSecurityOptions"
                    Prelude.<$> dockerSecurityOptions,
                  (JSON..=) "EntryPoint" Prelude.<$> entryPoint,
                  (JSON..=) "Environment" Prelude.<$> environment,
                  (JSON..=) "EnvironmentFiles" Prelude.<$> environmentFiles,
                  (JSON..=) "Essential" Prelude.<$> essential,
                  (JSON..=) "ExtraHosts" Prelude.<$> extraHosts,
                  (JSON..=) "FirelensConfiguration"
                    Prelude.<$> firelensConfiguration,
                  (JSON..=) "HealthCheck" Prelude.<$> healthCheck,
                  (JSON..=) "Hostname" Prelude.<$> hostname,
                  (JSON..=) "Interactive" Prelude.<$> interactive,
                  (JSON..=) "Links" Prelude.<$> links,
                  (JSON..=) "LinuxParameters" Prelude.<$> linuxParameters,
                  (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
                  (JSON..=) "Memory" Prelude.<$> memory,
                  (JSON..=) "MemoryReservation" Prelude.<$> memoryReservation,
                  (JSON..=) "MountPoints" Prelude.<$> mountPoints,
                  (JSON..=) "PortMappings" Prelude.<$> portMappings,
                  (JSON..=) "Privileged" Prelude.<$> privileged,
                  (JSON..=) "PseudoTerminal" Prelude.<$> pseudoTerminal,
                  (JSON..=) "ReadonlyRootFilesystem"
                    Prelude.<$> readonlyRootFilesystem,
                  (JSON..=) "RepositoryCredentials"
                    Prelude.<$> repositoryCredentials,
                  (JSON..=) "ResourceRequirements" Prelude.<$> resourceRequirements,
                  (JSON..=) "Secrets" Prelude.<$> secrets,
                  (JSON..=) "StartTimeout" Prelude.<$> startTimeout,
                  (JSON..=) "StopTimeout" Prelude.<$> stopTimeout,
                  (JSON..=) "SystemControls" Prelude.<$> systemControls,
                  (JSON..=) "Ulimits" Prelude.<$> ulimits,
                  (JSON..=) "User" Prelude.<$> user,
                  (JSON..=) "VolumesFrom" Prelude.<$> volumesFrom,
                  (JSON..=) "WorkingDirectory" Prelude.<$> workingDirectory])))
instance Property "Command" ContainerDefinitionProperty where
  type PropertyType "Command" ContainerDefinitionProperty = ValueList (Value Prelude.Text)
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty {command = Prelude.pure newValue, ..}
instance Property "Cpu" ContainerDefinitionProperty where
  type PropertyType "Cpu" ContainerDefinitionProperty = Value Prelude.Integer
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty {cpu = Prelude.pure newValue, ..}
instance Property "DependsOn" ContainerDefinitionProperty where
  type PropertyType "DependsOn" ContainerDefinitionProperty = [ContainerDependencyProperty]
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {dependsOn = Prelude.pure newValue, ..}
instance Property "DisableNetworking" ContainerDefinitionProperty where
  type PropertyType "DisableNetworking" ContainerDefinitionProperty = Value Prelude.Bool
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {disableNetworking = Prelude.pure newValue, ..}
instance Property "DnsSearchDomains" ContainerDefinitionProperty where
  type PropertyType "DnsSearchDomains" ContainerDefinitionProperty = ValueList (Value Prelude.Text)
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {dnsSearchDomains = Prelude.pure newValue, ..}
instance Property "DnsServers" ContainerDefinitionProperty where
  type PropertyType "DnsServers" ContainerDefinitionProperty = ValueList (Value Prelude.Text)
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {dnsServers = Prelude.pure newValue, ..}
instance Property "DockerLabels" ContainerDefinitionProperty where
  type PropertyType "DockerLabels" ContainerDefinitionProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {dockerLabels = Prelude.pure newValue, ..}
instance Property "DockerSecurityOptions" ContainerDefinitionProperty where
  type PropertyType "DockerSecurityOptions" ContainerDefinitionProperty = ValueList (Value Prelude.Text)
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {dockerSecurityOptions = Prelude.pure newValue, ..}
instance Property "EntryPoint" ContainerDefinitionProperty where
  type PropertyType "EntryPoint" ContainerDefinitionProperty = ValueList (Value Prelude.Text)
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {entryPoint = Prelude.pure newValue, ..}
instance Property "Environment" ContainerDefinitionProperty where
  type PropertyType "Environment" ContainerDefinitionProperty = [KeyValuePairProperty]
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {environment = Prelude.pure newValue, ..}
instance Property "EnvironmentFiles" ContainerDefinitionProperty where
  type PropertyType "EnvironmentFiles" ContainerDefinitionProperty = [EnvironmentFileProperty]
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {environmentFiles = Prelude.pure newValue, ..}
instance Property "Essential" ContainerDefinitionProperty where
  type PropertyType "Essential" ContainerDefinitionProperty = Value Prelude.Bool
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {essential = Prelude.pure newValue, ..}
instance Property "ExtraHosts" ContainerDefinitionProperty where
  type PropertyType "ExtraHosts" ContainerDefinitionProperty = [HostEntryProperty]
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {extraHosts = Prelude.pure newValue, ..}
instance Property "FirelensConfiguration" ContainerDefinitionProperty where
  type PropertyType "FirelensConfiguration" ContainerDefinitionProperty = FirelensConfigurationProperty
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {firelensConfiguration = Prelude.pure newValue, ..}
instance Property "HealthCheck" ContainerDefinitionProperty where
  type PropertyType "HealthCheck" ContainerDefinitionProperty = HealthCheckProperty
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {healthCheck = Prelude.pure newValue, ..}
instance Property "Hostname" ContainerDefinitionProperty where
  type PropertyType "Hostname" ContainerDefinitionProperty = Value Prelude.Text
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {hostname = Prelude.pure newValue, ..}
instance Property "Image" ContainerDefinitionProperty where
  type PropertyType "Image" ContainerDefinitionProperty = Value Prelude.Text
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty {image = newValue, ..}
instance Property "Interactive" ContainerDefinitionProperty where
  type PropertyType "Interactive" ContainerDefinitionProperty = Value Prelude.Bool
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {interactive = Prelude.pure newValue, ..}
instance Property "Links" ContainerDefinitionProperty where
  type PropertyType "Links" ContainerDefinitionProperty = ValueList (Value Prelude.Text)
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty {links = Prelude.pure newValue, ..}
instance Property "LinuxParameters" ContainerDefinitionProperty where
  type PropertyType "LinuxParameters" ContainerDefinitionProperty = LinuxParametersProperty
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {linuxParameters = Prelude.pure newValue, ..}
instance Property "LogConfiguration" ContainerDefinitionProperty where
  type PropertyType "LogConfiguration" ContainerDefinitionProperty = LogConfigurationProperty
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {logConfiguration = Prelude.pure newValue, ..}
instance Property "Memory" ContainerDefinitionProperty where
  type PropertyType "Memory" ContainerDefinitionProperty = Value Prelude.Integer
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty {memory = Prelude.pure newValue, ..}
instance Property "MemoryReservation" ContainerDefinitionProperty where
  type PropertyType "MemoryReservation" ContainerDefinitionProperty = Value Prelude.Integer
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {memoryReservation = Prelude.pure newValue, ..}
instance Property "MountPoints" ContainerDefinitionProperty where
  type PropertyType "MountPoints" ContainerDefinitionProperty = [MountPointProperty]
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {mountPoints = Prelude.pure newValue, ..}
instance Property "Name" ContainerDefinitionProperty where
  type PropertyType "Name" ContainerDefinitionProperty = Value Prelude.Text
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty {name = newValue, ..}
instance Property "PortMappings" ContainerDefinitionProperty where
  type PropertyType "PortMappings" ContainerDefinitionProperty = [PortMappingProperty]
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {portMappings = Prelude.pure newValue, ..}
instance Property "Privileged" ContainerDefinitionProperty where
  type PropertyType "Privileged" ContainerDefinitionProperty = Value Prelude.Bool
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {privileged = Prelude.pure newValue, ..}
instance Property "PseudoTerminal" ContainerDefinitionProperty where
  type PropertyType "PseudoTerminal" ContainerDefinitionProperty = Value Prelude.Bool
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {pseudoTerminal = Prelude.pure newValue, ..}
instance Property "ReadonlyRootFilesystem" ContainerDefinitionProperty where
  type PropertyType "ReadonlyRootFilesystem" ContainerDefinitionProperty = Value Prelude.Bool
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {readonlyRootFilesystem = Prelude.pure newValue, ..}
instance Property "RepositoryCredentials" ContainerDefinitionProperty where
  type PropertyType "RepositoryCredentials" ContainerDefinitionProperty = RepositoryCredentialsProperty
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {repositoryCredentials = Prelude.pure newValue, ..}
instance Property "ResourceRequirements" ContainerDefinitionProperty where
  type PropertyType "ResourceRequirements" ContainerDefinitionProperty = [ResourceRequirementProperty]
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {resourceRequirements = Prelude.pure newValue, ..}
instance Property "Secrets" ContainerDefinitionProperty where
  type PropertyType "Secrets" ContainerDefinitionProperty = [SecretProperty]
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty {secrets = Prelude.pure newValue, ..}
instance Property "StartTimeout" ContainerDefinitionProperty where
  type PropertyType "StartTimeout" ContainerDefinitionProperty = Value Prelude.Integer
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {startTimeout = Prelude.pure newValue, ..}
instance Property "StopTimeout" ContainerDefinitionProperty where
  type PropertyType "StopTimeout" ContainerDefinitionProperty = Value Prelude.Integer
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {stopTimeout = Prelude.pure newValue, ..}
instance Property "SystemControls" ContainerDefinitionProperty where
  type PropertyType "SystemControls" ContainerDefinitionProperty = [SystemControlProperty]
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {systemControls = Prelude.pure newValue, ..}
instance Property "Ulimits" ContainerDefinitionProperty where
  type PropertyType "Ulimits" ContainerDefinitionProperty = [UlimitProperty]
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty {ulimits = Prelude.pure newValue, ..}
instance Property "User" ContainerDefinitionProperty where
  type PropertyType "User" ContainerDefinitionProperty = Value Prelude.Text
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty {user = Prelude.pure newValue, ..}
instance Property "VolumesFrom" ContainerDefinitionProperty where
  type PropertyType "VolumesFrom" ContainerDefinitionProperty = [VolumeFromProperty]
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {volumesFrom = Prelude.pure newValue, ..}
instance Property "WorkingDirectory" ContainerDefinitionProperty where
  type PropertyType "WorkingDirectory" ContainerDefinitionProperty = Value Prelude.Text
  set newValue ContainerDefinitionProperty {..}
    = ContainerDefinitionProperty
        {workingDirectory = Prelude.pure newValue, ..}