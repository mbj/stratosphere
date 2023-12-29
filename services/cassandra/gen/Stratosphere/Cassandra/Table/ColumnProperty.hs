module Stratosphere.Cassandra.Table.ColumnProperty (
        ColumnProperty(..), mkColumnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnProperty
  = ColumnProperty {columnName :: (Value Prelude.Text),
                    columnType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColumnProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ColumnProperty
mkColumnProperty columnName columnType
  = ColumnProperty {columnName = columnName, columnType = columnType}
instance ToResourceProperties ColumnProperty where
  toResourceProperties ColumnProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cassandra::Table.Column",
         supportsTags = Prelude.False,
         properties = ["ColumnName" JSON..= columnName,
                       "ColumnType" JSON..= columnType]}
instance JSON.ToJSON ColumnProperty where
  toJSON ColumnProperty {..}
    = JSON.object
        ["ColumnName" JSON..= columnName, "ColumnType" JSON..= columnType]
instance Property "ColumnName" ColumnProperty where
  type PropertyType "ColumnName" ColumnProperty = Value Prelude.Text
  set newValue ColumnProperty {..}
    = ColumnProperty {columnName = newValue, ..}
instance Property "ColumnType" ColumnProperty where
  type PropertyType "ColumnType" ColumnProperty = Value Prelude.Text
  set newValue ColumnProperty {..}
    = ColumnProperty {columnType = newValue, ..}