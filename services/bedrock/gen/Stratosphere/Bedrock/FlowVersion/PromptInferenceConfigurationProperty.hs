module Stratosphere.Bedrock.FlowVersion.PromptInferenceConfigurationProperty (
        module Exports, PromptInferenceConfigurationProperty(..),
        mkPromptInferenceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.PromptModelInferenceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data PromptInferenceConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-promptinferenceconfiguration.html>
    PromptInferenceConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flowversion-promptinferenceconfiguration.html#cfn-bedrock-flowversion-promptinferenceconfiguration-text>
                                          text :: PromptModelInferenceConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptInferenceConfigurationProperty ::
  PromptModelInferenceConfigurationProperty
  -> PromptInferenceConfigurationProperty
mkPromptInferenceConfigurationProperty text
  = PromptInferenceConfigurationProperty {text = text}
instance ToResourceProperties PromptInferenceConfigurationProperty where
  toResourceProperties PromptInferenceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::FlowVersion.PromptInferenceConfiguration",
         supportsTags = Prelude.False, properties = ["Text" JSON..= text]}
instance JSON.ToJSON PromptInferenceConfigurationProperty where
  toJSON PromptInferenceConfigurationProperty {..}
    = JSON.object ["Text" JSON..= text]
instance Property "Text" PromptInferenceConfigurationProperty where
  type PropertyType "Text" PromptInferenceConfigurationProperty = PromptModelInferenceConfigurationProperty
  set newValue PromptInferenceConfigurationProperty {}
    = PromptInferenceConfigurationProperty {text = newValue, ..}