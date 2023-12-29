module Stratosphere.DataPipeline.Pipeline.PipelineObjectProperty (
        module Exports, PipelineObjectProperty(..),
        mkPipelineObjectProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataPipeline.Pipeline.FieldProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipelineObjectProperty
  = PipelineObjectProperty {fields :: [FieldProperty],
                            id :: (Value Prelude.Text),
                            name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipelineObjectProperty ::
  [FieldProperty]
  -> Value Prelude.Text
     -> Value Prelude.Text -> PipelineObjectProperty
mkPipelineObjectProperty fields id name
  = PipelineObjectProperty {fields = fields, id = id, name = name}
instance ToResourceProperties PipelineObjectProperty where
  toResourceProperties PipelineObjectProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataPipeline::Pipeline.PipelineObject",
         supportsTags = Prelude.False,
         properties = ["Fields" JSON..= fields, "Id" JSON..= id,
                       "Name" JSON..= name]}
instance JSON.ToJSON PipelineObjectProperty where
  toJSON PipelineObjectProperty {..}
    = JSON.object
        ["Fields" JSON..= fields, "Id" JSON..= id, "Name" JSON..= name]
instance Property "Fields" PipelineObjectProperty where
  type PropertyType "Fields" PipelineObjectProperty = [FieldProperty]
  set newValue PipelineObjectProperty {..}
    = PipelineObjectProperty {fields = newValue, ..}
instance Property "Id" PipelineObjectProperty where
  type PropertyType "Id" PipelineObjectProperty = Value Prelude.Text
  set newValue PipelineObjectProperty {..}
    = PipelineObjectProperty {id = newValue, ..}
instance Property "Name" PipelineObjectProperty where
  type PropertyType "Name" PipelineObjectProperty = Value Prelude.Text
  set newValue PipelineObjectProperty {..}
    = PipelineObjectProperty {name = newValue, ..}