module Stratosphere.ApplicationAutoScaling.ScalableTarget.SuspendedStateProperty (
        SuspendedStateProperty(..), mkSuspendedStateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SuspendedStateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html>
    SuspendedStateProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html#cfn-applicationautoscaling-scalabletarget-suspendedstate-dynamicscalinginsuspended>
                            dynamicScalingInSuspended :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html#cfn-applicationautoscaling-scalabletarget-suspendedstate-dynamicscalingoutsuspended>
                            dynamicScalingOutSuspended :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalabletarget-suspendedstate.html#cfn-applicationautoscaling-scalabletarget-suspendedstate-scheduledscalingsuspended>
                            scheduledScalingSuspended :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSuspendedStateProperty :: SuspendedStateProperty
mkSuspendedStateProperty
  = SuspendedStateProperty
      {haddock_workaround_ = (),
       dynamicScalingInSuspended = Prelude.Nothing,
       dynamicScalingOutSuspended = Prelude.Nothing,
       scheduledScalingSuspended = Prelude.Nothing}
instance ToResourceProperties SuspendedStateProperty where
  toResourceProperties SuspendedStateProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalableTarget.SuspendedState",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DynamicScalingInSuspended"
                              Prelude.<$> dynamicScalingInSuspended,
                            (JSON..=) "DynamicScalingOutSuspended"
                              Prelude.<$> dynamicScalingOutSuspended,
                            (JSON..=) "ScheduledScalingSuspended"
                              Prelude.<$> scheduledScalingSuspended])}
instance JSON.ToJSON SuspendedStateProperty where
  toJSON SuspendedStateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DynamicScalingInSuspended"
                 Prelude.<$> dynamicScalingInSuspended,
               (JSON..=) "DynamicScalingOutSuspended"
                 Prelude.<$> dynamicScalingOutSuspended,
               (JSON..=) "ScheduledScalingSuspended"
                 Prelude.<$> scheduledScalingSuspended]))
instance Property "DynamicScalingInSuspended" SuspendedStateProperty where
  type PropertyType "DynamicScalingInSuspended" SuspendedStateProperty = Value Prelude.Bool
  set newValue SuspendedStateProperty {..}
    = SuspendedStateProperty
        {dynamicScalingInSuspended = Prelude.pure newValue, ..}
instance Property "DynamicScalingOutSuspended" SuspendedStateProperty where
  type PropertyType "DynamicScalingOutSuspended" SuspendedStateProperty = Value Prelude.Bool
  set newValue SuspendedStateProperty {..}
    = SuspendedStateProperty
        {dynamicScalingOutSuspended = Prelude.pure newValue, ..}
instance Property "ScheduledScalingSuspended" SuspendedStateProperty where
  type PropertyType "ScheduledScalingSuspended" SuspendedStateProperty = Value Prelude.Bool
  set newValue SuspendedStateProperty {..}
    = SuspendedStateProperty
        {scheduledScalingSuspended = Prelude.pure newValue, ..}