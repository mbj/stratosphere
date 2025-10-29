module Stratosphere.Bedrock.Flow.PromptFlowNodeSourceConfigurationProperty (
        module Exports, PromptFlowNodeSourceConfigurationProperty(..),
        mkPromptFlowNodeSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.PromptFlowNodeInlineConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.PromptFlowNodeResourceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data PromptFlowNodeSourceConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-promptflownodesourceconfiguration.html>
    PromptFlowNodeSourceConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-promptflownodesourceconfiguration.html#cfn-bedrock-flow-promptflownodesourceconfiguration-inline>
                                               inline :: (Prelude.Maybe PromptFlowNodeInlineConfigurationProperty),
                                               -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-flow-promptflownodesourceconfiguration.html#cfn-bedrock-flow-promptflownodesourceconfiguration-resource>
                                               resource :: (Prelude.Maybe PromptFlowNodeResourceConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPromptFlowNodeSourceConfigurationProperty ::
  PromptFlowNodeSourceConfigurationProperty
mkPromptFlowNodeSourceConfigurationProperty
  = PromptFlowNodeSourceConfigurationProperty
      {inline = Prelude.Nothing, resource = Prelude.Nothing}
instance ToResourceProperties PromptFlowNodeSourceConfigurationProperty where
  toResourceProperties PromptFlowNodeSourceConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.PromptFlowNodeSourceConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Inline" Prelude.<$> inline,
                            (JSON..=) "Resource" Prelude.<$> resource])}
instance JSON.ToJSON PromptFlowNodeSourceConfigurationProperty where
  toJSON PromptFlowNodeSourceConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Inline" Prelude.<$> inline,
               (JSON..=) "Resource" Prelude.<$> resource]))
instance Property "Inline" PromptFlowNodeSourceConfigurationProperty where
  type PropertyType "Inline" PromptFlowNodeSourceConfigurationProperty = PromptFlowNodeInlineConfigurationProperty
  set newValue PromptFlowNodeSourceConfigurationProperty {..}
    = PromptFlowNodeSourceConfigurationProperty
        {inline = Prelude.pure newValue, ..}
instance Property "Resource" PromptFlowNodeSourceConfigurationProperty where
  type PropertyType "Resource" PromptFlowNodeSourceConfigurationProperty = PromptFlowNodeResourceConfigurationProperty
  set newValue PromptFlowNodeSourceConfigurationProperty {..}
    = PromptFlowNodeSourceConfigurationProperty
        {resource = Prelude.pure newValue, ..}