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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-promptflownodeconfiguration.html>
    PromptFlowNodeConfigurationProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-promptflownodeconfiguration.html#cfn-bedrock-flow-promptflownodeconfiguration-guardrailconfiguration>
                                         guardrailConfiguration :: (Prelude.Maybe GuardrailConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-promptflownodeconfiguration.html#cfn-bedrock-flow-promptflownodeconfiguration-sourceconfiguration>
                                         sourceConfiguration :: PromptFlowNodeSourceConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptFlowNodeConfigurationProperty ::
  PromptFlowNodeSourceConfigurationProperty
  -> PromptFlowNodeConfigurationProperty
mkPromptFlowNodeConfigurationProperty sourceConfiguration
  = PromptFlowNodeConfigurationProperty
      {haddock_workaround_ = (),
       sourceConfiguration = sourceConfiguration,
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