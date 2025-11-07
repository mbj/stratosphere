module Stratosphere.Omics.WorkflowVersion (
        module Exports, WorkflowVersion(..), mkWorkflowVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Omics.WorkflowVersion.ContainerRegistryMapProperty as Exports
import {-# SOURCE #-} Stratosphere.Omics.WorkflowVersion.DefinitionRepositoryProperty as Exports
import {-# SOURCE #-} Stratosphere.Omics.WorkflowVersion.WorkflowParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkflowVersion
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflowversion.html>
    WorkflowVersion {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflowversion.html#cfn-omics-workflowversion-accelerators>
                     accelerators :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflowversion.html#cfn-omics-workflowversion-containerregistrymap>
                     containerRegistryMap :: (Prelude.Maybe ContainerRegistryMapProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflowversion.html#cfn-omics-workflowversion-containerregistrymapuri>
                     containerRegistryMapUri :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflowversion.html#cfn-omics-workflowversion-definitionrepository>
                     definitionRepository :: (Prelude.Maybe DefinitionRepositoryProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflowversion.html#cfn-omics-workflowversion-definitionuri>
                     definitionUri :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflowversion.html#cfn-omics-workflowversion-description>
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflowversion.html#cfn-omics-workflowversion-engine>
                     engine :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflowversion.html#cfn-omics-workflowversion-main>
                     main :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflowversion.html#cfn-omics-workflowversion-parametertemplate>
                     parameterTemplate :: (Prelude.Maybe (Prelude.Map Prelude.Text WorkflowParameterProperty)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflowversion.html#cfn-omics-workflowversion-parametertemplatepath>
                     parameterTemplatePath :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflowversion.html#cfn-omics-workflowversion-storagecapacity>
                     storageCapacity :: (Prelude.Maybe (Value Prelude.Double)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflowversion.html#cfn-omics-workflowversion-storagetype>
                     storageType :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflowversion.html#cfn-omics-workflowversion-tags>
                     tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflowversion.html#cfn-omics-workflowversion-versionname>
                     versionName :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflowversion.html#cfn-omics-workflowversion-workflowbucketownerid>
                     workflowBucketOwnerId :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflowversion.html#cfn-omics-workflowversion-workflowid>
                     workflowId :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflowversion.html#cfn-omics-workflowversion-readmemarkdown>
                     readmeMarkdown :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflowversion.html#cfn-omics-workflowversion-readmepath>
                     readmePath :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflowversion.html#cfn-omics-workflowversion-readmeuri>
                     readmeUri :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkflowVersion ::
  Value Prelude.Text -> Value Prelude.Text -> WorkflowVersion
mkWorkflowVersion versionName workflowId
  = WorkflowVersion
      {haddock_workaround_ = (), versionName = versionName,
       workflowId = workflowId, accelerators = Prelude.Nothing,
       containerRegistryMap = Prelude.Nothing,
       containerRegistryMapUri = Prelude.Nothing,
       definitionRepository = Prelude.Nothing,
       definitionUri = Prelude.Nothing, description = Prelude.Nothing,
       engine = Prelude.Nothing, main = Prelude.Nothing,
       parameterTemplate = Prelude.Nothing,
       parameterTemplatePath = Prelude.Nothing,
       storageCapacity = Prelude.Nothing, storageType = Prelude.Nothing,
       tags = Prelude.Nothing, workflowBucketOwnerId = Prelude.Nothing,
       readmeMarkdown = Prelude.Nothing, readmePath = Prelude.Nothing,
       readmeUri = Prelude.Nothing}
instance ToResourceProperties WorkflowVersion where
  toResourceProperties WorkflowVersion {..}
    = ResourceProperties
        {awsType = "AWS::Omics::WorkflowVersion",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VersionName" JSON..= versionName,
                            "WorkflowId" JSON..= workflowId]
                           (Prelude.catMaybes
                              [(JSON..=) "Accelerators" Prelude.<$> accelerators,
                               (JSON..=) "ContainerRegistryMap" Prelude.<$> containerRegistryMap,
                               (JSON..=) "ContainerRegistryMapUri"
                                 Prelude.<$> containerRegistryMapUri,
                               (JSON..=) "DefinitionRepository" Prelude.<$> definitionRepository,
                               (JSON..=) "DefinitionUri" Prelude.<$> definitionUri,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Engine" Prelude.<$> engine,
                               (JSON..=) "Main" Prelude.<$> main,
                               (JSON..=) "ParameterTemplate" Prelude.<$> parameterTemplate,
                               (JSON..=) "ParameterTemplatePath"
                                 Prelude.<$> parameterTemplatePath,
                               (JSON..=) "StorageCapacity" Prelude.<$> storageCapacity,
                               (JSON..=) "StorageType" Prelude.<$> storageType,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "WorkflowBucketOwnerId"
                                 Prelude.<$> workflowBucketOwnerId,
                               (JSON..=) "readmeMarkdown" Prelude.<$> readmeMarkdown,
                               (JSON..=) "readmePath" Prelude.<$> readmePath,
                               (JSON..=) "readmeUri" Prelude.<$> readmeUri]))}
instance JSON.ToJSON WorkflowVersion where
  toJSON WorkflowVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VersionName" JSON..= versionName,
               "WorkflowId" JSON..= workflowId]
              (Prelude.catMaybes
                 [(JSON..=) "Accelerators" Prelude.<$> accelerators,
                  (JSON..=) "ContainerRegistryMap" Prelude.<$> containerRegistryMap,
                  (JSON..=) "ContainerRegistryMapUri"
                    Prelude.<$> containerRegistryMapUri,
                  (JSON..=) "DefinitionRepository" Prelude.<$> definitionRepository,
                  (JSON..=) "DefinitionUri" Prelude.<$> definitionUri,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Engine" Prelude.<$> engine,
                  (JSON..=) "Main" Prelude.<$> main,
                  (JSON..=) "ParameterTemplate" Prelude.<$> parameterTemplate,
                  (JSON..=) "ParameterTemplatePath"
                    Prelude.<$> parameterTemplatePath,
                  (JSON..=) "StorageCapacity" Prelude.<$> storageCapacity,
                  (JSON..=) "StorageType" Prelude.<$> storageType,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "WorkflowBucketOwnerId"
                    Prelude.<$> workflowBucketOwnerId,
                  (JSON..=) "readmeMarkdown" Prelude.<$> readmeMarkdown,
                  (JSON..=) "readmePath" Prelude.<$> readmePath,
                  (JSON..=) "readmeUri" Prelude.<$> readmeUri])))
instance Property "Accelerators" WorkflowVersion where
  type PropertyType "Accelerators" WorkflowVersion = Value Prelude.Text
  set newValue WorkflowVersion {..}
    = WorkflowVersion {accelerators = Prelude.pure newValue, ..}
instance Property "ContainerRegistryMap" WorkflowVersion where
  type PropertyType "ContainerRegistryMap" WorkflowVersion = ContainerRegistryMapProperty
  set newValue WorkflowVersion {..}
    = WorkflowVersion
        {containerRegistryMap = Prelude.pure newValue, ..}
instance Property "ContainerRegistryMapUri" WorkflowVersion where
  type PropertyType "ContainerRegistryMapUri" WorkflowVersion = Value Prelude.Text
  set newValue WorkflowVersion {..}
    = WorkflowVersion
        {containerRegistryMapUri = Prelude.pure newValue, ..}
instance Property "DefinitionRepository" WorkflowVersion where
  type PropertyType "DefinitionRepository" WorkflowVersion = DefinitionRepositoryProperty
  set newValue WorkflowVersion {..}
    = WorkflowVersion
        {definitionRepository = Prelude.pure newValue, ..}
instance Property "DefinitionUri" WorkflowVersion where
  type PropertyType "DefinitionUri" WorkflowVersion = Value Prelude.Text
  set newValue WorkflowVersion {..}
    = WorkflowVersion {definitionUri = Prelude.pure newValue, ..}
instance Property "Description" WorkflowVersion where
  type PropertyType "Description" WorkflowVersion = Value Prelude.Text
  set newValue WorkflowVersion {..}
    = WorkflowVersion {description = Prelude.pure newValue, ..}
instance Property "Engine" WorkflowVersion where
  type PropertyType "Engine" WorkflowVersion = Value Prelude.Text
  set newValue WorkflowVersion {..}
    = WorkflowVersion {engine = Prelude.pure newValue, ..}
instance Property "Main" WorkflowVersion where
  type PropertyType "Main" WorkflowVersion = Value Prelude.Text
  set newValue WorkflowVersion {..}
    = WorkflowVersion {main = Prelude.pure newValue, ..}
instance Property "ParameterTemplate" WorkflowVersion where
  type PropertyType "ParameterTemplate" WorkflowVersion = Prelude.Map Prelude.Text WorkflowParameterProperty
  set newValue WorkflowVersion {..}
    = WorkflowVersion {parameterTemplate = Prelude.pure newValue, ..}
instance Property "ParameterTemplatePath" WorkflowVersion where
  type PropertyType "ParameterTemplatePath" WorkflowVersion = Value Prelude.Text
  set newValue WorkflowVersion {..}
    = WorkflowVersion
        {parameterTemplatePath = Prelude.pure newValue, ..}
instance Property "StorageCapacity" WorkflowVersion where
  type PropertyType "StorageCapacity" WorkflowVersion = Value Prelude.Double
  set newValue WorkflowVersion {..}
    = WorkflowVersion {storageCapacity = Prelude.pure newValue, ..}
instance Property "StorageType" WorkflowVersion where
  type PropertyType "StorageType" WorkflowVersion = Value Prelude.Text
  set newValue WorkflowVersion {..}
    = WorkflowVersion {storageType = Prelude.pure newValue, ..}
instance Property "Tags" WorkflowVersion where
  type PropertyType "Tags" WorkflowVersion = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue WorkflowVersion {..}
    = WorkflowVersion {tags = Prelude.pure newValue, ..}
instance Property "VersionName" WorkflowVersion where
  type PropertyType "VersionName" WorkflowVersion = Value Prelude.Text
  set newValue WorkflowVersion {..}
    = WorkflowVersion {versionName = newValue, ..}
instance Property "WorkflowBucketOwnerId" WorkflowVersion where
  type PropertyType "WorkflowBucketOwnerId" WorkflowVersion = Value Prelude.Text
  set newValue WorkflowVersion {..}
    = WorkflowVersion
        {workflowBucketOwnerId = Prelude.pure newValue, ..}
instance Property "WorkflowId" WorkflowVersion where
  type PropertyType "WorkflowId" WorkflowVersion = Value Prelude.Text
  set newValue WorkflowVersion {..}
    = WorkflowVersion {workflowId = newValue, ..}
instance Property "readmeMarkdown" WorkflowVersion where
  type PropertyType "readmeMarkdown" WorkflowVersion = Value Prelude.Text
  set newValue WorkflowVersion {..}
    = WorkflowVersion {readmeMarkdown = Prelude.pure newValue, ..}
instance Property "readmePath" WorkflowVersion where
  type PropertyType "readmePath" WorkflowVersion = Value Prelude.Text
  set newValue WorkflowVersion {..}
    = WorkflowVersion {readmePath = Prelude.pure newValue, ..}
instance Property "readmeUri" WorkflowVersion where
  type PropertyType "readmeUri" WorkflowVersion = Value Prelude.Text
  set newValue WorkflowVersion {..}
    = WorkflowVersion {readmeUri = Prelude.pure newValue, ..}