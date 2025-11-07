module Stratosphere.S3Tables.Table.IcebergSchemaProperty (
        module Exports, IcebergSchemaProperty(..), mkIcebergSchemaProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3Tables.Table.SchemaFieldProperty as Exports
import Stratosphere.ResourceProperties
data IcebergSchemaProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-table-icebergschema.html>
    IcebergSchemaProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-table-icebergschema.html#cfn-s3tables-table-icebergschema-schemafieldlist>
                           schemaFieldList :: [SchemaFieldProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIcebergSchemaProperty ::
  [SchemaFieldProperty] -> IcebergSchemaProperty
mkIcebergSchemaProperty schemaFieldList
  = IcebergSchemaProperty
      {haddock_workaround_ = (), schemaFieldList = schemaFieldList}
instance ToResourceProperties IcebergSchemaProperty where
  toResourceProperties IcebergSchemaProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3Tables::Table.IcebergSchema",
         supportsTags = Prelude.False,
         properties = ["SchemaFieldList" JSON..= schemaFieldList]}
instance JSON.ToJSON IcebergSchemaProperty where
  toJSON IcebergSchemaProperty {..}
    = JSON.object ["SchemaFieldList" JSON..= schemaFieldList]
instance Property "SchemaFieldList" IcebergSchemaProperty where
  type PropertyType "SchemaFieldList" IcebergSchemaProperty = [SchemaFieldProperty]
  set newValue IcebergSchemaProperty {..}
    = IcebergSchemaProperty {schemaFieldList = newValue, ..}