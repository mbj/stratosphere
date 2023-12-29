module Stratosphere.CodePipeline.Pipeline.OutputArtifactProperty (
        OutputArtifactProperty(..), mkOutputArtifactProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputArtifactProperty
  = OutputArtifactProperty {name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputArtifactProperty ::
  Value Prelude.Text -> OutputArtifactProperty
mkOutputArtifactProperty name
  = OutputArtifactProperty {name = name}
instance ToResourceProperties OutputArtifactProperty where
  toResourceProperties OutputArtifactProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.OutputArtifact",
         supportsTags = Prelude.False, properties = ["Name" JSON..= name]}
instance JSON.ToJSON OutputArtifactProperty where
  toJSON OutputArtifactProperty {..}
    = JSON.object ["Name" JSON..= name]
instance Property "Name" OutputArtifactProperty where
  type PropertyType "Name" OutputArtifactProperty = Value Prelude.Text
  set newValue OutputArtifactProperty {}
    = OutputArtifactProperty {name = newValue, ..}