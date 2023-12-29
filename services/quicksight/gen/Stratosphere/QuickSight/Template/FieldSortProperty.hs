module Stratosphere.QuickSight.Template.FieldSortProperty (
        FieldSortProperty(..), mkFieldSortProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FieldSortProperty
  = FieldSortProperty {direction :: (Value Prelude.Text),
                       fieldId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFieldSortProperty ::
  Value Prelude.Text -> Value Prelude.Text -> FieldSortProperty
mkFieldSortProperty direction fieldId
  = FieldSortProperty {direction = direction, fieldId = fieldId}
instance ToResourceProperties FieldSortProperty where
  toResourceProperties FieldSortProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.FieldSort",
         supportsTags = Prelude.False,
         properties = ["Direction" JSON..= direction,
                       "FieldId" JSON..= fieldId]}
instance JSON.ToJSON FieldSortProperty where
  toJSON FieldSortProperty {..}
    = JSON.object
        ["Direction" JSON..= direction, "FieldId" JSON..= fieldId]
instance Property "Direction" FieldSortProperty where
  type PropertyType "Direction" FieldSortProperty = Value Prelude.Text
  set newValue FieldSortProperty {..}
    = FieldSortProperty {direction = newValue, ..}
instance Property "FieldId" FieldSortProperty where
  type PropertyType "FieldId" FieldSortProperty = Value Prelude.Text
  set newValue FieldSortProperty {..}
    = FieldSortProperty {fieldId = newValue, ..}