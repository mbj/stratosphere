module Stratosphere.QuickSight.Template.DataBarsOptionsProperty (
        DataBarsOptionsProperty(..), mkDataBarsOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataBarsOptionsProperty
  = DataBarsOptionsProperty {fieldId :: (Value Prelude.Text),
                             negativeColor :: (Prelude.Maybe (Value Prelude.Text)),
                             positiveColor :: (Prelude.Maybe (Value Prelude.Text))}
mkDataBarsOptionsProperty ::
  Value Prelude.Text -> DataBarsOptionsProperty
mkDataBarsOptionsProperty fieldId
  = DataBarsOptionsProperty
      {fieldId = fieldId, negativeColor = Prelude.Nothing,
       positiveColor = Prelude.Nothing}
instance ToResourceProperties DataBarsOptionsProperty where
  toResourceProperties DataBarsOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.DataBarsOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FieldId" JSON..= fieldId]
                           (Prelude.catMaybes
                              [(JSON..=) "NegativeColor" Prelude.<$> negativeColor,
                               (JSON..=) "PositiveColor" Prelude.<$> positiveColor]))}
instance JSON.ToJSON DataBarsOptionsProperty where
  toJSON DataBarsOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FieldId" JSON..= fieldId]
              (Prelude.catMaybes
                 [(JSON..=) "NegativeColor" Prelude.<$> negativeColor,
                  (JSON..=) "PositiveColor" Prelude.<$> positiveColor])))
instance Property "FieldId" DataBarsOptionsProperty where
  type PropertyType "FieldId" DataBarsOptionsProperty = Value Prelude.Text
  set newValue DataBarsOptionsProperty {..}
    = DataBarsOptionsProperty {fieldId = newValue, ..}
instance Property "NegativeColor" DataBarsOptionsProperty where
  type PropertyType "NegativeColor" DataBarsOptionsProperty = Value Prelude.Text
  set newValue DataBarsOptionsProperty {..}
    = DataBarsOptionsProperty
        {negativeColor = Prelude.pure newValue, ..}
instance Property "PositiveColor" DataBarsOptionsProperty where
  type PropertyType "PositiveColor" DataBarsOptionsProperty = Value Prelude.Text
  set newValue DataBarsOptionsProperty {..}
    = DataBarsOptionsProperty
        {positiveColor = Prelude.pure newValue, ..}