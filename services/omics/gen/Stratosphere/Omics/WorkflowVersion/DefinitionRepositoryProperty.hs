module Stratosphere.Omics.WorkflowVersion.DefinitionRepositoryProperty (
        module Exports, DefinitionRepositoryProperty(..),
        mkDefinitionRepositoryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Omics.WorkflowVersion.SourceReferenceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefinitionRepositoryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-definitionrepository.html>
    DefinitionRepositoryProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-definitionrepository.html#cfn-omics-workflowversion-definitionrepository-connectionarn>
                                  connectionArn :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-definitionrepository.html#cfn-omics-workflowversion-definitionrepository-excludefilepatterns>
                                  excludeFilePatterns :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-definitionrepository.html#cfn-omics-workflowversion-definitionrepository-fullrepositoryid>
                                  fullRepositoryId :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-definitionrepository.html#cfn-omics-workflowversion-definitionrepository-sourcereference>
                                  sourceReference :: (Prelude.Maybe SourceReferenceProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefinitionRepositoryProperty :: DefinitionRepositoryProperty
mkDefinitionRepositoryProperty
  = DefinitionRepositoryProperty
      {haddock_workaround_ = (), connectionArn = Prelude.Nothing,
       excludeFilePatterns = Prelude.Nothing,
       fullRepositoryId = Prelude.Nothing,
       sourceReference = Prelude.Nothing}
instance ToResourceProperties DefinitionRepositoryProperty where
  toResourceProperties DefinitionRepositoryProperty {..}
    = ResourceProperties
        {awsType = "AWS::Omics::WorkflowVersion.DefinitionRepository",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "connectionArn" Prelude.<$> connectionArn,
                            (JSON..=) "excludeFilePatterns" Prelude.<$> excludeFilePatterns,
                            (JSON..=) "fullRepositoryId" Prelude.<$> fullRepositoryId,
                            (JSON..=) "sourceReference" Prelude.<$> sourceReference])}
instance JSON.ToJSON DefinitionRepositoryProperty where
  toJSON DefinitionRepositoryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "connectionArn" Prelude.<$> connectionArn,
               (JSON..=) "excludeFilePatterns" Prelude.<$> excludeFilePatterns,
               (JSON..=) "fullRepositoryId" Prelude.<$> fullRepositoryId,
               (JSON..=) "sourceReference" Prelude.<$> sourceReference]))
instance Property "connectionArn" DefinitionRepositoryProperty where
  type PropertyType "connectionArn" DefinitionRepositoryProperty = Value Prelude.Text
  set newValue DefinitionRepositoryProperty {..}
    = DefinitionRepositoryProperty
        {connectionArn = Prelude.pure newValue, ..}
instance Property "excludeFilePatterns" DefinitionRepositoryProperty where
  type PropertyType "excludeFilePatterns" DefinitionRepositoryProperty = ValueList Prelude.Text
  set newValue DefinitionRepositoryProperty {..}
    = DefinitionRepositoryProperty
        {excludeFilePatterns = Prelude.pure newValue, ..}
instance Property "fullRepositoryId" DefinitionRepositoryProperty where
  type PropertyType "fullRepositoryId" DefinitionRepositoryProperty = Value Prelude.Text
  set newValue DefinitionRepositoryProperty {..}
    = DefinitionRepositoryProperty
        {fullRepositoryId = Prelude.pure newValue, ..}
instance Property "sourceReference" DefinitionRepositoryProperty where
  type PropertyType "sourceReference" DefinitionRepositoryProperty = SourceReferenceProperty
  set newValue DefinitionRepositoryProperty {..}
    = DefinitionRepositoryProperty
        {sourceReference = Prelude.pure newValue, ..}