module Stratosphere.Bedrock.Prompt.PromptModelInferenceConfigurationProperty (
        PromptModelInferenceConfigurationProperty(..),
        mkPromptModelInferenceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PromptModelInferenceConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-promptmodelinferenceconfiguration.html>
    PromptModelInferenceConfigurationProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-promptmodelinferenceconfiguration.html#cfn-bedrock-prompt-promptmodelinferenceconfiguration-maxtokens>
                                               maxTokens :: (Prelude.Maybe (Value Prelude.Double)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-promptmodelinferenceconfiguration.html#cfn-bedrock-prompt-promptmodelinferenceconfiguration-stopsequences>
                                               stopSequences :: (Prelude.Maybe (ValueList Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-promptmodelinferenceconfiguration.html#cfn-bedrock-prompt-promptmodelinferenceconfiguration-temperature>
                                               temperature :: (Prelude.Maybe (Value Prelude.Double)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-promptmodelinferenceconfiguration.html#cfn-bedrock-prompt-promptmodelinferenceconfiguration-topp>
                                               topP :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptModelInferenceConfigurationProperty ::
  PromptModelInferenceConfigurationProperty
mkPromptModelInferenceConfigurationProperty
  = PromptModelInferenceConfigurationProperty
      {haddock_workaround_ = (), maxTokens = Prelude.Nothing,
       stopSequences = Prelude.Nothing, temperature = Prelude.Nothing,
       topP = Prelude.Nothing}
instance ToResourceProperties PromptModelInferenceConfigurationProperty where
  toResourceProperties PromptModelInferenceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Prompt.PromptModelInferenceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxTokens" Prelude.<$> maxTokens,
                            (JSON..=) "StopSequences" Prelude.<$> stopSequences,
                            (JSON..=) "Temperature" Prelude.<$> temperature,
                            (JSON..=) "TopP" Prelude.<$> topP])}
instance JSON.ToJSON PromptModelInferenceConfigurationProperty where
  toJSON PromptModelInferenceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxTokens" Prelude.<$> maxTokens,
               (JSON..=) "StopSequences" Prelude.<$> stopSequences,
               (JSON..=) "Temperature" Prelude.<$> temperature,
               (JSON..=) "TopP" Prelude.<$> topP]))
instance Property "MaxTokens" PromptModelInferenceConfigurationProperty where
  type PropertyType "MaxTokens" PromptModelInferenceConfigurationProperty = Value Prelude.Double
  set newValue PromptModelInferenceConfigurationProperty {..}
    = PromptModelInferenceConfigurationProperty
        {maxTokens = Prelude.pure newValue, ..}
instance Property "StopSequences" PromptModelInferenceConfigurationProperty where
  type PropertyType "StopSequences" PromptModelInferenceConfigurationProperty = ValueList Prelude.Text
  set newValue PromptModelInferenceConfigurationProperty {..}
    = PromptModelInferenceConfigurationProperty
        {stopSequences = Prelude.pure newValue, ..}
instance Property "Temperature" PromptModelInferenceConfigurationProperty where
  type PropertyType "Temperature" PromptModelInferenceConfigurationProperty = Value Prelude.Double
  set newValue PromptModelInferenceConfigurationProperty {..}
    = PromptModelInferenceConfigurationProperty
        {temperature = Prelude.pure newValue, ..}
instance Property "TopP" PromptModelInferenceConfigurationProperty where
  type PropertyType "TopP" PromptModelInferenceConfigurationProperty = Value Prelude.Double
  set newValue PromptModelInferenceConfigurationProperty {..}
    = PromptModelInferenceConfigurationProperty
        {topP = Prelude.pure newValue, ..}