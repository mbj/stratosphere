module Stratosphere.QuickSight.DataSet.LookbackWindowProperty (
        LookbackWindowProperty(..), mkLookbackWindowProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LookbackWindowProperty
  = LookbackWindowProperty {columnName :: (Prelude.Maybe (Value Prelude.Text)),
                            size :: (Prelude.Maybe (Value Prelude.Double)),
                            sizeUnit :: (Prelude.Maybe (Value Prelude.Text))}
mkLookbackWindowProperty :: LookbackWindowProperty
mkLookbackWindowProperty
  = LookbackWindowProperty
      {columnName = Prelude.Nothing, size = Prelude.Nothing,
       sizeUnit = Prelude.Nothing}
instance ToResourceProperties LookbackWindowProperty where
  toResourceProperties LookbackWindowProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.LookbackWindow",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColumnName" Prelude.<$> columnName,
                            (JSON..=) "Size" Prelude.<$> size,
                            (JSON..=) "SizeUnit" Prelude.<$> sizeUnit])}
instance JSON.ToJSON LookbackWindowProperty where
  toJSON LookbackWindowProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColumnName" Prelude.<$> columnName,
               (JSON..=) "Size" Prelude.<$> size,
               (JSON..=) "SizeUnit" Prelude.<$> sizeUnit]))
instance Property "ColumnName" LookbackWindowProperty where
  type PropertyType "ColumnName" LookbackWindowProperty = Value Prelude.Text
  set newValue LookbackWindowProperty {..}
    = LookbackWindowProperty {columnName = Prelude.pure newValue, ..}
instance Property "Size" LookbackWindowProperty where
  type PropertyType "Size" LookbackWindowProperty = Value Prelude.Double
  set newValue LookbackWindowProperty {..}
    = LookbackWindowProperty {size = Prelude.pure newValue, ..}
instance Property "SizeUnit" LookbackWindowProperty where
  type PropertyType "SizeUnit" LookbackWindowProperty = Value Prelude.Text
  set newValue LookbackWindowProperty {..}
    = LookbackWindowProperty {sizeUnit = Prelude.pure newValue, ..}