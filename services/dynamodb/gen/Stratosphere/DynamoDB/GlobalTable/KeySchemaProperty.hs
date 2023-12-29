module Stratosphere.DynamoDB.GlobalTable.KeySchemaProperty (
        KeySchemaProperty(..), mkKeySchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data KeySchemaProperty
  = KeySchemaProperty {attributeName :: (Value Prelude.Text),
                       keyType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKeySchemaProperty ::
  Value Prelude.Text -> Value Prelude.Text -> KeySchemaProperty
mkKeySchemaProperty attributeName keyType
  = KeySchemaProperty
      {attributeName = attributeName, keyType = keyType}
instance ToResourceProperties KeySchemaProperty where
  toResourceProperties KeySchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.KeySchema",
         supportsTags = Prelude.False,
         properties = ["AttributeName" JSON..= attributeName,
                       "KeyType" JSON..= keyType]}
instance JSON.ToJSON KeySchemaProperty where
  toJSON KeySchemaProperty {..}
    = JSON.object
        ["AttributeName" JSON..= attributeName, "KeyType" JSON..= keyType]
instance Property "AttributeName" KeySchemaProperty where
  type PropertyType "AttributeName" KeySchemaProperty = Value Prelude.Text
  set newValue KeySchemaProperty {..}
    = KeySchemaProperty {attributeName = newValue, ..}
instance Property "KeyType" KeySchemaProperty where
  type PropertyType "KeyType" KeySchemaProperty = Value Prelude.Text
  set newValue KeySchemaProperty {..}
    = KeySchemaProperty {keyType = newValue, ..}