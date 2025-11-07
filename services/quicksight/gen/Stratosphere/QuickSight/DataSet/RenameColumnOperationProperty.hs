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
                                   columnName :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-renamecolumnoperation.html#cfn-quicksight-dataset-renamecolumnoperation-newcolumnname>
                                   newColumnName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRenameColumnOperationProperty :: RenameColumnOperationProperty
mkRenameColumnOperationProperty
  = RenameColumnOperationProperty
      {haddock_workaround_ = (), columnName = Prelude.Nothing,
       newColumnName = Prelude.Nothing}
instance ToResourceProperties RenameColumnOperationProperty where
  toResourceProperties RenameColumnOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.RenameColumnOperation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColumnName" Prelude.<$> columnName,
                            (JSON..=) "NewColumnName" Prelude.<$> newColumnName])}
instance JSON.ToJSON RenameColumnOperationProperty where
  toJSON RenameColumnOperationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColumnName" Prelude.<$> columnName,
               (JSON..=) "NewColumnName" Prelude.<$> newColumnName]))
instance Property "ColumnName" RenameColumnOperationProperty where
  type PropertyType "ColumnName" RenameColumnOperationProperty = Value Prelude.Text
  set newValue RenameColumnOperationProperty {..}
    = RenameColumnOperationProperty
        {columnName = Prelude.pure newValue, ..}
instance Property "NewColumnName" RenameColumnOperationProperty where
  type PropertyType "NewColumnName" RenameColumnOperationProperty = Value Prelude.Text
  set newValue RenameColumnOperationProperty {..}
    = RenameColumnOperationProperty
        {newColumnName = Prelude.pure newValue, ..}