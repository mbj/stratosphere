module Stratosphere.SageMaker.ModelPackage.MetadataPropertiesProperty (
        MetadataPropertiesProperty(..), mkMetadataPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetadataPropertiesProperty
  = MetadataPropertiesProperty {commitId :: (Prelude.Maybe (Value Prelude.Text)),
                                generatedBy :: (Prelude.Maybe (Value Prelude.Text)),
                                projectId :: (Prelude.Maybe (Value Prelude.Text)),
                                repository :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetadataPropertiesProperty :: MetadataPropertiesProperty
mkMetadataPropertiesProperty
  = MetadataPropertiesProperty
      {commitId = Prelude.Nothing, generatedBy = Prelude.Nothing,
       projectId = Prelude.Nothing, repository = Prelude.Nothing}
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