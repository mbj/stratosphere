module Stratosphere.SageMaker.ModelPackage.MetadataPropertiesProperty (
        MetadataPropertiesProperty(..), mkMetadataPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetadataPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-metadataproperties.html>
    MetadataPropertiesProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-metadataproperties.html#cfn-sagemaker-modelpackage-metadataproperties-commitid>
                                commitId :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-metadataproperties.html#cfn-sagemaker-modelpackage-metadataproperties-generatedby>
                                generatedBy :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-metadataproperties.html#cfn-sagemaker-modelpackage-metadataproperties-projectid>
                                projectId :: (Prelude.Maybe (Value Prelude.Text)),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelpackage-metadataproperties.html#cfn-sagemaker-modelpackage-metadataproperties-repository>
                                repository :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetadataPropertiesProperty :: MetadataPropertiesProperty
mkMetadataPropertiesProperty
  = MetadataPropertiesProperty
      {haddock_workaround_ = (), commitId = Prelude.Nothing,
       generatedBy = Prelude.Nothing, projectId = Prelude.Nothing,
       repository = Prelude.Nothing}
instance ToResourceProperties MetadataPropertiesProperty where
  toResourceProperties MetadataPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelPackage.MetadataProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CommitId" Prelude.<$> commitId,
                            (JSON..=) "GeneratedBy" Prelude.<$> generatedBy,
                            (JSON..=) "ProjectId" Prelude.<$> projectId,
                            (JSON..=) "Repository" Prelude.<$> repository])}
instance JSON.ToJSON MetadataPropertiesProperty where
  toJSON MetadataPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CommitId" Prelude.<$> commitId,
               (JSON..=) "GeneratedBy" Prelude.<$> generatedBy,
               (JSON..=) "ProjectId" Prelude.<$> projectId,
               (JSON..=) "Repository" Prelude.<$> repository]))
instance Property "CommitId" MetadataPropertiesProperty where
  type PropertyType "CommitId" MetadataPropertiesProperty = Value Prelude.Text
  set newValue MetadataPropertiesProperty {..}
    = MetadataPropertiesProperty {commitId = Prelude.pure newValue, ..}
instance Property "GeneratedBy" MetadataPropertiesProperty where
  type PropertyType "GeneratedBy" MetadataPropertiesProperty = Value Prelude.Text
  set newValue MetadataPropertiesProperty {..}
    = MetadataPropertiesProperty
        {generatedBy = Prelude.pure newValue, ..}
instance Property "ProjectId" MetadataPropertiesProperty where
  type PropertyType "ProjectId" MetadataPropertiesProperty = Value Prelude.Text
  set newValue MetadataPropertiesProperty {..}
    = MetadataPropertiesProperty
        {projectId = Prelude.pure newValue, ..}
instance Property "Repository" MetadataPropertiesProperty where
  type PropertyType "Repository" MetadataPropertiesProperty = Value Prelude.Text
  set newValue MetadataPropertiesProperty {..}
    = MetadataPropertiesProperty
        {repository = Prelude.pure newValue, ..}