module Stratosphere.Bedrock.Flow.PromptInferenceConfigurationProperty (
        module Exports, PromptInferenceConfigurationProperty(..),
        mkPromptInferenceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.PromptModelInferenceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data PromptInferenceConfigurationProperty
  = PromptInferenceConfigurationProperty {text :: PromptModelInferenceConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptInferenceConfigurationProperty ::
  PromptModelInferenceConfigurationProperty
  -> PromptInferenceConfigurationProperty
mkPromptInferenceConfigurationProperty text
  = PromptInferenceConfigurationProperty {text = text}
instance ToResourceProperties PromptInferenceConfigurationProperty where
  toResourceProperties PromptInferenceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.PromptInferenceConfiguration",
         supportsTags = Prelude.False, properties = ["Text" JSON..= text]}
instance JSON.ToJSON PromptInferenceConfigurationProperty where
  toJSON PromptInferenceConfigurationProperty {..}
    = JSON.object ["Text" JSON..= text]
instance Property "Text" PromptInferenceConfigurationProperty where
  type PropertyType "Text" PromptInferenceConfigurationProperty = PromptModelInferenceConfigurationProperty
  set newValue PromptInferenceConfigurationProperty {}
    = PromptInferenceConfigurationProperty {text = newValue, ..}