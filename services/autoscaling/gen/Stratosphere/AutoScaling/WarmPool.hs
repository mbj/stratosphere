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
  = WarmPool {autoScalingGroupName :: (Value Prelude.Text),
              instanceReusePolicy :: (Prelude.Maybe InstanceReusePolicyProperty),
              maxGroupPreparedCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
              minSize :: (Prelude.Maybe (Value Prelude.Integer)),
              poolState :: (Prelude.Maybe (Value Prelude.Text))}
mkWarmPool :: Value Prelude.Text -> WarmPool
mkWarmPool autoScalingGroupName
  = WarmPool
      {autoScalingGroupName = autoScalingGroupName,
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