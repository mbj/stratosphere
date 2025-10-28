module Stratosphere.Bedrock.ApplicationInferenceProfile.InferenceProfileModelProperty (
        InferenceProfileModelProperty(..), mkInferenceProfileModelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InferenceProfileModelProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-applicationinferenceprofile-inferenceprofilemodel.html>
    InferenceProfileModelProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-applicationinferenceprofile-inferenceprofilemodel.html#cfn-bedrock-applicationinferenceprofile-inferenceprofilemodel-modelarn>
                                   modelArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInferenceProfileModelProperty :: InferenceProfileModelProperty
mkInferenceProfileModelProperty
  = InferenceProfileModelProperty
      {haddock_workaround_ = (), modelArn = Prelude.Nothing}
instance ToResourceProperties InferenceProfileModelProperty where
  toResourceProperties InferenceProfileModelProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::ApplicationInferenceProfile.InferenceProfileModel",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "ModelArn" Prelude.<$> modelArn])}
instance JSON.ToJSON InferenceProfileModelProperty where
  toJSON InferenceProfileModelProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "ModelArn" Prelude.<$> modelArn]))
instance Property "ModelArn" InferenceProfileModelProperty where
  type PropertyType "ModelArn" InferenceProfileModelProperty = Value Prelude.Text
  set newValue InferenceProfileModelProperty {..}
    = InferenceProfileModelProperty
        {modelArn = Prelude.pure newValue, ..}