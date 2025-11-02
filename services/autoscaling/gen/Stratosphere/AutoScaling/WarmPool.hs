module Stratosphere.AutoScaling.WarmPool (
        module Exports, WarmPool(..), mkWarmPool
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.WarmPool.InstanceReusePolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WarmPool
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-warmpool.html>
    WarmPool {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-warmpool.html#cfn-autoscaling-warmpool-autoscalinggroupname>
              autoScalingGroupName :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-warmpool.html#cfn-autoscaling-warmpool-instancereusepolicy>
              instanceReusePolicy :: (Prelude.Maybe InstanceReusePolicyProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-warmpool.html#cfn-autoscaling-warmpool-maxgrouppreparedcapacity>
              maxGroupPreparedCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-warmpool.html#cfn-autoscaling-warmpool-minsize>
              minSize :: (Prelude.Maybe (Value Prelude.Integer)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-warmpool.html#cfn-autoscaling-warmpool-poolstate>
              poolState :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWarmPool :: Value Prelude.Text -> WarmPool
mkWarmPool autoScalingGroupName
  = WarmPool
      {haddock_workaround_ = (),
       autoScalingGroupName = autoScalingGroupName,
       instanceReusePolicy = Prelude.Nothing,
       maxGroupPreparedCapacity = Prelude.Nothing,
       minSize = Prelude.Nothing, poolState = Prelude.Nothing}
instance ToResourceProperties WarmPool where
  toResourceProperties WarmPool {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::WarmPool",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AutoScalingGroupName" JSON..= autoScalingGroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "InstanceReusePolicy" Prelude.<$> instanceReusePolicy,
                               (JSON..=) "MaxGroupPreparedCapacity"
                                 Prelude.<$> maxGroupPreparedCapacity,
                               (JSON..=) "MinSize" Prelude.<$> minSize,
                               (JSON..=) "PoolState" Prelude.<$> poolState]))}
instance JSON.ToJSON WarmPool where
  toJSON WarmPool {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AutoScalingGroupName" JSON..= autoScalingGroupName]
              (Prelude.catMaybes
                 [(JSON..=) "InstanceReusePolicy" Prelude.<$> instanceReusePolicy,
                  (JSON..=) "MaxGroupPreparedCapacity"
                    Prelude.<$> maxGroupPreparedCapacity,
                  (JSON..=) "MinSize" Prelude.<$> minSize,
                  (JSON..=) "PoolState" Prelude.<$> poolState])))
instance Property "AutoScalingGroupName" WarmPool where
  type PropertyType "AutoScalingGroupName" WarmPool = Value Prelude.Text
  set newValue WarmPool {..}
    = WarmPool {autoScalingGroupName = newValue, ..}
instance Property "InstanceReusePolicy" WarmPool where
  type PropertyType "InstanceReusePolicy" WarmPool = InstanceReusePolicyProperty
  set newValue WarmPool {..}
    = WarmPool {instanceReusePolicy = Prelude.pure newValue, ..}
instance Property "MaxGroupPreparedCapacity" WarmPool where
  type PropertyType "MaxGroupPreparedCapacity" WarmPool = Value Prelude.Integer
  set newValue WarmPool {..}
    = WarmPool {maxGroupPreparedCapacity = Prelude.pure newValue, ..}
instance Property "MinSize" WarmPool where
  type PropertyType "MinSize" WarmPool = Value Prelude.Integer
  set newValue WarmPool {..}
    = WarmPool {minSize = Prelude.pure newValue, ..}
instance Property "PoolState" WarmPool where
  type PropertyType "PoolState" WarmPool = Value Prelude.Text
  set newValue WarmPool {..}
    = WarmPool {poolState = Prelude.pure newValue, ..}