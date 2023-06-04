module Stratosphere.QuickSight.Analysis.CalculatedMeasureFieldProperty (
        CalculatedMeasureFieldProperty(..),
        mkCalculatedMeasureFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CalculatedMeasureFieldProperty
  = CalculatedMeasureFieldProperty {expression :: (Value Prelude.Text),
                                    fieldId :: (Value Prelude.Text)}
mkCalculatedMeasureFieldProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CalculatedMeasureFieldProperty
mkCalculatedMeasureFieldProperty expression fieldId
  = CalculatedMeasureFieldProperty
      {expression = expression, fieldId = fieldId}
instance ToResourceProperties CalculatedMeasureFieldProperty where
  toResourceProperties CalculatedMeasureFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.CalculatedMeasureField",
         supportsTags = Prelude.False,
         properties = ["Expression" JSON..= expression,
                       "FieldId" JSON..= fieldId]}
instance JSON.ToJSON CalculatedMeasureFieldProperty where
  toJSON CalculatedMeasureFieldProperty {..}
    = JSON.object
        ["Expression" JSON..= expression, "FieldId" JSON..= fieldId]
instance Property "Expression" CalculatedMeasureFieldProperty where
  type PropertyType "Expression" CalculatedMeasureFieldProperty = Value Prelude.Text
  set newValue CalculatedMeasureFieldProperty {..}
    = CalculatedMeasureFieldProperty {expression = newValue, ..}
instance Property "FieldId" CalculatedMeasureFieldProperty where
  type PropertyType "FieldId" CalculatedMeasureFieldProperty = Value Prelude.Text
  set newValue CalculatedMeasureFieldProperty {..}
    = CalculatedMeasureFieldProperty {fieldId = newValue, ..}