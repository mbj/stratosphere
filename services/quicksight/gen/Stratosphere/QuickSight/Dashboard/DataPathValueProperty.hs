module Stratosphere.QuickSight.Dashboard.DataPathValueProperty (
        DataPathValueProperty(..), mkDataPathValueProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataPathValueProperty
  = DataPathValueProperty {fieldId :: (Value Prelude.Text),
                           fieldValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataPathValueProperty ::
  Value Prelude.Text -> Value Prelude.Text -> DataPathValueProperty
mkDataPathValueProperty fieldId fieldValue
  = DataPathValueProperty
      {fieldId = fieldId, fieldValue = fieldValue}
instance ToResourceProperties DataPathValueProperty where
  toResourceProperties DataPathValueProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.DataPathValue",
         supportsTags = Prelude.False,
         properties = ["FieldId" JSON..= fieldId,
                       "FieldValue" JSON..= fieldValue]}
instance JSON.ToJSON DataPathValueProperty where
  toJSON DataPathValueProperty {..}
    = JSON.object
        ["FieldId" JSON..= fieldId, "FieldValue" JSON..= fieldValue]
instance Property "FieldId" DataPathValueProperty where
  type PropertyType "FieldId" DataPathValueProperty = Value Prelude.Text
  set newValue DataPathValueProperty {..}
    = DataPathValueProperty {fieldId = newValue, ..}
instance Property "FieldValue" DataPathValueProperty where
  type PropertyType "FieldValue" DataPathValueProperty = Value Prelude.Text
  set newValue DataPathValueProperty {..}
    = DataPathValueProperty {fieldValue = newValue, ..}