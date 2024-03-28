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
                                     newColumnType :: (Value Prelude.Text),
                                     subType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCastColumnTypeOperationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CastColumnTypeOperationProperty
mkCastColumnTypeOperationProperty columnName newColumnType
  = CastColumnTypeOperationProperty
      {columnName = columnName, newColumnType = newColumnType,
       format = Prelude.Nothing, subType = Prelude.Nothing}
instance ToResourceProperties CastColumnTypeOperationProperty where
  toResourceProperties CastColumnTypeOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.CastColumnTypeOperation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ColumnName" JSON..= columnName,
                            "NewColumnType" JSON..= newColumnType]
                           (Prelude.catMaybes
                              [(JSON..=) "Format" Prelude.<$> format,
                               (JSON..=) "SubType" Prelude.<$> subType]))}
instance JSON.ToJSON CastColumnTypeOperationProperty where
  toJSON CastColumnTypeOperationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ColumnName" JSON..= columnName,
               "NewColumnType" JSON..= newColumnType]
              (Prelude.catMaybes
                 [(JSON..=) "Format" Prelude.<$> format,
                  (JSON..=) "SubType" Prelude.<$> subType])))
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
instance Property "SubType" CastColumnTypeOperationProperty where
  type PropertyType "SubType" CastColumnTypeOperationProperty = Value Prelude.Text
  set newValue CastColumnTypeOperationProperty {..}
    = CastColumnTypeOperationProperty
        {subType = Prelude.pure newValue, ..}