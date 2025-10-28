module Stratosphere.QuickSight.DataSet.RenameColumnOperationProperty (
        RenameColumnOperationProperty(..), mkRenameColumnOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RenameColumnOperationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-renamecolumnoperation.html>
    RenameColumnOperationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-renamecolumnoperation.html#cfn-quicksight-dataset-renamecolumnoperation-columnname>
                                   columnName :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-renamecolumnoperation.html#cfn-quicksight-dataset-renamecolumnoperation-newcolumnname>
                                   newColumnName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRenameColumnOperationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> RenameColumnOperationProperty
mkRenameColumnOperationProperty columnName newColumnName
  = RenameColumnOperationProperty
      {haddock_workaround_ = (), columnName = columnName,
       newColumnName = newColumnName}
instance ToResourceProperties RenameColumnOperationProperty where
  toResourceProperties RenameColumnOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.RenameColumnOperation",
         supportsTags = Prelude.False,
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