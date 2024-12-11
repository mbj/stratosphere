module Stratosphere.Pipes.Pipe.SingleMeasureMappingProperty (
        SingleMeasureMappingProperty(..), mkSingleMeasureMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SingleMeasureMappingProperty
  = SingleMeasureMappingProperty {measureName :: (Value Prelude.Text),
                                  measureValue :: (Value Prelude.Text),
                                  measureValueType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSingleMeasureMappingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> SingleMeasureMappingProperty
mkSingleMeasureMappingProperty
  measureName
  measureValue
  measureValueType
  = SingleMeasureMappingProperty
      {measureName = measureName, measureValue = measureValue,
       measureValueType = measureValueType}
instance ToResourceProperties SingleMeasureMappingProperty where
  toResourceProperties SingleMeasureMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.SingleMeasureMapping",
         supportsTags = Prelude.False,
         properties = ["MeasureName" JSON..= measureName,
                       "MeasureValue" JSON..= measureValue,
                       "MeasureValueType" JSON..= measureValueType]}
instance JSON.ToJSON SingleMeasureMappingProperty where
  toJSON SingleMeasureMappingProperty {..}
    = JSON.object
        ["MeasureName" JSON..= measureName,
         "MeasureValue" JSON..= measureValue,
         "MeasureValueType" JSON..= measureValueType]
instance Property "MeasureName" SingleMeasureMappingProperty where
  type PropertyType "MeasureName" SingleMeasureMappingProperty = Value Prelude.Text
  set newValue SingleMeasureMappingProperty {..}
    = SingleMeasureMappingProperty {measureName = newValue, ..}
instance Property "MeasureValue" SingleMeasureMappingProperty where
  type PropertyType "MeasureValue" SingleMeasureMappingProperty = Value Prelude.Text
  set newValue SingleMeasureMappingProperty {..}
    = SingleMeasureMappingProperty {measureValue = newValue, ..}
instance Property "MeasureValueType" SingleMeasureMappingProperty where
  type PropertyType "MeasureValueType" SingleMeasureMappingProperty = Value Prelude.Text
  set newValue SingleMeasureMappingProperty {..}
    = SingleMeasureMappingProperty {measureValueType = newValue, ..}