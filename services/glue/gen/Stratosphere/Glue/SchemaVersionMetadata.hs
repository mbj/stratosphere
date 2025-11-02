module Stratosphere.Glue.SchemaVersionMetadata (
        SchemaVersionMetadata(..), mkSchemaVersionMetadata
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaVersionMetadata
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-schemaversionmetadata.html>
    SchemaVersionMetadata {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-schemaversionmetadata.html#cfn-glue-schemaversionmetadata-key>
                           key :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-schemaversionmetadata.html#cfn-glue-schemaversionmetadata-schemaversionid>
                           schemaVersionId :: (Value Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-glue-schemaversionmetadata.html#cfn-glue-schemaversionmetadata-value>
                           value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaVersionMetadata ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> SchemaVersionMetadata
mkSchemaVersionMetadata key schemaVersionId value
  = SchemaVersionMetadata
      {haddock_workaround_ = (), key = key,
       schemaVersionId = schemaVersionId, value = value}
instance ToResourceProperties SchemaVersionMetadata where
  toResourceProperties SchemaVersionMetadata {..}
    = ResourceProperties
        {awsType = "AWS::Glue::SchemaVersionMetadata",
         supportsTags = Prelude.False,
         properties = ["Key" JSON..= key,
                       "SchemaVersionId" JSON..= schemaVersionId, "Value" JSON..= value]}
instance JSON.ToJSON SchemaVersionMetadata where
  toJSON SchemaVersionMetadata {..}
    = JSON.object
        ["Key" JSON..= key, "SchemaVersionId" JSON..= schemaVersionId,
         "Value" JSON..= value]
instance Property "Key" SchemaVersionMetadata where
  type PropertyType "Key" SchemaVersionMetadata = Value Prelude.Text
  set newValue SchemaVersionMetadata {..}
    = SchemaVersionMetadata {key = newValue, ..}
instance Property "SchemaVersionId" SchemaVersionMetadata where
  type PropertyType "SchemaVersionId" SchemaVersionMetadata = Value Prelude.Text
  set newValue SchemaVersionMetadata {..}
    = SchemaVersionMetadata {schemaVersionId = newValue, ..}
instance Property "Value" SchemaVersionMetadata where
  type PropertyType "Value" SchemaVersionMetadata = Value Prelude.Text
  set newValue SchemaVersionMetadata {..}
    = SchemaVersionMetadata {value = newValue, ..}