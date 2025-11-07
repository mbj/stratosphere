module Stratosphere.CleanRooms.ConfiguredTable.SnowflakeTableReferenceProperty (
        module Exports, SnowflakeTableReferenceProperty(..),
        mkSnowflakeTableReferenceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTable.SnowflakeTableSchemaProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnowflakeTableReferenceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-snowflaketablereference.html>
    SnowflakeTableReferenceProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-snowflaketablereference.html#cfn-cleanrooms-configuredtable-snowflaketablereference-accountidentifier>
                                     accountIdentifier :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-snowflaketablereference.html#cfn-cleanrooms-configuredtable-snowflaketablereference-databasename>
                                     databaseName :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-snowflaketablereference.html#cfn-cleanrooms-configuredtable-snowflaketablereference-schemaname>
                                     schemaName :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-snowflaketablereference.html#cfn-cleanrooms-configuredtable-snowflaketablereference-secretarn>
                                     secretArn :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-snowflaketablereference.html#cfn-cleanrooms-configuredtable-snowflaketablereference-tablename>
                                     tableName :: (Value Prelude.Text),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-snowflaketablereference.html#cfn-cleanrooms-configuredtable-snowflaketablereference-tableschema>
                                     tableSchema :: SnowflakeTableSchemaProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnowflakeTableReferenceProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> SnowflakeTableSchemaProperty -> SnowflakeTableReferenceProperty
mkSnowflakeTableReferenceProperty
  accountIdentifier
  databaseName
  schemaName
  secretArn
  tableName
  tableSchema
  = SnowflakeTableReferenceProperty
      {haddock_workaround_ = (), accountIdentifier = accountIdentifier,
       databaseName = databaseName, schemaName = schemaName,
       secretArn = secretArn, tableName = tableName,
       tableSchema = tableSchema}
instance ToResourceProperties SnowflakeTableReferenceProperty where
  toResourceProperties SnowflakeTableReferenceProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTable.SnowflakeTableReference",
         supportsTags = Prelude.False,
         properties = ["AccountIdentifier" JSON..= accountIdentifier,
                       "DatabaseName" JSON..= databaseName,
                       "SchemaName" JSON..= schemaName, "SecretArn" JSON..= secretArn,
                       "TableName" JSON..= tableName, "TableSchema" JSON..= tableSchema]}
instance JSON.ToJSON SnowflakeTableReferenceProperty where
  toJSON SnowflakeTableReferenceProperty {..}
    = JSON.object
        ["AccountIdentifier" JSON..= accountIdentifier,
         "DatabaseName" JSON..= databaseName,
         "SchemaName" JSON..= schemaName, "SecretArn" JSON..= secretArn,
         "TableName" JSON..= tableName, "TableSchema" JSON..= tableSchema]
instance Property "AccountIdentifier" SnowflakeTableReferenceProperty where
  type PropertyType "AccountIdentifier" SnowflakeTableReferenceProperty = Value Prelude.Text
  set newValue SnowflakeTableReferenceProperty {..}
    = SnowflakeTableReferenceProperty
        {accountIdentifier = newValue, ..}
instance Property "DatabaseName" SnowflakeTableReferenceProperty where
  type PropertyType "DatabaseName" SnowflakeTableReferenceProperty = Value Prelude.Text
  set newValue SnowflakeTableReferenceProperty {..}
    = SnowflakeTableReferenceProperty {databaseName = newValue, ..}
instance Property "SchemaName" SnowflakeTableReferenceProperty where
  type PropertyType "SchemaName" SnowflakeTableReferenceProperty = Value Prelude.Text
  set newValue SnowflakeTableReferenceProperty {..}
    = SnowflakeTableReferenceProperty {schemaName = newValue, ..}
instance Property "SecretArn" SnowflakeTableReferenceProperty where
  type PropertyType "SecretArn" SnowflakeTableReferenceProperty = Value Prelude.Text
  set newValue SnowflakeTableReferenceProperty {..}
    = SnowflakeTableReferenceProperty {secretArn = newValue, ..}
instance Property "TableName" SnowflakeTableReferenceProperty where
  type PropertyType "TableName" SnowflakeTableReferenceProperty = Value Prelude.Text
  set newValue SnowflakeTableReferenceProperty {..}
    = SnowflakeTableReferenceProperty {tableName = newValue, ..}
instance Property "TableSchema" SnowflakeTableReferenceProperty where
  type PropertyType "TableSchema" SnowflakeTableReferenceProperty = SnowflakeTableSchemaProperty
  set newValue SnowflakeTableReferenceProperty {..}
    = SnowflakeTableReferenceProperty {tableSchema = newValue, ..}