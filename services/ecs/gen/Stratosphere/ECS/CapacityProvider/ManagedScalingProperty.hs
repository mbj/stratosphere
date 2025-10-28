module Stratosphere.ECS.CapacityProvider.ManagedScalingProperty (
        ManagedScalingProperty(..), mkManagedScalingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedScalingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedscaling.html>
    ManagedScalingProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedscaling.html#cfn-ecs-capacityprovider-managedscaling-instancewarmupperiod>
                            instanceWarmupPeriod :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedscaling.html#cfn-ecs-capacityprovider-managedscaling-maximumscalingstepsize>
                            maximumScalingStepSize :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedscaling.html#cfn-ecs-capacityprovider-managedscaling-minimumscalingstepsize>
                            minimumScalingStepSize :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedscaling.html#cfn-ecs-capacityprovider-managedscaling-status>
                            status :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-managedscaling.html#cfn-ecs-capacityprovider-managedscaling-targetcapacity>
                            targetCapacity :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedScalingProperty :: ManagedScalingProperty
mkManagedScalingProperty
  = ManagedScalingProperty
      {haddock_workaround_ = (), instanceWarmupPeriod = Prelude.Nothing,
       maximumScalingStepSize = Prelude.Nothing,
       minimumScalingStepSize = Prelude.Nothing, status = Prelude.Nothing,
       targetCapacity = Prelude.Nothing}
instance ToResourceProperties ManagedScalingProperty where
  toResourceProperties ManagedScalingProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::CapacityProvider.ManagedScaling",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InstanceWarmupPeriod" Prelude.<$> instanceWarmupPeriod,
                            (JSON..=) "MaximumScalingStepSize"
                              Prelude.<$> maximumScalingStepSize,
                            (JSON..=) "MinimumScalingStepSize"
                              Prelude.<$> minimumScalingStepSize,
                            (JSON..=) "Status" Prelude.<$> status,
                            (JSON..=) "TargetCapacity" Prelude.<$> targetCapacity])}
instance JSON.ToJSON ManagedScalingProperty where
  toJSON ManagedScalingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InstanceWarmupPeriod" Prelude.<$> instanceWarmupPeriod,
               (JSON..=) "MaximumScalingStepSize"
                 Prelude.<$> maximumScalingStepSize,
               (JSON..=) "MinimumScalingStepSize"
                 Prelude.<$> minimumScalingStepSize,
               (JSON..=) "Status" Prelude.<$> status,
               (JSON..=) "TargetCapacity" Prelude.<$> targetCapacity]))
instance Property "InstanceWarmupPeriod" ManagedScalingProperty where
  type PropertyType "InstanceWarmupPeriod" ManagedScalingProperty = Value Prelude.Integer
  set newValue ManagedScalingProperty {..}
    = ManagedScalingProperty
        {instanceWarmupPeriod = Prelude.pure newValue, ..}
instance Property "MaximumScalingStepSize" ManagedScalingProperty where
  type PropertyType "MaximumScalingStepSize" ManagedScalingProperty = Value Prelude.Integer
  set newValue ManagedScalingProperty {..}
    = ManagedScalingProperty
        {maximumScalingStepSize = Prelude.pure newValue, ..}
instance Property "MinimumScalingStepSize" ManagedScalingProperty where
  type PropertyType "MinimumScalingStepSize" ManagedScalingProperty = Value Prelude.Integer
  set newValue ManagedScalingProperty {..}
    = ManagedScalingProperty
        {minimumScalingStepSize = Prelude.pure newValue, ..}
instance Property "Status" ManagedScalingProperty where
  type PropertyType "Status" ManagedScalingProperty = Value Prelude.Text
  set newValue ManagedScalingProperty {..}
    = ManagedScalingProperty {status = Prelude.pure newValue, ..}
instance Property "TargetCapacity" ManagedScalingProperty where
  type PropertyType "TargetCapacity" ManagedScalingProperty = Value Prelude.Integer
  set newValue ManagedScalingProperty {..}
    = ManagedScalingProperty
        {targetCapacity = Prelude.pure newValue, ..}