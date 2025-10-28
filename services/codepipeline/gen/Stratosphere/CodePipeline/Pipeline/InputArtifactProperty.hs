module Stratosphere.CodePipeline.Pipeline.InputArtifactProperty (
        InputArtifactProperty(..), mkInputArtifactProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InputArtifactProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-inputartifact.html>
    InputArtifactProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-inputartifact.html#cfn-codepipeline-pipeline-inputartifact-name>
                           name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInputArtifactProperty ::
  Value Prelude.Text -> InputArtifactProperty
mkInputArtifactProperty name
  = InputArtifactProperty {haddock_workaround_ = (), name = name}
instance ToResourceProperties InputArtifactProperty where
  toResourceProperties InputArtifactProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.InputArtifact",
         supportsTags = Prelude.False, properties = ["Name" JSON..= name]}
instance JSON.ToJSON InputArtifactProperty where
  toJSON InputArtifactProperty {..}
    = JSON.object ["Name" JSON..= name]
instance Property "Name" InputArtifactProperty where
  type PropertyType "Name" InputArtifactProperty = Value Prelude.Text
  set newValue InputArtifactProperty {..}
    = InputArtifactProperty {name = newValue, ..}