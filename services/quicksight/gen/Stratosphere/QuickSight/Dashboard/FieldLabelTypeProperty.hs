module Stratosphere.QuickSight.Dashboard.FieldLabelTypeProperty (
        FieldLabelTypeProperty(..), mkFieldLabelTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldLabelTypeProperty
  = FieldLabelTypeProperty {fieldId :: (Prelude.Maybe (Value Prelude.Text)),
                            visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldLabelTypeProperty :: FieldLabelTypeProperty
mkFieldLabelTypeProperty
  = FieldLabelTypeProperty
      {fieldId = Prelude.Nothing, visibility = Prelude.Nothing}
instance ToResourceProperties FieldLabelTypeProperty where
  toResourceProperties FieldLabelTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FieldLabelType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldId" Prelude.<$> fieldId,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON FieldLabelTypeProperty where
  toJSON FieldLabelTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FieldId" Prelude.<$> fieldId,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "FieldId" FieldLabelTypeProperty where
  type PropertyType "FieldId" FieldLabelTypeProperty = Value Prelude.Text
  set newValue FieldLabelTypeProperty {..}
    = FieldLabelTypeProperty {fieldId = Prelude.pure newValue, ..}
instance Property "Visibility" FieldLabelTypeProperty where
  type PropertyType "Visibility" FieldLabelTypeProperty = Value Prelude.Text
  set newValue FieldLabelTypeProperty {..}
    = FieldLabelTypeProperty {visibility = Prelude.pure newValue, ..}