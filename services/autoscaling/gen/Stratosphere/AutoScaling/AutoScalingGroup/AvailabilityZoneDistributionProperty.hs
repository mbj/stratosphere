module Stratosphere.AutoScaling.AutoScalingGroup.AvailabilityZoneDistributionProperty (
        AvailabilityZoneDistributionProperty(..),
        mkAvailabilityZoneDistributionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AvailabilityZoneDistributionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-availabilityzonedistribution.html>
    AvailabilityZoneDistributionProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-availabilityzonedistribution.html#cfn-autoscaling-autoscalinggroup-availabilityzonedistribution-capacitydistributionstrategy>
                                          capacityDistributionStrategy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAvailabilityZoneDistributionProperty ::
  AvailabilityZoneDistributionProperty
mkAvailabilityZoneDistributionProperty
  = AvailabilityZoneDistributionProperty
      {haddock_workaround_ = (),
       capacityDistributionStrategy = Prelude.Nothing}
instance ToResourceProperties AvailabilityZoneDistributionProperty where
  toResourceProperties AvailabilityZoneDistributionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.AvailabilityZoneDistribution",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CapacityDistributionStrategy"
                              Prelude.<$> capacityDistributionStrategy])}
instance JSON.ToJSON AvailabilityZoneDistributionProperty where
  toJSON AvailabilityZoneDistributionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CapacityDistributionStrategy"
                 Prelude.<$> capacityDistributionStrategy]))
instance Property "CapacityDistributionStrategy" AvailabilityZoneDistributionProperty where
  type PropertyType "CapacityDistributionStrategy" AvailabilityZoneDistributionProperty = Value Prelude.Text
  set newValue AvailabilityZoneDistributionProperty {..}
    = AvailabilityZoneDistributionProperty
        {capacityDistributionStrategy = Prelude.pure newValue, ..}