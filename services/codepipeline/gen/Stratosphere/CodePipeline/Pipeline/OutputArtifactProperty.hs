module Stratosphere.CodePipeline.Pipeline.OutputArtifactProperty (
        OutputArtifactProperty(..), mkOutputArtifactProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OutputArtifactProperty
  = OutputArtifactProperty {files :: (Prelude.Maybe (ValueList Prelude.Text)),
                            name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOutputArtifactProperty ::
  Value Prelude.Text -> OutputArtifactProperty
mkOutputArtifactProperty name
  = OutputArtifactProperty {name = name, files = Prelude.Nothing}
instance ToResourceProperties OutputArtifactProperty where
  toResourceProperties OutputArtifactProperty {..}
    = ResourceProperties
        {awsType = "AWS::CodePipeline::Pipeline.OutputArtifact",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Files" Prelude.<$> files]))}
instance JSON.ToJSON OutputArtifactProperty where
  toJSON OutputArtifactProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Files" Prelude.<$> files])))
instance Property "Files" OutputArtifactProperty where
  type PropertyType "Files" OutputArtifactProperty = ValueList Prelude.Text
  set newValue OutputArtifactProperty {..}
    = OutputArtifactProperty {files = Prelude.pure newValue, ..}
instance Property "Name" OutputArtifactProperty where
  type PropertyType "Name" OutputArtifactProperty = Value Prelude.Text
  set newValue OutputArtifactProperty {..}
    = OutputArtifactProperty {name = newValue, ..}