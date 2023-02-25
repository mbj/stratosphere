module Stratosphere.QuickSight.DataSet.CalculatedColumnProperty (
        CalculatedColumnProperty(..), mkCalculatedColumnProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CalculatedColumnProperty
  = CalculatedColumnProperty {columnId :: (Value Prelude.Text),
                              columnName :: (Value Prelude.Text),
                              expression :: (Value Prelude.Text)}
mkCalculatedColumnProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> CalculatedColumnProperty
mkCalculatedColumnProperty columnId columnName expression
  = CalculatedColumnProperty
      {columnId = columnId, columnName = columnName,
       expression = expression}
instance ToResourceProperties CalculatedColumnProperty where
  toResourceProperties CalculatedColumnProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.CalculatedColumn",
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