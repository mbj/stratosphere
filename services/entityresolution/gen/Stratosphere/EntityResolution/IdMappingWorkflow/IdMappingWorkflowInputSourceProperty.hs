module Stratosphere.EntityResolution.IdMappingWorkflow.IdMappingWorkflowInputSourceProperty (
        IdMappingWorkflowInputSourceProperty(..),
        mkIdMappingWorkflowInputSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IdMappingWorkflowInputSourceProperty
  = IdMappingWorkflowInputSourceProperty {inputSourceARN :: (Value Prelude.Text),
                                          schemaArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdMappingWorkflowInputSourceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> IdMappingWorkflowInputSourceProperty
mkIdMappingWorkflowInputSourceProperty inputSourceARN schemaArn
  = IdMappingWorkflowInputSourceProperty
      {inputSourceARN = inputSourceARN, schemaArn = schemaArn}
instance ToResourceProperties IdMappingWorkflowInputSourceProperty where
  toResourceProperties IdMappingWorkflowInputSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::IdMappingWorkflow.IdMappingWorkflowInputSource",
         supportsTags = Prelude.False,
         properties = ["InputSourceARN" JSON..= inputSourceARN,
                       "SchemaArn" JSON..= schemaArn]}
instance JSON.ToJSON IdMappingWorkflowInputSourceProperty where
  toJSON IdMappingWorkflowInputSourceProperty {..}
    = JSON.object
        ["InputSourceARN" JSON..= inputSourceARN,
         "SchemaArn" JSON..= schemaArn]
instance Property "InputSourceARN" IdMappingWorkflowInputSourceProperty where
  type PropertyType "InputSourceARN" IdMappingWorkflowInputSourceProperty = Value Prelude.Text
  set newValue IdMappingWorkflowInputSourceProperty {..}
    = IdMappingWorkflowInputSourceProperty
        {inputSourceARN = newValue, ..}
instance Property "SchemaArn" IdMappingWorkflowInputSourceProperty where
  type PropertyType "SchemaArn" IdMappingWorkflowInputSourceProperty = Value Prelude.Text
  set newValue IdMappingWorkflowInputSourceProperty {..}
    = IdMappingWorkflowInputSourceProperty {schemaArn = newValue, ..}