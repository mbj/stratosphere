module Stratosphere.CodeBuild.Project (
        module Exports, Project(..), mkProject
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.ArtifactsProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.EnvironmentProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.LogsConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.ProjectBuildBatchConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.ProjectCacheProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.ProjectFileSystemLocationProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.ProjectSourceVersionProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.ProjectTriggersProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.SourceProperty as Exports
import {-# SOURCE #-} Stratosphere.CodeBuild.Project.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Project
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html>
    Project {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-artifacts>
             artifacts :: ArtifactsProperty,
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-autoretrylimit>
             autoRetryLimit :: (Prelude.Maybe (Value Prelude.Integer)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-badgeenabled>
             badgeEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-buildbatchconfig>
             buildBatchConfig :: (Prelude.Maybe ProjectBuildBatchConfigProperty),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-cache>
             cache :: (Prelude.Maybe ProjectCacheProperty),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-concurrentbuildlimit>
             concurrentBuildLimit :: (Prelude.Maybe (Value Prelude.Integer)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-description>
             description :: (Prelude.Maybe (Value Prelude.Text)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-encryptionkey>
             encryptionKey :: (Prelude.Maybe (Value Prelude.Text)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-environment>
             environment :: EnvironmentProperty,
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-filesystemlocations>
             fileSystemLocations :: (Prelude.Maybe [ProjectFileSystemLocationProperty]),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-logsconfig>
             logsConfig :: (Prelude.Maybe LogsConfigProperty),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-name>
             name :: (Prelude.Maybe (Value Prelude.Text)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-queuedtimeoutinminutes>
             queuedTimeoutInMinutes :: (Prelude.Maybe (Value Prelude.Integer)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-resourceaccessrole>
             resourceAccessRole :: (Prelude.Maybe (Value Prelude.Text)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-secondaryartifacts>
             secondaryArtifacts :: (Prelude.Maybe [ArtifactsProperty]),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-secondarysourceversions>
             secondarySourceVersions :: (Prelude.Maybe [ProjectSourceVersionProperty]),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-secondarysources>
             secondarySources :: (Prelude.Maybe [SourceProperty]),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-servicerole>
             serviceRole :: (Value Prelude.Text),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-source>
             source :: SourceProperty,
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-sourceversion>
             sourceVersion :: (Prelude.Maybe (Value Prelude.Text)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-tags>
             tags :: (Prelude.Maybe [Tag]),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-timeoutinminutes>
             timeoutInMinutes :: (Prelude.Maybe (Value Prelude.Integer)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-triggers>
             triggers :: (Prelude.Maybe ProjectTriggersProperty),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-visibility>
             visibility :: (Prelude.Maybe (Value Prelude.Text)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-codebuild-project.html#cfn-codebuild-project-vpcconfig>
             vpcConfig :: (Prelude.Maybe VpcConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkProject ::
  ArtifactsProperty
  -> EnvironmentProperty
     -> Value Prelude.Text -> SourceProperty -> Project
mkProject artifacts environment serviceRole source
  = Project
      {artifacts = artifacts, environment = environment,
       serviceRole = serviceRole, source = source,
       autoRetryLimit = Prelude.Nothing, badgeEnabled = Prelude.Nothing,
       buildBatchConfig = Prelude.Nothing, cache = Prelude.Nothing,
       concurrentBuildLimit = Prelude.Nothing,
       description = Prelude.Nothing, encryptionKey = Prelude.Nothing,
       fileSystemLocations = Prelude.Nothing,
       logsConfig = Prelude.Nothing, name = Prelude.Nothing,
       queuedTimeoutInMinutes = Prelude.Nothing,
       resourceAccessRole = Prelude.Nothing,
       secondaryArtifacts = Prelude.Nothing,
       secondarySourceVersions = Prelude.Nothing,
       secondarySources = Prelude.Nothing,
       sourceVersion = Prelude.Nothing, tags = Prelude.Nothing,
       timeoutInMinutes = Prelude.Nothing, triggers = Prelude.Nothing,
       visibility = Prelude.Nothing, vpcConfig = Prelude.Nothing}
instance ToResourceProperties Project where
  toResourceProperties Project {..}
    = ResourceProperties
        {awsType = "AWS::CodeBuild::Project", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Artifacts" JSON..= artifacts, "Environment" JSON..= environment,
                            "ServiceRole" JSON..= serviceRole, "Source" JSON..= source]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoRetryLimit" Prelude.<$> autoRetryLimit,
                               (JSON..=) "BadgeEnabled" Prelude.<$> badgeEnabled,
                               (JSON..=) "BuildBatchConfig" Prelude.<$> buildBatchConfig,
                               (JSON..=) "Cache" Prelude.<$> cache,
                               (JSON..=) "ConcurrentBuildLimit" Prelude.<$> concurrentBuildLimit,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EncryptionKey" Prelude.<$> encryptionKey,
                               (JSON..=) "FileSystemLocations" Prelude.<$> fileSystemLocations,
                               (JSON..=) "LogsConfig" Prelude.<$> logsConfig,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "QueuedTimeoutInMinutes"
                                 Prelude.<$> queuedTimeoutInMinutes,
                               (JSON..=) "ResourceAccessRole" Prelude.<$> resourceAccessRole,
                               (JSON..=) "SecondaryArtifacts" Prelude.<$> secondaryArtifacts,
                               (JSON..=) "SecondarySourceVersions"
                                 Prelude.<$> secondarySourceVersions,
                               (JSON..=) "SecondarySources" Prelude.<$> secondarySources,
                               (JSON..=) "SourceVersion" Prelude.<$> sourceVersion,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TimeoutInMinutes" Prelude.<$> timeoutInMinutes,
                               (JSON..=) "Triggers" Prelude.<$> triggers,
                               (JSON..=) "Visibility" Prelude.<$> visibility,
                               (JSON..=) "VpcConfig" Prelude.<$> vpcConfig]))}
instance JSON.ToJSON Project where
  toJSON Project {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Artifacts" JSON..= artifacts, "Environment" JSON..= environment,
               "ServiceRole" JSON..= serviceRole, "Source" JSON..= source]
              (Prelude.catMaybes
                 [(JSON..=) "AutoRetryLimit" Prelude.<$> autoRetryLimit,
                  (JSON..=) "BadgeEnabled" Prelude.<$> badgeEnabled,
                  (JSON..=) "BuildBatchConfig" Prelude.<$> buildBatchConfig,
                  (JSON..=) "Cache" Prelude.<$> cache,
                  (JSON..=) "ConcurrentBuildLimit" Prelude.<$> concurrentBuildLimit,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EncryptionKey" Prelude.<$> encryptionKey,
                  (JSON..=) "FileSystemLocations" Prelude.<$> fileSystemLocations,
                  (JSON..=) "LogsConfig" Prelude.<$> logsConfig,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "QueuedTimeoutInMinutes"
                    Prelude.<$> queuedTimeoutInMinutes,
                  (JSON..=) "ResourceAccessRole" Prelude.<$> resourceAccessRole,
                  (JSON..=) "SecondaryArtifacts" Prelude.<$> secondaryArtifacts,
                  (JSON..=) "SecondarySourceVersions"
                    Prelude.<$> secondarySourceVersions,
                  (JSON..=) "SecondarySources" Prelude.<$> secondarySources,
                  (JSON..=) "SourceVersion" Prelude.<$> sourceVersion,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TimeoutInMinutes" Prelude.<$> timeoutInMinutes,
                  (JSON..=) "Triggers" Prelude.<$> triggers,
                  (JSON..=) "Visibility" Prelude.<$> visibility,
                  (JSON..=) "VpcConfig" Prelude.<$> vpcConfig])))
instance Property "Artifacts" Project where
  type PropertyType "Artifacts" Project = ArtifactsProperty
  set newValue Project {..} = Project {artifacts = newValue, ..}
instance Property "AutoRetryLimit" Project where
  type PropertyType "AutoRetryLimit" Project = Value Prelude.Integer
  set newValue Project {..}
    = Project {autoRetryLimit = Prelude.pure newValue, ..}
instance Property "BadgeEnabled" Project where
  type PropertyType "BadgeEnabled" Project = Value Prelude.Bool
  set newValue Project {..}
    = Project {badgeEnabled = Prelude.pure newValue, ..}
instance Property "BuildBatchConfig" Project where
  type PropertyType "BuildBatchConfig" Project = ProjectBuildBatchConfigProperty
  set newValue Project {..}
    = Project {buildBatchConfig = Prelude.pure newValue, ..}
instance Property "Cache" Project where
  type PropertyType "Cache" Project = ProjectCacheProperty
  set newValue Project {..}
    = Project {cache = Prelude.pure newValue, ..}
instance Property "ConcurrentBuildLimit" Project where
  type PropertyType "ConcurrentBuildLimit" Project = Value Prelude.Integer
  set newValue Project {..}
    = Project {concurrentBuildLimit = Prelude.pure newValue, ..}
instance Property "Description" Project where
  type PropertyType "Description" Project = Value Prelude.Text
  set newValue Project {..}
    = Project {description = Prelude.pure newValue, ..}
instance Property "EncryptionKey" Project where
  type PropertyType "EncryptionKey" Project = Value Prelude.Text
  set newValue Project {..}
    = Project {encryptionKey = Prelude.pure newValue, ..}
instance Property "Environment" Project where
  type PropertyType "Environment" Project = EnvironmentProperty
  set newValue Project {..} = Project {environment = newValue, ..}
instance Property "FileSystemLocations" Project where
  type PropertyType "FileSystemLocations" Project = [ProjectFileSystemLocationProperty]
  set newValue Project {..}
    = Project {fileSystemLocations = Prelude.pure newValue, ..}
instance Property "LogsConfig" Project where
  type PropertyType "LogsConfig" Project = LogsConfigProperty
  set newValue Project {..}
    = Project {logsConfig = Prelude.pure newValue, ..}
instance Property "Name" Project where
  type PropertyType "Name" Project = Value Prelude.Text
  set newValue Project {..}
    = Project {name = Prelude.pure newValue, ..}
instance Property "QueuedTimeoutInMinutes" Project where
  type PropertyType "QueuedTimeoutInMinutes" Project = Value Prelude.Integer
  set newValue Project {..}
    = Project {queuedTimeoutInMinutes = Prelude.pure newValue, ..}
instance Property "ResourceAccessRole" Project where
  type PropertyType "ResourceAccessRole" Project = Value Prelude.Text
  set newValue Project {..}
    = Project {resourceAccessRole = Prelude.pure newValue, ..}
instance Property "SecondaryArtifacts" Project where
  type PropertyType "SecondaryArtifacts" Project = [ArtifactsProperty]
  set newValue Project {..}
    = Project {secondaryArtifacts = Prelude.pure newValue, ..}
instance Property "SecondarySourceVersions" Project where
  type PropertyType "SecondarySourceVersions" Project = [ProjectSourceVersionProperty]
  set newValue Project {..}
    = Project {secondarySourceVersions = Prelude.pure newValue, ..}
instance Property "SecondarySources" Project where
  type PropertyType "SecondarySources" Project = [SourceProperty]
  set newValue Project {..}
    = Project {secondarySources = Prelude.pure newValue, ..}
instance Property "ServiceRole" Project where
  type PropertyType "ServiceRole" Project = Value Prelude.Text
  set newValue Project {..} = Project {serviceRole = newValue, ..}
instance Property "Source" Project where
  type PropertyType "Source" Project = SourceProperty
  set newValue Project {..} = Project {source = newValue, ..}
instance Property "SourceVersion" Project where
  type PropertyType "SourceVersion" Project = Value Prelude.Text
  set newValue Project {..}
    = Project {sourceVersion = Prelude.pure newValue, ..}
instance Property "Tags" Project where
  type PropertyType "Tags" Project = [Tag]
  set newValue Project {..}
    = Project {tags = Prelude.pure newValue, ..}
instance Property "TimeoutInMinutes" Project where
  type PropertyType "TimeoutInMinutes" Project = Value Prelude.Integer
  set newValue Project {..}
    = Project {timeoutInMinutes = Prelude.pure newValue, ..}
instance Property "Triggers" Project where
  type PropertyType "Triggers" Project = ProjectTriggersProperty
  set newValue Project {..}
    = Project {triggers = Prelude.pure newValue, ..}
instance Property "Visibility" Project where
  type PropertyType "Visibility" Project = Value Prelude.Text
  set newValue Project {..}
    = Project {visibility = Prelude.pure newValue, ..}
instance Property "VpcConfig" Project where
  type PropertyType "VpcConfig" Project = VpcConfigProperty
  set newValue Project {..}
    = Project {vpcConfig = Prelude.pure newValue, ..}