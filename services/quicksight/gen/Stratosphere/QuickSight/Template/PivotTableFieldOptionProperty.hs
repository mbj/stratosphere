module Stratosphere.QuickSight.Template.PivotTableFieldOptionProperty (
        PivotTableFieldOptionProperty(..), mkPivotTableFieldOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PivotTableFieldOptionProperty
  = PivotTableFieldOptionProperty {customLabel :: (Prelude.Maybe (Value Prelude.Text)),
                                   fieldId :: (Value Prelude.Text),
                                   visibility :: (Prelude.Maybe (Value Prelude.Text))}
mkPivotTableFieldOptionProperty ::
  Value Prelude.Text -> PivotTableFieldOptionProperty
mkPivotTableFieldOptionProperty fieldId
  = PivotTableFieldOptionProperty
      {fieldId = fieldId, customLabel = Prelude.Nothing,
       visibility = Prelude.Nothing}
instance ToResourceProperties PivotTableFieldOptionProperty where
  toResourceProperties PivotTableFieldOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.PivotTableFieldOption",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FieldId" JSON..= fieldId]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomLabel" Prelude.<$> customLabel,
                               (JSON..=) "Visibility" Prelude.<$> visibility]))}
instance JSON.ToJSON PivotTableFieldOptionProperty where
  toJSON PivotTableFieldOptionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FieldId" JSON..= fieldId]
              (Prelude.catMaybes
                 [(JSON..=) "CustomLabel" Prelude.<$> customLabel,
                  (JSON..=) "Visibility" Prelude.<$> visibility])))
instance Property "CustomLabel" PivotTableFieldOptionProperty where
  type PropertyType "CustomLabel" PivotTableFieldOptionProperty = Value Prelude.Text
  set newValue PivotTableFieldOptionProperty {..}
    = PivotTableFieldOptionProperty
        {customLabel = Prelude.pure newValue, ..}
instance Property "FieldId" PivotTableFieldOptionProperty where
  type PropertyType "FieldId" PivotTableFieldOptionProperty = Value Prelude.Text
  set newValue PivotTableFieldOptionProperty {..}
    = PivotTableFieldOptionProperty {fieldId = newValue, ..}
instance Property "Visibility" PivotTableFieldOptionProperty where
  type PropertyType "Visibility" PivotTableFieldOptionProperty = Value Prelude.Text
  set newValue PivotTableFieldOptionProperty {..}
    = PivotTableFieldOptionProperty
        {visibility = Prelude.pure newValue, ..}