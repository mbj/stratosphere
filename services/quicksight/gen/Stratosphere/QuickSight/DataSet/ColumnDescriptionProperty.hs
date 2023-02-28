module Stratosphere.QuickSight.DataSet.ColumnDescriptionProperty (
        ColumnDescriptionProperty(..), mkColumnDescriptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ColumnDescriptionProperty
  = ColumnDescriptionProperty {text :: (Prelude.Maybe (Value Prelude.Text))}
mkColumnDescriptionProperty :: ColumnDescriptionProperty
mkColumnDescriptionProperty
  = ColumnDescriptionProperty {text = Prelude.Nothing}
instance ToResourceProperties ColumnDescriptionProperty where
  toResourceProperties ColumnDescriptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.ColumnDescription",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Text" Prelude.<$> text])}
instance JSON.ToJSON ColumnDescriptionProperty where
  toJSON ColumnDescriptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Text" Prelude.<$> text]))
instance Property "Text" ColumnDescriptionProperty where
  type PropertyType "Text" ColumnDescriptionProperty = Value Prelude.Text
  set newValue ColumnDescriptionProperty {}
    = ColumnDescriptionProperty {text = Prelude.pure newValue, ..}