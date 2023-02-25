module Stratosphere.DynamoDB.Table.AttributeDefinitionProperty (
        AttributeDefinitionProperty(..), mkAttributeDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeDefinitionProperty
  = AttributeDefinitionProperty {attributeName :: (Value Prelude.Text),
                                 attributeType :: (Value Prelude.Text)}
mkAttributeDefinitionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> AttributeDefinitionProperty
mkAttributeDefinitionProperty attributeName attributeType
  = AttributeDefinitionProperty
      {attributeName = attributeName, attributeType = attributeType}
instance ToResourceProperties AttributeDefinitionProperty where
  toResourceProperties AttributeDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table.AttributeDefinition",
         properties = ["AttributeName" JSON..= attributeName,
                       "AttributeType" JSON..= attributeType]}
instance JSON.ToJSON AttributeDefinitionProperty where
  toJSON AttributeDefinitionProperty {..}
    = JSON.object
        ["AttributeName" JSON..= attributeName,
         "AttributeType" JSON..= attributeType]
instance Property "AttributeName" AttributeDefinitionProperty where
  type PropertyType "AttributeName" AttributeDefinitionProperty = Value Prelude.Text
  set newValue AttributeDefinitionProperty {..}
    = AttributeDefinitionProperty {attributeName = newValue, ..}
instance Property "AttributeType" AttributeDefinitionProperty where
  type PropertyType "AttributeType" AttributeDefinitionProperty = Value Prelude.Text
  set newValue AttributeDefinitionProperty {..}
    = AttributeDefinitionProperty {attributeType = newValue, ..}