module Stratosphere.Timestream.ScheduledQuery.MixedMeasureMappingProperty (
        module Exports, MixedMeasureMappingProperty(..),
        mkMixedMeasureMappingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Timestream.ScheduledQuery.MultiMeasureAttributeMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MixedMeasureMappingProperty
  = MixedMeasureMappingProperty {measureName :: (Prelude.Maybe (Value Prelude.Text)),
                                 measureValueType :: (Value Prelude.Text),
                                 multiMeasureAttributeMappings :: (Prelude.Maybe [MultiMeasureAttributeMappingProperty]),
                                 sourceColumn :: (Prelude.Maybe (Value Prelude.Text)),
                                 targetMeasureName :: (Prelude.Maybe (Value Prelude.Text))}
mkMixedMeasureMappingProperty ::
  Value Prelude.Text -> MixedMeasureMappingProperty
mkMixedMeasureMappingProperty measureValueType
  = MixedMeasureMappingProperty
      {measureValueType = measureValueType,
       measureName = Prelude.Nothing,
       multiMeasureAttributeMappings = Prelude.Nothing,
       sourceColumn = Prelude.Nothing,
       targetMeasureName = Prelude.Nothing}
instance ToResourceProperties MixedMeasureMappingProperty where
  toResourceProperties MixedMeasureMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::ScheduledQuery.MixedMeasureMapping",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MeasureValueType" JSON..= measureValueType]
                           (Prelude.catMaybes
                              [(JSON..=) "MeasureName" Prelude.<$> measureName,
                               (JSON..=) "MultiMeasureAttributeMappings"
                                 Prelude.<$> multiMeasureAttributeMappings,
                               (JSON..=) "SourceColumn" Prelude.<$> sourceColumn,
                               (JSON..=) "TargetMeasureName" Prelude.<$> targetMeasureName]))}
instance JSON.ToJSON MixedMeasureMappingProperty where
  toJSON MixedMeasureMappingProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MeasureValueType" JSON..= measureValueType]
              (Prelude.catMaybes
                 [(JSON..=) "MeasureName" Prelude.<$> measureName,
                  (JSON..=) "MultiMeasureAttributeMappings"
                    Prelude.<$> multiMeasureAttributeMappings,
                  (JSON..=) "SourceColumn" Prelude.<$> sourceColumn,
                  (JSON..=) "TargetMeasureName" Prelude.<$> targetMeasureName])))
instance Property "MeasureName" MixedMeasureMappingProperty where
  type PropertyType "MeasureName" MixedMeasureMappingProperty = Value Prelude.Text
  set newValue MixedMeasureMappingProperty {..}
    = MixedMeasureMappingProperty
        {measureName = Prelude.pure newValue, ..}
instance Property "MeasureValueType" MixedMeasureMappingProperty where
  type PropertyType "MeasureValueType" MixedMeasureMappingProperty = Value Prelude.Text
  set newValue MixedMeasureMappingProperty {..}
    = MixedMeasureMappingProperty {measureValueType = newValue, ..}
instance Property "MultiMeasureAttributeMappings" MixedMeasureMappingProperty where
  type PropertyType "MultiMeasureAttributeMappings" MixedMeasureMappingProperty = [MultiMeasureAttributeMappingProperty]
  set newValue MixedMeasureMappingProperty {..}
    = MixedMeasureMappingProperty
        {multiMeasureAttributeMappings = Prelude.pure newValue, ..}
instance Property "SourceColumn" MixedMeasureMappingProperty where
  type PropertyType "SourceColumn" MixedMeasureMappingProperty = Value Prelude.Text
  set newValue MixedMeasureMappingProperty {..}
    = MixedMeasureMappingProperty
        {sourceColumn = Prelude.pure newValue, ..}
instance Property "TargetMeasureName" MixedMeasureMappingProperty where
  type PropertyType "TargetMeasureName" MixedMeasureMappingProperty = Value Prelude.Text
  set newValue MixedMeasureMappingProperty {..}
    = MixedMeasureMappingProperty
        {targetMeasureName = Prelude.pure newValue, ..}