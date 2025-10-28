module Stratosphere.AutoScaling.AutoScalingGroup.InstancesDistributionProperty (
        InstancesDistributionProperty(..), mkInstancesDistributionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstancesDistributionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancesdistribution.html>
    InstancesDistributionProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancesdistribution.html#cfn-autoscaling-autoscalinggroup-instancesdistribution-ondemandallocationstrategy>
                                   onDemandAllocationStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancesdistribution.html#cfn-autoscaling-autoscalinggroup-instancesdistribution-ondemandbasecapacity>
                                   onDemandBaseCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancesdistribution.html#cfn-autoscaling-autoscalinggroup-instancesdistribution-ondemandpercentageabovebasecapacity>
                                   onDemandPercentageAboveBaseCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancesdistribution.html#cfn-autoscaling-autoscalinggroup-instancesdistribution-spotallocationstrategy>
                                   spotAllocationStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancesdistribution.html#cfn-autoscaling-autoscalinggroup-instancesdistribution-spotinstancepools>
                                   spotInstancePools :: (Prelude.Maybe (Value Prelude.Integer)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancesdistribution.html#cfn-autoscaling-autoscalinggroup-instancesdistribution-spotmaxprice>
                                   spotMaxPrice :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstancesDistributionProperty :: InstancesDistributionProperty
mkInstancesDistributionProperty
  = InstancesDistributionProperty
      {haddock_workaround_ = (),
       onDemandAllocationStrategy = Prelude.Nothing,
       onDemandBaseCapacity = Prelude.Nothing,
       onDemandPercentageAboveBaseCapacity = Prelude.Nothing,
       spotAllocationStrategy = Prelude.Nothing,
       spotInstancePools = Prelude.Nothing,
       spotMaxPrice = Prelude.Nothing}
instance ToResourceProperties InstancesDistributionProperty where
  toResourceProperties InstancesDistributionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.InstancesDistribution",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "OnDemandAllocationStrategy"
                              Prelude.<$> onDemandAllocationStrategy,
                            (JSON..=) "OnDemandBaseCapacity" Prelude.<$> onDemandBaseCapacity,
                            (JSON..=) "OnDemandPercentageAboveBaseCapacity"
                              Prelude.<$> onDemandPercentageAboveBaseCapacity,
                            (JSON..=) "SpotAllocationStrategy"
                              Prelude.<$> spotAllocationStrategy,
                            (JSON..=) "SpotInstancePools" Prelude.<$> spotInstancePools,
                            (JSON..=) "SpotMaxPrice" Prelude.<$> spotMaxPrice])}
instance JSON.ToJSON InstancesDistributionProperty where
  toJSON InstancesDistributionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "OnDemandAllocationStrategy"
                 Prelude.<$> onDemandAllocationStrategy,
               (JSON..=) "OnDemandBaseCapacity" Prelude.<$> onDemandBaseCapacity,
               (JSON..=) "OnDemandPercentageAboveBaseCapacity"
                 Prelude.<$> onDemandPercentageAboveBaseCapacity,
               (JSON..=) "SpotAllocationStrategy"
                 Prelude.<$> spotAllocationStrategy,
               (JSON..=) "SpotInstancePools" Prelude.<$> spotInstancePools,
               (JSON..=) "SpotMaxPrice" Prelude.<$> spotMaxPrice]))
instance Property "OnDemandAllocationStrategy" InstancesDistributionProperty where
  type PropertyType "OnDemandAllocationStrategy" InstancesDistributionProperty = Value Prelude.Text
  set newValue InstancesDistributionProperty {..}
    = InstancesDistributionProperty
        {onDemandAllocationStrategy = Prelude.pure newValue, ..}
instance Property "OnDemandBaseCapacity" InstancesDistributionProperty where
  type PropertyType "OnDemandBaseCapacity" InstancesDistributionProperty = Value Prelude.Integer
  set newValue InstancesDistributionProperty {..}
    = InstancesDistributionProperty
        {onDemandBaseCapacity = Prelude.pure newValue, ..}
instance Property "OnDemandPercentageAboveBaseCapacity" InstancesDistributionProperty where
  type PropertyType "OnDemandPercentageAboveBaseCapacity" InstancesDistributionProperty = Value Prelude.Integer
  set newValue InstancesDistributionProperty {..}
    = InstancesDistributionProperty
        {onDemandPercentageAboveBaseCapacity = Prelude.pure newValue, ..}
instance Property "SpotAllocationStrategy" InstancesDistributionProperty where
  type PropertyType "SpotAllocationStrategy" InstancesDistributionProperty = Value Prelude.Text
  set newValue InstancesDistributionProperty {..}
    = InstancesDistributionProperty
        {spotAllocationStrategy = Prelude.pure newValue, ..}
instance Property "SpotInstancePools" InstancesDistributionProperty where
  type PropertyType "SpotInstancePools" InstancesDistributionProperty = Value Prelude.Integer
  set newValue InstancesDistributionProperty {..}
    = InstancesDistributionProperty
        {spotInstancePools = Prelude.pure newValue, ..}
instance Property "SpotMaxPrice" InstancesDistributionProperty where
  type PropertyType "SpotMaxPrice" InstancesDistributionProperty = Value Prelude.Text
  set newValue InstancesDistributionProperty {..}
    = InstancesDistributionProperty
        {spotMaxPrice = Prelude.pure newValue, ..}