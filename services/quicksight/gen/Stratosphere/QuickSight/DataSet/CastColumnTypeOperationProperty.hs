module Stratosphere.QuickSight.DataSet.CastColumnTypeOperationProperty (
        CastColumnTypeOperationProperty(..),
        mkCastColumnTypeOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CastColumnTypeOperationProperty
  = CastColumnTypeOperationProperty {columnName :: (Value Prelude.Text),
                                     format :: (Prelude.Maybe (Value Prelude.Text)),
                                     newColumnType :: (Value Prelude.Text)}
mkCastColumnTypeOperationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CastColumnTypeOperationProperty
mkCastColumnTypeOperationProperty columnName newColumnType
  = CastColumnTypeOperationProperty
      {columnName = columnName, newColumnType = newColumnType,
       format = Prelude.Nothing}
instance ToResourceProperties CastColumnTypeOperationProperty where
  toResourceProperties CastColumnTypeOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.CastColumnTypeOperation",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ColumnName" JSON..= columnName,
                            "NewColumnType" JSON..= newColumnType]
                           (Prelude.catMaybes [(JSON..=) "Format" Prelude.<$> format]))}
instance JSON.ToJSON CastColumnTypeOperationProperty where
  toJSON CastColumnTypeOperationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ColumnName" JSON..= columnName,
               "NewColumnType" JSON..= newColumnType]
              (Prelude.catMaybes [(JSON..=) "Format" Prelude.<$> format])))
instance Property "ColumnName" CastColumnTypeOperationProperty where
  type PropertyType "ColumnName" CastColumnTypeOperationProperty = Value Prelude.Text
  set newValue CastColumnTypeOperationProperty {..}
    = CastColumnTypeOperationProperty {columnName = newValue, ..}
instance Property "Format" CastColumnTypeOperationProperty where
  type PropertyType "Format" CastColumnTypeOperationProperty = Value Prelude.Text
  set newValue CastColumnTypeOperationProperty {..}
    = CastColumnTypeOperationProperty
        {format = Prelude.pure newValue, ..}
instance Property "NewColumnType" CastColumnTypeOperationProperty where
  type PropertyType "NewColumnType" CastColumnTypeOperationProperty = Value Prelude.Text
  set newValue CastColumnTypeOperationProperty {..}
    = CastColumnTypeOperationProperty {newColumnType = newValue, ..}