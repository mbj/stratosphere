module Stratosphere.Bedrock.PromptVersion.ToolInputSchemaProperty (
        ToolInputSchemaProperty(..), mkToolInputSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data ToolInputSchemaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-toolinputschema.html>
    ToolInputSchemaProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-toolinputschema.html#cfn-bedrock-promptversion-toolinputschema-json>
                             json :: JSON.Object}
  deriving stock (Prelude.Eq, Prelude.Show)
mkToolInputSchemaProperty :: JSON.Object -> ToolInputSchemaProperty
mkToolInputSchemaProperty json
  = ToolInputSchemaProperty {haddock_workaround_ = (), json = json}
instance ToResourceProperties ToolInputSchemaProperty where
  toResourceProperties ToolInputSchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::PromptVersion.ToolInputSchema",
         supportsTags = Prelude.False, properties = ["Json" JSON..= json]}
instance JSON.ToJSON ToolInputSchemaProperty where
  toJSON ToolInputSchemaProperty {..}
    = JSON.object ["Json" JSON..= json]
instance Property "Json" ToolInputSchemaProperty where
  type PropertyType "Json" ToolInputSchemaProperty = JSON.Object
  set newValue ToolInputSchemaProperty {..}
    = ToolInputSchemaProperty {json = newValue, ..}