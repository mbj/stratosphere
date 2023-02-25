module Stratosphere.QuickSight.DataSet.RenameColumnOperationProperty (
        RenameColumnOperationProperty(..), mkRenameColumnOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RenameColumnOperationProperty
  = RenameColumnOperationProperty {columnName :: (Value Prelude.Text),
                                   newColumnName :: (Value Prelude.Text)}
mkRenameColumnOperationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> RenameColumnOperationProperty
mkRenameColumnOperationProperty columnName newColumnName
  = RenameColumnOperationProperty
      {columnName = columnName, newColumnName = newColumnName}
instance ToResourceProperties RenameColumnOperationProperty where
  toResourceProperties RenameColumnOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.RenameColumnOperation",
         properties = ["ColumnName" JSON..= columnName,
                       "NewColumnName" JSON..= newColumnName]}
instance JSON.ToJSON RenameColumnOperationProperty where
  toJSON RenameColumnOperationProperty {..}
    = JSON.object
        ["ColumnName" JSON..= columnName,
         "NewColumnName" JSON..= newColumnName]
instance Property "ColumnName" RenameColumnOperationProperty where
  type PropertyType "ColumnName" RenameColumnOperationProperty = Value Prelude.Text
  set newValue RenameColumnOperationProperty {..}
    = RenameColumnOperationProperty {columnName = newValue, ..}
instance Property "NewColumnName" RenameColumnOperationProperty where
  type PropertyType "NewColumnName" RenameColumnOperationProperty = Value Prelude.Text
  set newValue RenameColumnOperationProperty {..}
    = RenameColumnOperationProperty {newColumnName = newValue, ..}