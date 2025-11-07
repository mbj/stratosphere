module Stratosphere.BedrockAgentCore.GatewayTarget.SchemaDefinitionProperty (
        SchemaDefinitionProperty(..), mkSchemaDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-schemadefinition.html>
    SchemaDefinitionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-schemadefinition.html#cfn-bedrockagentcore-gatewaytarget-schemadefinition-description>
                              description :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-schemadefinition.html#cfn-bedrockagentcore-gatewaytarget-schemadefinition-items>
                              items :: (Prelude.Maybe SchemaDefinitionProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-schemadefinition.html#cfn-bedrockagentcore-gatewaytarget-schemadefinition-properties>
                              properties :: (Prelude.Maybe (Prelude.Map Prelude.Text SchemaDefinitionProperty)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-schemadefinition.html#cfn-bedrockagentcore-gatewaytarget-schemadefinition-required>
                              required :: (Prelude.Maybe (ValueList Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrockagentcore-gatewaytarget-schemadefinition.html#cfn-bedrockagentcore-gatewaytarget-schemadefinition-type>
                              type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaDefinitionProperty ::
  Value Prelude.Text -> SchemaDefinitionProperty
mkSchemaDefinitionProperty type'
  = SchemaDefinitionProperty
      {haddock_workaround_ = (), type' = type',
       description = Prelude.Nothing, items = Prelude.Nothing,
       properties = Prelude.Nothing, required = Prelude.Nothing}
instance ToResourceProperties SchemaDefinitionProperty where
  toResourceProperties SchemaDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::BedrockAgentCore::GatewayTarget.SchemaDefinition",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Items" Prelude.<$> items,
                               (JSON..=) "Properties" Prelude.<$> properties,
                               (JSON..=) "Required" Prelude.<$> required]))}
instance JSON.ToJSON SchemaDefinitionProperty where
  toJSON SchemaDefinitionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Items" Prelude.<$> items,
                  (JSON..=) "Properties" Prelude.<$> properties,
                  (JSON..=) "Required" Prelude.<$> required])))
instance Property "Description" SchemaDefinitionProperty where
  type PropertyType "Description" SchemaDefinitionProperty = Value Prelude.Text
  set newValue SchemaDefinitionProperty {..}
    = SchemaDefinitionProperty
        {description = Prelude.pure newValue, ..}
instance Property "Items" SchemaDefinitionProperty where
  type PropertyType "Items" SchemaDefinitionProperty = SchemaDefinitionProperty
  set newValue SchemaDefinitionProperty {..}
    = SchemaDefinitionProperty {items = Prelude.pure newValue, ..}
instance Property "Properties" SchemaDefinitionProperty where
  type PropertyType "Properties" SchemaDefinitionProperty = Prelude.Map Prelude.Text SchemaDefinitionProperty
  set newValue SchemaDefinitionProperty {..}
    = SchemaDefinitionProperty {properties = Prelude.pure newValue, ..}
instance Property "Required" SchemaDefinitionProperty where
  type PropertyType "Required" SchemaDefinitionProperty = ValueList Prelude.Text
  set newValue SchemaDefinitionProperty {..}
    = SchemaDefinitionProperty {required = Prelude.pure newValue, ..}
instance Property "Type" SchemaDefinitionProperty where
  type PropertyType "Type" SchemaDefinitionProperty = Value Prelude.Text
  set newValue SchemaDefinitionProperty {..}
    = SchemaDefinitionProperty {type' = newValue, ..}