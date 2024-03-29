module Stratosphere.SageMaker.Pipeline.PipelineDefinitionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PipelineDefinitionProperty :: Prelude.Type
instance ToResourceProperties PipelineDefinitionProperty
instance Prelude.Eq PipelineDefinitionProperty
instance Prelude.Show PipelineDefinitionProperty
instance JSON.ToJSON PipelineDefinitionProperty