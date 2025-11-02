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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-globalreplicationgroup-regionalconfiguration.html>
    RegionalConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-globalreplicationgroup-regionalconfiguration.html#cfn-elasticache-globalreplicationgroup-regionalconfiguration-replicationgroupid>
                                   replicationGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-globalreplicationgroup-regionalconfiguration.html#cfn-elasticache-globalreplicationgroup-regionalconfiguration-replicationgroupregion>
                                   replicationGroupRegion :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-globalreplicationgroup-regionalconfiguration.html#cfn-elasticache-globalreplicationgroup-regionalconfiguration-reshardingconfigurations>
                                   reshardingConfigurations :: (Prelude.Maybe [ReshardingConfigurationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRegionalConfigurationProperty :: RegionalConfigurationProperty
mkRegionalConfigurationProperty
  = RegionalConfigurationProperty
      {haddock_workaround_ = (), replicationGroupId = Prelude.Nothing,
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