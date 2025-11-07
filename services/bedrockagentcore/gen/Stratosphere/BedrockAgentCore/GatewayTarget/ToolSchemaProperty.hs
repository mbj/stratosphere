module Stratosphere.BedrockAgentCore.GatewayTarget.ToolSchemaProperty (
        module Exports, ToolSchemaProperty(..), mkToolSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.GatewayTarget.S3ConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.GatewayTarget.ToolDefinitionProperty as Exports
import Stratosphere.ResourceProperties
data ToolSchemaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-toolschema.html>
    ToolSchemaProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-toolschema.html#cfn-bedrockagentcore-gatewaytarget-toolschema-inlinepayload>
                        inlinePayload :: (Prelude.Maybe [ToolDefinitionProperty]),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-toolschema.html#cfn-bedrockagentcore-gatewaytarget-toolschema-s3>
                        s3 :: (Prelude.Maybe S3ConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkToolSchemaProperty :: ToolSchemaProperty
mkToolSchemaProperty
  = ToolSchemaProperty
      {haddock_workaround_ = (), inlinePayload = Prelude.Nothing,
       s3 = Prelude.Nothing}
instance ToResourceProperties ToolSchemaProperty where
  toResourceProperties ToolSchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::GatewayTarget.ToolSchema",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InlinePayload" Prelude.<$> inlinePayload,
                            (JSON..=) "S3" Prelude.<$> s3])}
instance JSON.ToJSON ToolSchemaProperty where
  toJSON ToolSchemaProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InlinePayload" Prelude.<$> inlinePayload,
               (JSON..=) "S3" Prelude.<$> s3]))
instance Property "InlinePayload" ToolSchemaProperty where
  type PropertyType "InlinePayload" ToolSchemaProperty = [ToolDefinitionProperty]
  set newValue ToolSchemaProperty {..}
    = ToolSchemaProperty {inlinePayload = Prelude.pure newValue, ..}
instance Property "S3" ToolSchemaProperty where
  type PropertyType "S3" ToolSchemaProperty = S3ConfigurationProperty
  set newValue ToolSchemaProperty {..}
    = ToolSchemaProperty {s3 = Prelude.pure newValue, ..}