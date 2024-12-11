module Stratosphere.Bedrock.ApplicationInferenceProfile (
        module Exports, ApplicationInferenceProfile(..),
        mkApplicationInferenceProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.ApplicationInferenceProfile.InferenceProfileModelSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ApplicationInferenceProfile
  = ApplicationInferenceProfile {description :: (Prelude.Maybe (Value Prelude.Text)),
                                 inferenceProfileName :: (Value Prelude.Text),
                                 modelSource :: (Prelude.Maybe InferenceProfileModelSourceProperty),
                                 tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApplicationInferenceProfile ::
  Value Prelude.Text -> ApplicationInferenceProfile
mkApplicationInferenceProfile inferenceProfileName
  = ApplicationInferenceProfile
      {inferenceProfileName = inferenceProfileName,
       description = Prelude.Nothing, modelSource = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties ApplicationInferenceProfile where
  toResourceProperties ApplicationInferenceProfile {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::ApplicationInferenceProfile",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InferenceProfileName" JSON..= inferenceProfileName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ModelSource" Prelude.<$> modelSource,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ApplicationInferenceProfile where
  toJSON ApplicationInferenceProfile {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InferenceProfileName" JSON..= inferenceProfileName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ModelSource" Prelude.<$> modelSource,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" ApplicationInferenceProfile where
  type PropertyType "Description" ApplicationInferenceProfile = Value Prelude.Text
  set newValue ApplicationInferenceProfile {..}
    = ApplicationInferenceProfile
        {description = Prelude.pure newValue, ..}
instance Property "InferenceProfileName" ApplicationInferenceProfile where
  type PropertyType "InferenceProfileName" ApplicationInferenceProfile = Value Prelude.Text
  set newValue ApplicationInferenceProfile {..}
    = ApplicationInferenceProfile {inferenceProfileName = newValue, ..}
instance Property "ModelSource" ApplicationInferenceProfile where
  type PropertyType "ModelSource" ApplicationInferenceProfile = InferenceProfileModelSourceProperty
  set newValue ApplicationInferenceProfile {..}
    = ApplicationInferenceProfile
        {modelSource = Prelude.pure newValue, ..}
instance Property "Tags" ApplicationInferenceProfile where
  type PropertyType "Tags" ApplicationInferenceProfile = [Tag]
  set newValue ApplicationInferenceProfile {..}
    = ApplicationInferenceProfile {tags = Prelude.pure newValue, ..}