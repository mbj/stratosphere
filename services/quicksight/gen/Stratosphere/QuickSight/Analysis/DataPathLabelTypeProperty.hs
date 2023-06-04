module Stratosphere.QuickSight.Analysis.DataPathLabelTypeProperty (
        DataPathLabelTypeProperty(..), mkDataPathLabelTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataPathLabelTypeProperty
  = DataPathLabelTypeProperty {fieldId :: (Prelude.Maybe (Value Prelude.Text)),
                               fieldValue :: (Prelude.Maybe (Value Prelude.Text)),
                               visibility :: (Prelude.Maybe (Value Prelude.Text))}
mkDataPathLabelTypeProperty :: DataPathLabelTypeProperty
mkDataPathLabelTypeProperty
  = DataPathLabelTypeProperty
      {fieldId = Prelude.Nothing, fieldValue = Prelude.Nothing,
       visibility = Prelude.Nothing}
instance ToResourceProperties DataPathLabelTypeProperty where
  toResourceProperties DataPathLabelTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DataPathLabelType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FieldId" Prelude.<$> fieldId,
                            (JSON..=) "FieldValue" Prelude.<$> fieldValue,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON DataPathLabelTypeProperty where
  toJSON DataPathLabelTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FieldId" Prelude.<$> fieldId,
               (JSON..=) "FieldValue" Prelude.<$> fieldValue,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "FieldId" DataPathLabelTypeProperty where
  type PropertyType "FieldId" DataPathLabelTypeProperty = Value Prelude.Text
  set newValue DataPathLabelTypeProperty {..}
    = DataPathLabelTypeProperty {fieldId = Prelude.pure newValue, ..}
instance Property "FieldValue" DataPathLabelTypeProperty where
  type PropertyType "FieldValue" DataPathLabelTypeProperty = Value Prelude.Text
  set newValue DataPathLabelTypeProperty {..}
    = DataPathLabelTypeProperty
        {fieldValue = Prelude.pure newValue, ..}
instance Property "Visibility" DataPathLabelTypeProperty where
  type PropertyType "Visibility" DataPathLabelTypeProperty = Value Prelude.Text
  set newValue DataPathLabelTypeProperty {..}
    = DataPathLabelTypeProperty
        {visibility = Prelude.pure newValue, ..}