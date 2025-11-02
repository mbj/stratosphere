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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-mixedmeasuremapping.html>
    MixedMeasureMappingProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-mixedmeasuremapping.html#cfn-timestream-scheduledquery-mixedmeasuremapping-measurename>
                                 measureName :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-mixedmeasuremapping.html#cfn-timestream-scheduledquery-mixedmeasuremapping-measurevaluetype>
                                 measureValueType :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-mixedmeasuremapping.html#cfn-timestream-scheduledquery-mixedmeasuremapping-multimeasureattributemappings>
                                 multiMeasureAttributeMappings :: (Prelude.Maybe [MultiMeasureAttributeMappingProperty]),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-mixedmeasuremapping.html#cfn-timestream-scheduledquery-mixedmeasuremapping-sourcecolumn>
                                 sourceColumn :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-mixedmeasuremapping.html#cfn-timestream-scheduledquery-mixedmeasuremapping-targetmeasurename>
                                 targetMeasureName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMixedMeasureMappingProperty ::
  Value Prelude.Text -> MixedMeasureMappingProperty
mkMixedMeasureMappingProperty measureValueType
  = MixedMeasureMappingProperty
      {haddock_workaround_ = (), measureValueType = measureValueType,
       measureName = Prelude.Nothing,
       multiMeasureAttributeMappings = Prelude.Nothing,
       sourceColumn = Prelude.Nothing,
       targetMeasureName = Prelude.Nothing}
instance ToResourceProperties MixedMeasureMappingProperty where
  toResourceProperties MixedMeasureMappingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::ScheduledQuery.MixedMeasureMapping",
         supportsTags = Prelude.False,
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