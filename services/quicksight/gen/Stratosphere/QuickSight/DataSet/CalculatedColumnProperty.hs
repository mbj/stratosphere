module Stratosphere.QuickSight.DataSet.CalculatedColumnProperty (
        CalculatedColumnProperty(..), mkCalculatedColumnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CalculatedColumnProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-calculatedcolumn.html>
    CalculatedColumnProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-calculatedcolumn.html#cfn-quicksight-dataset-calculatedcolumn-columnid>
                              columnId :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-calculatedcolumn.html#cfn-quicksight-dataset-calculatedcolumn-columnname>
                              columnName :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-calculatedcolumn.html#cfn-quicksight-dataset-calculatedcolumn-expression>
                              expression :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCalculatedColumnProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> CalculatedColumnProperty
mkCalculatedColumnProperty columnId columnName expression
  = CalculatedColumnProperty
      {haddock_workaround_ = (), columnId = columnId,
       columnName = columnName, expression = expression}
instance ToResourceProperties CalculatedColumnProperty where
  toResourceProperties CalculatedColumnProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.CalculatedColumn",
         supportsTags = Prelude.False,
         properties = ["ColumnId" JSON..= columnId,
                       "ColumnName" JSON..= columnName, "Expression" JSON..= expression]}
instance JSON.ToJSON CalculatedColumnProperty where
  toJSON CalculatedColumnProperty {..}
    = JSON.object
        ["ColumnId" JSON..= columnId, "ColumnName" JSON..= columnName,
         "Expression" JSON..= expression]
instance Property "ColumnId" CalculatedColumnProperty where
  type PropertyType "ColumnId" CalculatedColumnProperty = Value Prelude.Text
  set newValue CalculatedColumnProperty {..}
    = CalculatedColumnProperty {columnId = newValue, ..}
instance Property "ColumnName" CalculatedColumnProperty where
  type PropertyType "ColumnName" CalculatedColumnProperty = Value Prelude.Text
  set newValue CalculatedColumnProperty {..}
    = CalculatedColumnProperty {columnName = newValue, ..}
instance Property "Expression" CalculatedColumnProperty where
  type PropertyType "Expression" CalculatedColumnProperty = Value Prelude.Text
  set newValue CalculatedColumnProperty {..}
    = CalculatedColumnProperty {expression = newValue, ..}