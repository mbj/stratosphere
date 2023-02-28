module Stratosphere.ElastiCache.GlobalReplicationGroup.RegionalConfigurationProperty (
        module Exports, RegionalConfigurationProperty(..),
        mkRegionalConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElastiCache.GlobalReplicationGroup.ReshardingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegionalConfigurationProperty
  = RegionalConfigurationProperty {replicationGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                                   replicationGroupRegion :: (Prelude.Maybe (Value Prelude.Text)),
                                   reshardingConfigurations :: (Prelude.Maybe [ReshardingConfigurationProperty])}
mkRegionalConfigurationProperty :: RegionalConfigurationProperty
mkRegionalConfigurationProperty
  = RegionalConfigurationProperty
      {replicationGroupId = Prelude.Nothing,
       replicationGroupRegion = Prelude.Nothing,
       reshardingConfigurations = Prelude.Nothing}
instance ToResourceProperties RegionalConfigurationProperty where
  toResourceProperties RegionalConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::GlobalReplicationGroup.RegionalConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ReplicationGroupId" Prelude.<$> replicationGroupId,
                            (JSON..=) "ReplicationGroupRegion"
                              Prelude.<$> replicationGroupRegion,
                            (JSON..=) "ReshardingConfigurations"
                              Prelude.<$> reshardingConfigurations])}
instance JSON.ToJSON RegionalConfigurationProperty where
  toJSON RegionalConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ReplicationGroupId" Prelude.<$> replicationGroupId,
               (JSON..=) "ReplicationGroupRegion"
                 Prelude.<$> replicationGroupRegion,
               (JSON..=) "ReshardingConfigurations"
                 Prelude.<$> reshardingConfigurations]))
instance Property "ReplicationGroupId" RegionalConfigurationProperty where
  type PropertyType "ReplicationGroupId" RegionalConfigurationProperty = Value Prelude.Text
  set newValue RegionalConfigurationProperty {..}
    = RegionalConfigurationProperty
        {replicationGroupId = Prelude.pure newValue, ..}
instance Property "ReplicationGroupRegion" RegionalConfigurationProperty where
  type PropertyType "ReplicationGroupRegion" RegionalConfigurationProperty = Value Prelude.Text
  set newValue RegionalConfigurationProperty {..}
    = RegionalConfigurationProperty
        {replicationGroupRegion = Prelude.pure newValue, ..}
instance Property "ReshardingConfigurations" RegionalConfigurationProperty where
  type PropertyType "ReshardingConfigurations" RegionalConfigurationProperty = [ReshardingConfigurationProperty]
  set newValue RegionalConfigurationProperty {..}
    = RegionalConfigurationProperty
        {reshardingConfigurations = Prelude.pure newValue, ..}