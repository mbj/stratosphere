module Stratosphere.Timestream.ScheduledQuery.MultiMeasureMappingsProperty (
        module Exports, MultiMeasureMappingsProperty(..),
        mkMultiMeasureMappingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Timestream.ScheduledQuery.MultiMeasureAttributeMappingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiMeasureMappingsProperty
  = MultiMeasureMappingsProperty {multiMeasureAttributeMappings :: [MultiMeasureAttributeMappingProperty],
                                  targetMultiMeasureName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiMeasureMappingsProperty ::
  [MultiMeasureAttributeMappingProperty]
  -> MultiMeasureMappingsProperty
mkMultiMeasureMappingsProperty multiMeasureAttributeMappings
  = MultiMeasureMappingsProperty
      {multiMeasureAttributeMappings = multiMeasureAttributeMappings,
       targetMultiMeasureName = Prelude.Nothing}
instance ToResourceProperties MultiMeasureMappingsProperty where
  toResourceProperties MultiMeasureMappingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::ScheduledQuery.MultiMeasureMappings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MultiMeasureAttributeMappings"
                              JSON..= multiMeasureAttributeMappings]
                           (Prelude.catMaybes
                              [(JSON..=) "TargetMultiMeasureName"
                                 Prelude.<$> targetMultiMeasureName]))}
instance JSON.ToJSON MultiMeasureMappingsProperty where
  toJSON MultiMeasureMappingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MultiMeasureAttributeMappings"
                 JSON..= multiMeasureAttributeMappings]
              (Prelude.catMaybes
                 [(JSON..=) "TargetMultiMeasureName"
                    Prelude.<$> targetMultiMeasureName])))
instance Property "MultiMeasureAttributeMappings" MultiMeasureMappingsProperty where
  type PropertyType "MultiMeasureAttributeMappings" MultiMeasureMappingsProperty = [MultiMeasureAttributeMappingProperty]
  set newValue MultiMeasureMappingsProperty {..}
    = MultiMeasureMappingsProperty
        {multiMeasureAttributeMappings = newValue, ..}
instance Property "TargetMultiMeasureName" MultiMeasureMappingsProperty where
  type PropertyType "TargetMultiMeasureName" MultiMeasureMappingsProperty = Value Prelude.Text
  set newValue MultiMeasureMappingsProperty {..}
    = MultiMeasureMappingsProperty
        {targetMultiMeasureName = Prelude.pure newValue, ..}