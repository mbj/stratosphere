module Stratosphere.DataPipeline.Pipeline.PipelineTagProperty (
        PipelineTagProperty(..), mkPipelineTagProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PipelineTagProperty
  = PipelineTagProperty {key :: (Value Prelude.Text),
                         value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipelineTagProperty ::
  Value Prelude.Text -> Value Prelude.Text -> PipelineTagProperty
mkPipelineTagProperty key value
  = PipelineTagProperty {key = key, value = value}
instance ToResourceProperties PipelineTagProperty where
  toResourceProperties PipelineTagProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataPipeline::Pipeline.PipelineTag",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key, "Value" JSON..= value]}
instance JSON.ToJSON PipelineTagProperty where
  toJSON PipelineTagProperty {..}
    = JSON.object ["Key" JSON..= key, "Value" JSON..= value]
instance Property "Key" PipelineTagProperty where
  type PropertyType "Key" PipelineTagProperty = Value Prelude.Text
  set newValue PipelineTagProperty {..}
    = PipelineTagProperty {key = newValue, ..}
instance Property "Value" PipelineTagProperty where
  type PropertyType "Value" PipelineTagProperty = Value Prelude.Text
  set newValue PipelineTagProperty {..}
    = PipelineTagProperty {value = newValue, ..}