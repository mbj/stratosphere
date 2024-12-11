module Stratosphere.Bedrock.Flow.PromptFlowNodeConfigurationProperty (
        module Exports, PromptFlowNodeConfigurationProperty(..),
        mkPromptFlowNodeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.GuardrailConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.PromptFlowNodeSourceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data PromptFlowNodeConfigurationProperty
  = PromptFlowNodeConfigurationProperty {guardrailConfiguration :: (Prelude.Maybe GuardrailConfigurationProperty),
                                         sourceConfiguration :: PromptFlowNodeSourceConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptFlowNodeConfigurationProperty ::
  PromptFlowNodeSourceConfigurationProperty
  -> PromptFlowNodeConfigurationProperty
mkPromptFlowNodeConfigurationProperty sourceConfiguration
  = PromptFlowNodeConfigurationProperty
      {sourceConfiguration = sourceConfiguration,
       guardrailConfiguration = Prelude.Nothing}
instance ToResourceProperties PromptFlowNodeConfigurationProperty where
  toResourceProperties PromptFlowNodeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.PromptFlowNodeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SourceConfiguration" JSON..= sourceConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "GuardrailConfiguration"
                                 Prelude.<$> guardrailConfiguration]))}
instance JSON.ToJSON PromptFlowNodeConfigurationProperty where
  toJSON PromptFlowNodeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SourceConfiguration" JSON..= sourceConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "GuardrailConfiguration"
                    Prelude.<$> guardrailConfiguration])))
instance Property "GuardrailConfiguration" PromptFlowNodeConfigurationProperty where
  type PropertyType "GuardrailConfiguration" PromptFlowNodeConfigurationProperty = GuardrailConfigurationProperty
  set newValue PromptFlowNodeConfigurationProperty {..}
    = PromptFlowNodeConfigurationProperty
        {guardrailConfiguration = Prelude.pure newValue, ..}
instance Property "SourceConfiguration" PromptFlowNodeConfigurationProperty where
  type PropertyType "SourceConfiguration" PromptFlowNodeConfigurationProperty = PromptFlowNodeSourceConfigurationProperty
  set newValue PromptFlowNodeConfigurationProperty {..}
    = PromptFlowNodeConfigurationProperty
        {sourceConfiguration = newValue, ..}