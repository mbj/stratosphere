module Stratosphere.ElastiCache.GlobalReplicationGroup.ReshardingConfigurationProperty (
        ReshardingConfigurationProperty(..),
        mkReshardingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReshardingConfigurationProperty
  = ReshardingConfigurationProperty {nodeGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                                     preferredAvailabilityZones :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkReshardingConfigurationProperty ::
  ReshardingConfigurationProperty
mkReshardingConfigurationProperty
  = ReshardingConfigurationProperty
      {nodeGroupId = Prelude.Nothing,
       preferredAvailabilityZones = Prelude.Nothing}
instance ToResourceProperties ReshardingConfigurationProperty where
  toResourceProperties ReshardingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::GlobalReplicationGroup.ReshardingConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NodeGroupId" Prelude.<$> nodeGroupId,
                            (JSON..=) "PreferredAvailabilityZones"
                              Prelude.<$> preferredAvailabilityZones])}
instance JSON.ToJSON ReshardingConfigurationProperty where
  toJSON ReshardingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NodeGroupId" Prelude.<$> nodeGroupId,
               (JSON..=) "PreferredAvailabilityZones"
                 Prelude.<$> preferredAvailabilityZones]))
instance Property "NodeGroupId" ReshardingConfigurationProperty where
  type PropertyType "NodeGroupId" ReshardingConfigurationProperty = Value Prelude.Text
  set newValue ReshardingConfigurationProperty {..}
    = ReshardingConfigurationProperty
        {nodeGroupId = Prelude.pure newValue, ..}
instance Property "PreferredAvailabilityZones" ReshardingConfigurationProperty where
  type PropertyType "PreferredAvailabilityZones" ReshardingConfigurationProperty = ValueList (Value Prelude.Text)
  set newValue ReshardingConfigurationProperty {..}
    = ReshardingConfigurationProperty
        {preferredAvailabilityZones = Prelude.pure newValue, ..}