module Stratosphere.DynamoDB.Table.AttributeDefinitionProperty (
        AttributeDefinitionProperty(..), mkAttributeDefinitionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AttributeDefinitionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-attributedefinition.html>
    AttributeDefinitionProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-attributedefinition.html#cfn-dynamodb-table-attributedefinition-attributename>
                                 attributeName :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-table-attributedefinition.html#cfn-dynamodb-table-attributedefinition-attributetype>
                                 attributeType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAttributeDefinitionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> AttributeDefinitionProperty
mkAttributeDefinitionProperty attributeName attributeType
  = AttributeDefinitionProperty
      {haddock_workaround_ = (), attributeName = attributeName,
       attributeType = attributeType}
instance ToResourceProperties AttributeDefinitionProperty where
  toResourceProperties AttributeDefinitionProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::Table.AttributeDefinition",
         supportsTags = Prelude.False,
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