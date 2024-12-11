module Stratosphere.Bedrock.FlowVersion.PromptFlowNodeSourceConfigurationProperty (
        module Exports, PromptFlowNodeSourceConfigurationProperty(..),
        mkPromptFlowNodeSourceConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.PromptFlowNodeInlineConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.FlowVersion.PromptFlowNodeResourceConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data PromptFlowNodeSourceConfigurationProperty
  = PromptFlowNodeSourceConfigurationProperty {inline :: (Prelude.Maybe PromptFlowNodeInlineConfigurationProperty),
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
        {awsType = "AWS::Bedrock::FlowVersion.PromptFlowNodeSourceConfiguration",
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