module Stratosphere.CodePipeline.Pipeline.OutputArtifactProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OutputArtifactProperty :: Prelude.Type
instance ToResourceProperties OutputArtifactProperty
instance JSON.ToJSON OutputArtifactProperty