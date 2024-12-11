module Stratosphere.Pipes.Pipe.MultiMeasureAttributeMappingProperty (
        MultiMeasureAttributeMappingProperty(..),
        mkMultiMeasureAttributeMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiMeasureAttributeMappingProperty
  = MultiMeasureAttributeMappingProperty {measureValue :: (Value Prelude.Text),
                                          measureValueType :: (Value Prelude.Text),
                                          multiMeasureAttributeName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiMeasureAttributeMappingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> MultiMeasureAttributeMappingProperty
mkMultiMeasureAttributeMappingProperty
  measureValue
  measureValueType
  multiMeasureAttributeName
  = MultiMeasureAttributeMappingProperty
      {measureValue = measureValue, measureValueType = measureValueType,
       multiMeasureAttributeName = multiMeasureAttributeName}
instance ToResourceProperties MultiMeasureAttributeMappingProperty where
  toResourceProperties MultiMeasureAttributeMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.MultiMeasureAttributeMapping",
         supportsTags = Prelude.False,
         properties = ["MeasureValue" JSON..= measureValue,
                       "MeasureValueType" JSON..= measureValueType,
                       "MultiMeasureAttributeName" JSON..= multiMeasureAttributeName]}
instance JSON.ToJSON MultiMeasureAttributeMappingProperty where
  toJSON MultiMeasureAttributeMappingProperty {..}
    = JSON.object
        ["MeasureValue" JSON..= measureValue,
         "MeasureValueType" JSON..= measureValueType,
         "MultiMeasureAttributeName" JSON..= multiMeasureAttributeName]
instance Property "MeasureValue" MultiMeasureAttributeMappingProperty where
  type PropertyType "MeasureValue" MultiMeasureAttributeMappingProperty = Value Prelude.Text
  set newValue MultiMeasureAttributeMappingProperty {..}
    = MultiMeasureAttributeMappingProperty
        {measureValue = newValue, ..}
instance Property "MeasureValueType" MultiMeasureAttributeMappingProperty where
  type PropertyType "MeasureValueType" MultiMeasureAttributeMappingProperty = Value Prelude.Text
  set newValue MultiMeasureAttributeMappingProperty {..}
    = MultiMeasureAttributeMappingProperty
        {measureValueType = newValue, ..}
instance Property "MultiMeasureAttributeName" MultiMeasureAttributeMappingProperty where
  type PropertyType "MultiMeasureAttributeName" MultiMeasureAttributeMappingProperty = Value Prelude.Text
  set newValue MultiMeasureAttributeMappingProperty {..}
    = MultiMeasureAttributeMappingProperty
        {multiMeasureAttributeName = newValue, ..}