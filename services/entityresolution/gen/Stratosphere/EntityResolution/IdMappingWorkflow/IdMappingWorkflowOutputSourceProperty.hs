module Stratosphere.EntityResolution.IdMappingWorkflow.IdMappingWorkflowOutputSourceProperty (
        IdMappingWorkflowOutputSourceProperty(..),
        mkIdMappingWorkflowOutputSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdMappingWorkflowOutputSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-idmappingworkflowoutputsource.html>
    IdMappingWorkflowOutputSourceProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-idmappingworkflowoutputsource.html#cfn-entityresolution-idmappingworkflow-idmappingworkflowoutputsource-kmsarn>
                                           kMSArn :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-idmappingworkflow-idmappingworkflowoutputsource.html#cfn-entityresolution-idmappingworkflow-idmappingworkflowoutputsource-outputs3path>
                                           outputS3Path :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdMappingWorkflowOutputSourceProperty ::
  Value Prelude.Text -> IdMappingWorkflowOutputSourceProperty
mkIdMappingWorkflowOutputSourceProperty outputS3Path
  = IdMappingWorkflowOutputSourceProperty
      {haddock_workaround_ = (), outputS3Path = outputS3Path,
       kMSArn = Prelude.Nothing}
instance ToResourceProperties IdMappingWorkflowOutputSourceProperty where
  toResourceProperties IdMappingWorkflowOutputSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::IdMappingWorkflow.IdMappingWorkflowOutputSource",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["OutputS3Path" JSON..= outputS3Path]
                           (Prelude.catMaybes [(JSON..=) "KMSArn" Prelude.<$> kMSArn]))}
instance JSON.ToJSON IdMappingWorkflowOutputSourceProperty where
  toJSON IdMappingWorkflowOutputSourceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["OutputS3Path" JSON..= outputS3Path]
              (Prelude.catMaybes [(JSON..=) "KMSArn" Prelude.<$> kMSArn])))
instance Property "KMSArn" IdMappingWorkflowOutputSourceProperty where
  type PropertyType "KMSArn" IdMappingWorkflowOutputSourceProperty = Value Prelude.Text
  set newValue IdMappingWorkflowOutputSourceProperty {..}
    = IdMappingWorkflowOutputSourceProperty
        {kMSArn = Prelude.pure newValue, ..}
instance Property "OutputS3Path" IdMappingWorkflowOutputSourceProperty where
  type PropertyType "OutputS3Path" IdMappingWorkflowOutputSourceProperty = Value Prelude.Text
  set newValue IdMappingWorkflowOutputSourceProperty {..}
    = IdMappingWorkflowOutputSourceProperty
        {outputS3Path = newValue, ..}