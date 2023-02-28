module Stratosphere.SES.DedicatedIpPool (
        DedicatedIpPool(..), mkDedicatedIpPool
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DedicatedIpPool
  = DedicatedIpPool {poolName :: (Prelude.Maybe (Value Prelude.Text)),
                     scalingMode :: (Prelude.Maybe (Value Prelude.Text))}
mkDedicatedIpPool :: DedicatedIpPool
mkDedicatedIpPool
  = DedicatedIpPool
      {poolName = Prelude.Nothing, scalingMode = Prelude.Nothing}
instance ToResourceProperties DedicatedIpPool where
  toResourceProperties DedicatedIpPool {..}
    = ResourceProperties
        {awsType = "AWS::SES::DedicatedIpPool",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PoolName" Prelude.<$> poolName,
                            (JSON..=) "ScalingMode" Prelude.<$> scalingMode])}
instance JSON.ToJSON DedicatedIpPool where
  toJSON DedicatedIpPool {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PoolName" Prelude.<$> poolName,
               (JSON..=) "ScalingMode" Prelude.<$> scalingMode]))
instance Property "PoolName" DedicatedIpPool where
  type PropertyType "PoolName" DedicatedIpPool = Value Prelude.Text
  set newValue DedicatedIpPool {..}
    = DedicatedIpPool {poolName = Prelude.pure newValue, ..}
instance Property "ScalingMode" DedicatedIpPool where
  type PropertyType "ScalingMode" DedicatedIpPool = Value Prelude.Text
  set newValue DedicatedIpPool {..}
    = DedicatedIpPool {scalingMode = Prelude.pure newValue, ..}