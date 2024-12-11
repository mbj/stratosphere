module Stratosphere.Bedrock.ApplicationInferenceProfile.InferenceProfileModelProperty (
        InferenceProfileModelProperty(..), mkInferenceProfileModelProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InferenceProfileModelProperty
  = InferenceProfileModelProperty {modelArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInferenceProfileModelProperty :: InferenceProfileModelProperty
mkInferenceProfileModelProperty
  = InferenceProfileModelProperty {modelArn = Prelude.Nothing}
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
  set newValue InferenceProfileModelProperty {}
    = InferenceProfileModelProperty
        {modelArn = Prelude.pure newValue, ..}