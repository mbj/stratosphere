module Stratosphere.S3Tables.Table.SchemaFieldProperty (
        SchemaFieldProperty(..), mkSchemaFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SchemaFieldProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-table-schemafield.html>
    SchemaFieldProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-table-schemafield.html#cfn-s3tables-table-schemafield-name>
                         name :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-table-schemafield.html#cfn-s3tables-table-schemafield-required>
                         required :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3tables-table-schemafield.html#cfn-s3tables-table-schemafield-type>
                         type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchemaFieldProperty ::
  Value Prelude.Text -> Value Prelude.Text -> SchemaFieldProperty
mkSchemaFieldProperty name type'
  = SchemaFieldProperty
      {haddock_workaround_ = (), name = name, type' = type',
       required = Prelude.Nothing}
instance ToResourceProperties SchemaFieldProperty where
  toResourceProperties SchemaFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3Tables::Table.SchemaField",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Type" JSON..= type']
                           (Prelude.catMaybes [(JSON..=) "Required" Prelude.<$> required]))}
instance JSON.ToJSON SchemaFieldProperty where
  toJSON SchemaFieldProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Type" JSON..= type']
              (Prelude.catMaybes [(JSON..=) "Required" Prelude.<$> required])))
instance Property "Name" SchemaFieldProperty where
  type PropertyType "Name" SchemaFieldProperty = Value Prelude.Text
  set newValue SchemaFieldProperty {..}
    = SchemaFieldProperty {name = newValue, ..}
instance Property "Required" SchemaFieldProperty where
  type PropertyType "Required" SchemaFieldProperty = Value Prelude.Bool
  set newValue SchemaFieldProperty {..}
    = SchemaFieldProperty {required = Prelude.pure newValue, ..}
instance Property "Type" SchemaFieldProperty where
  type PropertyType "Type" SchemaFieldProperty = Value Prelude.Text
  set newValue SchemaFieldProperty {..}
    = SchemaFieldProperty {type' = newValue, ..}