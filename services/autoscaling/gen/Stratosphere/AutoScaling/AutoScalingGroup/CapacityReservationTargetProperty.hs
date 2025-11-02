module Stratosphere.AutoScaling.AutoScalingGroup.CapacityReservationTargetProperty (
        CapacityReservationTargetProperty(..),
        mkCapacityReservationTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityReservationTargetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-capacityreservationtarget.html>
    CapacityReservationTargetProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-capacityreservationtarget.html#cfn-autoscaling-autoscalinggroup-capacityreservationtarget-capacityreservationids>
                                       capacityReservationIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-capacityreservationtarget.html#cfn-autoscaling-autoscalinggroup-capacityreservationtarget-capacityreservationresourcegrouparns>
                                       capacityReservationResourceGroupArns :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityReservationTargetProperty ::
  CapacityReservationTargetProperty
mkCapacityReservationTargetProperty
  = CapacityReservationTargetProperty
      {haddock_workaround_ = (),
       capacityReservationIds = Prelude.Nothing,
       capacityReservationResourceGroupArns = Prelude.Nothing}
instance ToResourceProperties CapacityReservationTargetProperty where
  toResourceProperties CapacityReservationTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.CapacityReservationTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CapacityReservationIds"
                              Prelude.<$> capacityReservationIds,
                            (JSON..=) "CapacityReservationResourceGroupArns"
                              Prelude.<$> capacityReservationResourceGroupArns])}
instance JSON.ToJSON CapacityReservationTargetProperty where
  toJSON CapacityReservationTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CapacityReservationIds"
                 Prelude.<$> capacityReservationIds,
               (JSON..=) "CapacityReservationResourceGroupArns"
                 Prelude.<$> capacityReservationResourceGroupArns]))
instance Property "CapacityReservationIds" CapacityReservationTargetProperty where
  type PropertyType "CapacityReservationIds" CapacityReservationTargetProperty = ValueList Prelude.Text
  set newValue CapacityReservationTargetProperty {..}
    = CapacityReservationTargetProperty
        {capacityReservationIds = Prelude.pure newValue, ..}
instance Property "CapacityReservationResourceGroupArns" CapacityReservationTargetProperty where
  type PropertyType "CapacityReservationResourceGroupArns" CapacityReservationTargetProperty = ValueList Prelude.Text
  set newValue CapacityReservationTargetProperty {..}
    = CapacityReservationTargetProperty
        {capacityReservationResourceGroupArns = Prelude.pure newValue, ..}