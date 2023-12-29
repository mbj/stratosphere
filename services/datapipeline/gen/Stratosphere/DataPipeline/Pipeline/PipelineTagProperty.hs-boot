module Stratosphere.DataPipeline.Pipeline.PipelineTagProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PipelineTagProperty :: Prelude.Type
instance ToResourceProperties PipelineTagProperty
instance Prelude.Eq PipelineTagProperty
instance Prelude.Show PipelineTagProperty
instance JSON.ToJSON PipelineTagProperty