module Stratosphere.QuickSight.Dashboard.FieldTooltipItemProperty (
        FieldTooltipItemProperty(..), mkFieldTooltipItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldTooltipItemProperty
  = FieldTooltipItemProperty {fieldId :: (Value Prelude.Text),
                              label :: (Prelude.Maybe (Value Prelude.Text)),
                              visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldTooltipItemProperty ::
  Value Prelude.Text -> FieldTooltipItemProperty
mkFieldTooltipItemProperty fieldId
  = FieldTooltipItemProperty
      {fieldId = fieldId, label = Prelude.Nothing,
       visibility = Prelude.Nothing}
instance ToResourceProperties FieldTooltipItemProperty where
  toResourceProperties FieldTooltipItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FieldTooltipItem",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FieldId" JSON..= fieldId]
                           (Prelude.catMaybes
                              [(JSON..=) "Label" Prelude.<$> label,
                               (JSON..=) "Visibility" Prelude.<$> visibility]))}
instance JSON.ToJSON FieldTooltipItemProperty where
  toJSON FieldTooltipItemProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FieldId" JSON..= fieldId]
              (Prelude.catMaybes
                 [(JSON..=) "Label" Prelude.<$> label,
                  (JSON..=) "Visibility" Prelude.<$> visibility])))
instance Property "FieldId" FieldTooltipItemProperty where
  type PropertyType "FieldId" FieldTooltipItemProperty = Value Prelude.Text
  set newValue FieldTooltipItemProperty {..}
    = FieldTooltipItemProperty {fieldId = newValue, ..}
instance Property "Label" FieldTooltipItemProperty where
  type PropertyType "Label" FieldTooltipItemProperty = Value Prelude.Text
  set newValue FieldTooltipItemProperty {..}
    = FieldTooltipItemProperty {label = Prelude.pure newValue, ..}
instance Property "Visibility" FieldTooltipItemProperty where
  type PropertyType "Visibility" FieldTooltipItemProperty = Value Prelude.Text
  set newValue FieldTooltipItemProperty {..}
    = FieldTooltipItemProperty {visibility = Prelude.pure newValue, ..}