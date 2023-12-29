module Stratosphere.PinpointEmail.DedicatedIpPool (
        module Exports, DedicatedIpPool(..), mkDedicatedIpPool
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.PinpointEmail.DedicatedIpPool.TagsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DedicatedIpPool
  = DedicatedIpPool {poolName :: (Prelude.Maybe (Value Prelude.Text)),
                     tags :: (Prelude.Maybe [TagsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDedicatedIpPool :: DedicatedIpPool
mkDedicatedIpPool
  = DedicatedIpPool
      {poolName = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties DedicatedIpPool where
  toResourceProperties DedicatedIpPool {..}
    = ResourceProperties
        {awsType = "AWS::PinpointEmail::DedicatedIpPool",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PoolName" Prelude.<$> poolName,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON DedicatedIpPool where
  toJSON DedicatedIpPool {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PoolName" Prelude.<$> poolName,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "PoolName" DedicatedIpPool where
  type PropertyType "PoolName" DedicatedIpPool = Value Prelude.Text
  set newValue DedicatedIpPool {..}
    = DedicatedIpPool {poolName = Prelude.pure newValue, ..}
instance Property "Tags" DedicatedIpPool where
  type PropertyType "Tags" DedicatedIpPool = [TagsProperty]
  set newValue DedicatedIpPool {..}
    = DedicatedIpPool {tags = Prelude.pure newValue, ..}