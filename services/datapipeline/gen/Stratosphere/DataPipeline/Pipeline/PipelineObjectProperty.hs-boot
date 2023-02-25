module Stratosphere.DataPipeline.Pipeline.PipelineObjectProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PipelineObjectProperty :: Prelude.Type
instance ToResourceProperties PipelineObjectProperty
instance JSON.ToJSON PipelineObjectProperty