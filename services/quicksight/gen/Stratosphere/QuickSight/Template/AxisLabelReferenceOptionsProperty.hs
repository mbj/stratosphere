module Stratosphere.QuickSight.Template.AxisLabelReferenceOptionsProperty (
        module Exports, AxisLabelReferenceOptionsProperty(..),
        mkAxisLabelReferenceOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ColumnIdentifierProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AxisLabelReferenceOptionsProperty
  = AxisLabelReferenceOptionsProperty {column :: ColumnIdentifierProperty,
                                       fieldId :: (Value Prelude.Text)}
mkAxisLabelReferenceOptionsProperty ::
  ColumnIdentifierProperty
  -> Value Prelude.Text -> AxisLabelReferenceOptionsProperty
mkAxisLabelReferenceOptionsProperty column fieldId
  = AxisLabelReferenceOptionsProperty
      {column = column, fieldId = fieldId}
instance ToResourceProperties AxisLabelReferenceOptionsProperty where
  toResourceProperties AxisLabelReferenceOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.AxisLabelReferenceOptions",
         supportsTags = Prelude.False,
         properties = ["Column" JSON..= column, "FieldId" JSON..= fieldId]}
instance JSON.ToJSON AxisLabelReferenceOptionsProperty where
  toJSON AxisLabelReferenceOptionsProperty {..}
    = JSON.object ["Column" JSON..= column, "FieldId" JSON..= fieldId]
instance Property "Column" AxisLabelReferenceOptionsProperty where
  type PropertyType "Column" AxisLabelReferenceOptionsProperty = ColumnIdentifierProperty
  set newValue AxisLabelReferenceOptionsProperty {..}
    = AxisLabelReferenceOptionsProperty {column = newValue, ..}
instance Property "FieldId" AxisLabelReferenceOptionsProperty where
  type PropertyType "FieldId" AxisLabelReferenceOptionsProperty = Value Prelude.Text
  set newValue AxisLabelReferenceOptionsProperty {..}
    = AxisLabelReferenceOptionsProperty {fieldId = newValue, ..}