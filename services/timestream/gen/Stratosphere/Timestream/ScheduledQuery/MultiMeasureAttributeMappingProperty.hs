module Stratosphere.Timestream.ScheduledQuery.MultiMeasureAttributeMappingProperty (
        MultiMeasureAttributeMappingProperty(..),
        mkMultiMeasureAttributeMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiMeasureAttributeMappingProperty
  = MultiMeasureAttributeMappingProperty {measureValueType :: (Value Prelude.Text),
                                          sourceColumn :: (Value Prelude.Text),
                                          targetMultiMeasureAttributeName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiMeasureAttributeMappingProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> MultiMeasureAttributeMappingProperty
mkMultiMeasureAttributeMappingProperty
  measureValueType
  sourceColumn
  = MultiMeasureAttributeMappingProperty
      {measureValueType = measureValueType, sourceColumn = sourceColumn,
       targetMultiMeasureAttributeName = Prelude.Nothing}
instance ToResourceProperties MultiMeasureAttributeMappingProperty where
  toResourceProperties MultiMeasureAttributeMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::ScheduledQuery.MultiMeasureAttributeMapping",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MeasureValueType" JSON..= measureValueType,
                            "SourceColumn" JSON..= sourceColumn]
                           (Prelude.catMaybes
                              [(JSON..=) "TargetMultiMeasureAttributeName"
                                 Prelude.<$> targetMultiMeasureAttributeName]))}
instance JSON.ToJSON MultiMeasureAttributeMappingProperty where
  toJSON MultiMeasureAttributeMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MeasureValueType" JSON..= measureValueType,
               "SourceColumn" JSON..= sourceColumn]
              (Prelude.catMaybes
                 [(JSON..=) "TargetMultiMeasureAttributeName"
                    Prelude.<$> targetMultiMeasureAttributeName])))
instance Property "MeasureValueType" MultiMeasureAttributeMappingProperty where
  type PropertyType "MeasureValueType" MultiMeasureAttributeMappingProperty = Value Prelude.Text
  set newValue MultiMeasureAttributeMappingProperty {..}
    = MultiMeasureAttributeMappingProperty
        {measureValueType = newValue, ..}
instance Property "SourceColumn" MultiMeasureAttributeMappingProperty where
  type PropertyType "SourceColumn" MultiMeasureAttributeMappingProperty = Value Prelude.Text
  set newValue MultiMeasureAttributeMappingProperty {..}
    = MultiMeasureAttributeMappingProperty
        {sourceColumn = newValue, ..}
instance Property "TargetMultiMeasureAttributeName" MultiMeasureAttributeMappingProperty where
  type PropertyType "TargetMultiMeasureAttributeName" MultiMeasureAttributeMappingProperty = Value Prelude.Text
  set newValue MultiMeasureAttributeMappingProperty {..}
    = MultiMeasureAttributeMappingProperty
        {targetMultiMeasureAttributeName = Prelude.pure newValue, ..}