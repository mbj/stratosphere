module Stratosphere.Bedrock.PromptVersion.SpecificToolChoiceProperty (
        SpecificToolChoiceProperty(..), mkSpecificToolChoiceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpecificToolChoiceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-specifictoolchoice.html>
    SpecificToolChoiceProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-promptversion-specifictoolchoice.html#cfn-bedrock-promptversion-specifictoolchoice-name>
                                name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpecificToolChoiceProperty ::
  Value Prelude.Text -> SpecificToolChoiceProperty
mkSpecificToolChoiceProperty name
  = SpecificToolChoiceProperty
      {haddock_workaround_ = (), name = name}
instance ToResourceProperties SpecificToolChoiceProperty where
  toResourceProperties SpecificToolChoiceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::PromptVersion.SpecificToolChoice",
         supportsTags = Prelude.False, properties = ["Name" JSON..= name]}
instance JSON.ToJSON SpecificToolChoiceProperty where
  toJSON SpecificToolChoiceProperty {..}
    = JSON.object ["Name" JSON..= name]
instance Property "Name" SpecificToolChoiceProperty where
  type PropertyType "Name" SpecificToolChoiceProperty = Value Prelude.Text
  set newValue SpecificToolChoiceProperty {..}
    = SpecificToolChoiceProperty {name = newValue, ..}