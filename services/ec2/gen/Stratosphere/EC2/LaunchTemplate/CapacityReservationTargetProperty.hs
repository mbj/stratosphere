module Stratosphere.EC2.LaunchTemplate.CapacityReservationTargetProperty (
        CapacityReservationTargetProperty(..),
        mkCapacityReservationTargetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityReservationTargetProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-capacityreservationtarget.html>
    CapacityReservationTargetProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-capacityreservationtarget.html#cfn-ec2-launchtemplate-capacityreservationtarget-capacityreservationid>
                                       capacityReservationId :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-capacityreservationtarget.html#cfn-ec2-launchtemplate-capacityreservationtarget-capacityreservationresourcegrouparn>
                                       capacityReservationResourceGroupArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityReservationTargetProperty ::
  CapacityReservationTargetProperty
mkCapacityReservationTargetProperty
  = CapacityReservationTargetProperty
      {haddock_workaround_ = (), capacityReservationId = Prelude.Nothing,
       capacityReservationResourceGroupArn = Prelude.Nothing}
instance ToResourceProperties CapacityReservationTargetProperty where
  toResourceProperties CapacityReservationTargetProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.CapacityReservationTarget",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CapacityReservationId"
                              Prelude.<$> capacityReservationId,
                            (JSON..=) "CapacityReservationResourceGroupArn"
                              Prelude.<$> capacityReservationResourceGroupArn])}
instance JSON.ToJSON CapacityReservationTargetProperty where
  toJSON CapacityReservationTargetProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CapacityReservationId"
                 Prelude.<$> capacityReservationId,
               (JSON..=) "CapacityReservationResourceGroupArn"
                 Prelude.<$> capacityReservationResourceGroupArn]))
instance Property "CapacityReservationId" CapacityReservationTargetProperty where
  type PropertyType "CapacityReservationId" CapacityReservationTargetProperty = Value Prelude.Text
  set newValue CapacityReservationTargetProperty {..}
    = CapacityReservationTargetProperty
        {capacityReservationId = Prelude.pure newValue, ..}
instance Property "CapacityReservationResourceGroupArn" CapacityReservationTargetProperty where
  type PropertyType "CapacityReservationResourceGroupArn" CapacityReservationTargetProperty = Value Prelude.Text
  set newValue CapacityReservationTargetProperty {..}
    = CapacityReservationTargetProperty
        {capacityReservationResourceGroupArn = Prelude.pure newValue, ..}