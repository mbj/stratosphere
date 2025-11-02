module Stratosphere.QuickSight.DataSet.UntagColumnOperationProperty (
        UntagColumnOperationProperty(..), mkUntagColumnOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data UntagColumnOperationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-untagcolumnoperation.html>
    UntagColumnOperationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-untagcolumnoperation.html#cfn-quicksight-dataset-untagcolumnoperation-columnname>
                                  columnName :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-untagcolumnoperation.html#cfn-quicksight-dataset-untagcolumnoperation-tagnames>
                                  tagNames :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkUntagColumnOperationProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> UntagColumnOperationProperty
mkUntagColumnOperationProperty columnName tagNames
  = UntagColumnOperationProperty
      {haddock_workaround_ = (), columnName = columnName,
       tagNames = tagNames}
instance ToResourceProperties UntagColumnOperationProperty where
  toResourceProperties UntagColumnOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.UntagColumnOperation",
         supportsTags = Prelude.False,
         properties = ["ColumnName" JSON..= columnName,
                       "TagNames" JSON..= tagNames]}
instance JSON.ToJSON UntagColumnOperationProperty where
  toJSON UntagColumnOperationProperty {..}
    = JSON.object
        ["ColumnName" JSON..= columnName, "TagNames" JSON..= tagNames]
instance Property "ColumnName" UntagColumnOperationProperty where
  type PropertyType "ColumnName" UntagColumnOperationProperty = Value Prelude.Text
  set newValue UntagColumnOperationProperty {..}
    = UntagColumnOperationProperty {columnName = newValue, ..}
instance Property "TagNames" UntagColumnOperationProperty where
  type PropertyType "TagNames" UntagColumnOperationProperty = ValueList Prelude.Text
  set newValue UntagColumnOperationProperty {..}
    = UntagColumnOperationProperty {tagNames = newValue, ..}