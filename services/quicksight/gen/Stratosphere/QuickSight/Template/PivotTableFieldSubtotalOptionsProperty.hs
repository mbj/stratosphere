module Stratosphere.QuickSight.Template.PivotTableFieldSubtotalOptionsProperty (
        PivotTableFieldSubtotalOptionsProperty(..),
        mkPivotTableFieldSubtotalOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PivotTableFieldSubtotalOptionsProperty
  = PivotTableFieldSubtotalOptionsProperty {fieldId :: (Prelude.Maybe (Value Prelude.Text))}
mkPivotTableFieldSubtotalOptionsProperty ::
  PivotTableFieldSubtotalOptionsProperty
mkPivotTableFieldSubtotalOptionsProperty
  = PivotTableFieldSubtotalOptionsProperty
      {fieldId = Prelude.Nothing}
instance ToResourceProperties PivotTableFieldSubtotalOptionsProperty where
  toResourceProperties PivotTableFieldSubtotalOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.PivotTableFieldSubtotalOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "FieldId" Prelude.<$> fieldId])}
instance JSON.ToJSON PivotTableFieldSubtotalOptionsProperty where
  toJSON PivotTableFieldSubtotalOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "FieldId" Prelude.<$> fieldId]))
instance Property "FieldId" PivotTableFieldSubtotalOptionsProperty where
  type PropertyType "FieldId" PivotTableFieldSubtotalOptionsProperty = Value Prelude.Text
  set newValue PivotTableFieldSubtotalOptionsProperty {}
    = PivotTableFieldSubtotalOptionsProperty
        {fieldId = Prelude.pure newValue, ..}