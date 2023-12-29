module Stratosphere.CodePipeline.Pipeline.InputArtifactProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InputArtifactProperty :: Prelude.Type
instance ToResourceProperties InputArtifactProperty
instance Prelude.Eq InputArtifactProperty
instance Prelude.Show InputArtifactProperty
instance JSON.ToJSON InputArtifactProperty