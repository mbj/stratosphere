module Stratosphere.Bedrock.ApplicationInferenceProfile.InferenceProfileModelSourceProperty (
        InferenceProfileModelSourceProperty(..),
        mkInferenceProfileModelSourceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InferenceProfileModelSourceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-applicationinferenceprofile-inferenceprofilemodelsource.html>
    InferenceProfileModelSourceProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-applicationinferenceprofile-inferenceprofilemodelsource.html#cfn-bedrock-applicationinferenceprofile-inferenceprofilemodelsource-copyfrom>
                                         copyFrom :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInferenceProfileModelSourceProperty ::
  Value Prelude.Text -> InferenceProfileModelSourceProperty
mkInferenceProfileModelSourceProperty copyFrom
  = InferenceProfileModelSourceProperty
      {haddock_workaround_ = (), copyFrom = copyFrom}
instance ToResourceProperties InferenceProfileModelSourceProperty where
  toResourceProperties InferenceProfileModelSourceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::ApplicationInferenceProfile.InferenceProfileModelSource",
         supportsTags = Prelude.False,
         properties = ["CopyFrom" JSON..= copyFrom]}
instance JSON.ToJSON InferenceProfileModelSourceProperty where
  toJSON InferenceProfileModelSourceProperty {..}
    = JSON.object ["CopyFrom" JSON..= copyFrom]
instance Property "CopyFrom" InferenceProfileModelSourceProperty where
  type PropertyType "CopyFrom" InferenceProfileModelSourceProperty = Value Prelude.Text
  set newValue InferenceProfileModelSourceProperty {..}
    = InferenceProfileModelSourceProperty {copyFrom = newValue, ..}