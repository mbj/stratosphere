module Stratosphere.CleanRooms.ConfiguredTable.SnowflakeTableSchemaV1Property (
        SnowflakeTableSchemaV1Property(..),
        mkSnowflakeTableSchemaV1Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SnowflakeTableSchemaV1Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-snowflaketableschemav1.html>
    SnowflakeTableSchemaV1Property {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-snowflaketableschemav1.html#cfn-cleanrooms-configuredtable-snowflaketableschemav1-columnname>
                                    columnName :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtable-snowflaketableschemav1.html#cfn-cleanrooms-configuredtable-snowflaketableschemav1-columntype>
                                    columnType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSnowflakeTableSchemaV1Property ::
  Value Prelude.Text
  -> Value Prelude.Text -> SnowflakeTableSchemaV1Property
mkSnowflakeTableSchemaV1Property columnName columnType
  = SnowflakeTableSchemaV1Property
      {haddock_workaround_ = (), columnName = columnName,
       columnType = columnType}
instance ToResourceProperties SnowflakeTableSchemaV1Property where
  toResourceProperties SnowflakeTableSchemaV1Property {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTable.SnowflakeTableSchemaV1",
         supportsTags = Prelude.False,
         properties = ["ColumnName" JSON..= columnName,
                       "ColumnType" JSON..= columnType]}
instance JSON.ToJSON SnowflakeTableSchemaV1Property where
  toJSON SnowflakeTableSchemaV1Property {..}
    = JSON.object
        ["ColumnName" JSON..= columnName, "ColumnType" JSON..= columnType]
instance Property "ColumnName" SnowflakeTableSchemaV1Property where
  type PropertyType "ColumnName" SnowflakeTableSchemaV1Property = Value Prelude.Text
  set newValue SnowflakeTableSchemaV1Property {..}
    = SnowflakeTableSchemaV1Property {columnName = newValue, ..}
instance Property "ColumnType" SnowflakeTableSchemaV1Property where
  type PropertyType "ColumnType" SnowflakeTableSchemaV1Property = Value Prelude.Text
  set newValue SnowflakeTableSchemaV1Property {..}
    = SnowflakeTableSchemaV1Property {columnType = newValue, ..}