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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-stepconfig.html>
    StepConfigProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-stepconfig.html#cfn-evidently-launch-stepconfig-groupweights>
                        groupWeights :: [GroupToWeightProperty],
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-stepconfig.html#cfn-evidently-launch-stepconfig-segmentoverrides>
                        segmentOverrides :: (Prelude.Maybe [SegmentOverrideProperty]),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-evidently-launch-stepconfig.html#cfn-evidently-launch-stepconfig-starttime>
                        startTime :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStepConfigProperty ::
  [GroupToWeightProperty] -> Value Prelude.Text -> StepConfigProperty
mkStepConfigProperty groupWeights startTime
  = StepConfigProperty
      {haddock_workaround_ = (), groupWeights = groupWeights,
       startTime = startTime, segmentOverrides = Prelude.Nothing}
instance ToResourceProperties StepConfigProperty where
  toResourceProperties StepConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Launch.StepConfig",
         supportsTags = Prelude.False,
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