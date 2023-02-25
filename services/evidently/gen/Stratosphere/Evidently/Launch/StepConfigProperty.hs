module Stratosphere.Evidently.Launch.StepConfigProperty (
        module Exports, StepConfigProperty(..), mkStepConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Evidently.Launch.GroupToWeightProperty as Exports
import {-# SOURCE #-} Stratosphere.Evidently.Launch.SegmentOverrideProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StepConfigProperty
  = StepConfigProperty {groupWeights :: [GroupToWeightProperty],
                        segmentOverrides :: (Prelude.Maybe [SegmentOverrideProperty]),
                        startTime :: (Value Prelude.Text)}
mkStepConfigProperty ::
  [GroupToWeightProperty] -> Value Prelude.Text -> StepConfigProperty
mkStepConfigProperty groupWeights startTime
  = StepConfigProperty
      {groupWeights = groupWeights, startTime = startTime,
       segmentOverrides = Prelude.Nothing}
instance ToResourceProperties StepConfigProperty where
  toResourceProperties StepConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Launch.StepConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GroupWeights" JSON..= groupWeights,
                            "StartTime" JSON..= startTime]
                           (Prelude.catMaybes
                              [(JSON..=) "SegmentOverrides" Prelude.<$> segmentOverrides]))}
instance JSON.ToJSON StepConfigProperty where
  toJSON StepConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GroupWeights" JSON..= groupWeights,
               "StartTime" JSON..= startTime]
              (Prelude.catMaybes
                 [(JSON..=) "SegmentOverrides" Prelude.<$> segmentOverrides])))
instance Property "GroupWeights" StepConfigProperty where
  type PropertyType "GroupWeights" StepConfigProperty = [GroupToWeightProperty]
  set newValue StepConfigProperty {..}
    = StepConfigProperty {groupWeights = newValue, ..}
instance Property "SegmentOverrides" StepConfigProperty where
  type PropertyType "SegmentOverrides" StepConfigProperty = [SegmentOverrideProperty]
  set newValue StepConfigProperty {..}
    = StepConfigProperty {segmentOverrides = Prelude.pure newValue, ..}
instance Property "StartTime" StepConfigProperty where
  type PropertyType "StartTime" StepConfigProperty = Value Prelude.Text
  set newValue StepConfigProperty {..}
    = StepConfigProperty {startTime = newValue, ..}