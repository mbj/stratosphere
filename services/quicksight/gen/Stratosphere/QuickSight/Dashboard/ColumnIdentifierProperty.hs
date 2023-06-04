module Stratosphere.QuickSight.Dashboard.ColumnIdentifierProperty (
        ColumnIdentifierProperty(..), mkColumnIdentifierProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnIdentifierProperty
  = ColumnIdentifierProperty {columnName :: (Value Prelude.Text),
                              dataSetIdentifier :: (Value Prelude.Text)}
mkColumnIdentifierProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ColumnIdentifierProperty
mkColumnIdentifierProperty columnName dataSetIdentifier
  = ColumnIdentifierProperty
      {columnName = columnName, dataSetIdentifier = dataSetIdentifier}
instance ToResourceProperties ColumnIdentifierProperty where
  toResourceProperties ColumnIdentifierProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ColumnIdentifier",
         supportsTags = Prelude.False,
         properties = ["ColumnName" JSON..= columnName,
                       "DataSetIdentifier" JSON..= dataSetIdentifier]}
instance JSON.ToJSON ColumnIdentifierProperty where
  toJSON ColumnIdentifierProperty {..}
    = JSON.object
        ["ColumnName" JSON..= columnName,
         "DataSetIdentifier" JSON..= dataSetIdentifier]
instance Property "ColumnName" ColumnIdentifierProperty where
  type PropertyType "ColumnName" ColumnIdentifierProperty = Value Prelude.Text
  set newValue ColumnIdentifierProperty {..}
    = ColumnIdentifierProperty {columnName = newValue, ..}
instance Property "DataSetIdentifier" ColumnIdentifierProperty where
  type PropertyType "DataSetIdentifier" ColumnIdentifierProperty = Value Prelude.Text
  set newValue ColumnIdentifierProperty {..}
    = ColumnIdentifierProperty {dataSetIdentifier = newValue, ..}