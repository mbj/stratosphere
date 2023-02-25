module Stratosphere.ApplicationAutoScaling.ScalableTarget.SuspendedStateProperty (
        SuspendedStateProperty(..), mkSuspendedStateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SuspendedStateProperty
  = SuspendedStateProperty {dynamicScalingInSuspended :: (Prelude.Maybe (Value Prelude.Bool)),
                            dynamicScalingOutSuspended :: (Prelude.Maybe (Value Prelude.Bool)),
                            scheduledScalingSuspended :: (Prelude.Maybe (Value Prelude.Bool))}
mkSuspendedStateProperty :: SuspendedStateProperty
mkSuspendedStateProperty
  = SuspendedStateProperty
      {dynamicScalingInSuspended = Prelude.Nothing,
       dynamicScalingOutSuspended = Prelude.Nothing,
       scheduledScalingSuspended = Prelude.Nothing}
instance ToResourceProperties SuspendedStateProperty where
  toResourceProperties SuspendedStateProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalableTarget.SuspendedState",
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