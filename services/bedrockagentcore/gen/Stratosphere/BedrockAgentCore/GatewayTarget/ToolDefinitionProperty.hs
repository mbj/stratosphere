module Stratosphere.BedrockAgentCore.GatewayTarget.ToolDefinitionProperty (
        module Exports, ToolDefinitionProperty(..),
        mkToolDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.BedrockAgentCore.GatewayTarget.SchemaDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ToolDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-tooldefinition.html>
    ToolDefinitionProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-tooldefinition.html#cfn-bedrockagentcore-gatewaytarget-tooldefinition-description>
                            description :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-tooldefinition.html#cfn-bedrockagentcore-gatewaytarget-tooldefinition-inputschema>
                            inputSchema :: SchemaDefinitionProperty,
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-tooldefinition.html#cfn-bedrockagentcore-gatewaytarget-tooldefinition-name>
                            name :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-tooldefinition.html#cfn-bedrockagentcore-gatewaytarget-tooldefinition-outputschema>
                            outputSchema :: (Prelude.Maybe SchemaDefinitionProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkToolDefinitionProperty ::
  Value Prelude.Text
  -> SchemaDefinitionProperty
     -> Value Prelude.Text -> ToolDefinitionProperty
mkToolDefinitionProperty description inputSchema name
  = ToolDefinitionProperty
      {haddock_workaround_ = (), description = description,
       inputSchema = inputSchema, name = name,
       outputSchema = Prelude.Nothing}
instance ToResourceProperties ToolDefinitionProperty where
  toResourceProperties ToolDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::GatewayTarget.ToolDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Description" JSON..= description,
                            "InputSchema" JSON..= inputSchema, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "OutputSchema" Prelude.<$> outputSchema]))}
instance JSON.ToJSON ToolDefinitionProperty where
  toJSON ToolDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Description" JSON..= description,
               "InputSchema" JSON..= inputSchema, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "OutputSchema" Prelude.<$> outputSchema])))
instance Property "Description" ToolDefinitionProperty where
  type PropertyType "Description" ToolDefinitionProperty = Value Prelude.Text
  set newValue ToolDefinitionProperty {..}
    = ToolDefinitionProperty {description = newValue, ..}
instance Property "InputSchema" ToolDefinitionProperty where
  type PropertyType "InputSchema" ToolDefinitionProperty = SchemaDefinitionProperty
  set newValue ToolDefinitionProperty {..}
    = ToolDefinitionProperty {inputSchema = newValue, ..}
instance Property "Name" ToolDefinitionProperty where
  type PropertyType "Name" ToolDefinitionProperty = Value Prelude.Text
  set newValue ToolDefinitionProperty {..}
    = ToolDefinitionProperty {name = newValue, ..}
instance Property "OutputSchema" ToolDefinitionProperty where
  type PropertyType "OutputSchema" ToolDefinitionProperty = SchemaDefinitionProperty
  set newValue ToolDefinitionProperty {..}
    = ToolDefinitionProperty {outputSchema = Prelude.pure newValue, ..}