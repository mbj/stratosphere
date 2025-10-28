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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-globalreplicationgroup-reshardingconfiguration.html>
    ReshardingConfigurationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-globalreplicationgroup-reshardingconfiguration.html#cfn-elasticache-globalreplicationgroup-reshardingconfiguration-nodegroupid>
                                     nodeGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-globalreplicationgroup-reshardingconfiguration.html#cfn-elasticache-globalreplicationgroup-reshardingconfiguration-preferredavailabilityzones>
                                     preferredAvailabilityZones :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReshardingConfigurationProperty ::
  ReshardingConfigurationProperty
mkReshardingConfigurationProperty
  = ReshardingConfigurationProperty
      {haddock_workaround_ = (), nodeGroupId = Prelude.Nothing,
       preferredAvailabilityZones = Prelude.Nothing}
instance ToResourceProperties ReshardingConfigurationProperty where
  toResourceProperties ReshardingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElastiCache::GlobalReplicationGroup.ReshardingConfiguration",
         supportsTags = Prelude.False,
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
  type PropertyType "PreferredAvailabilityZones" ReshardingConfigurationProperty = ValueList Prelude.Text
  set newValue ReshardingConfigurationProperty {..}
    = ReshardingConfigurationProperty
        {preferredAvailabilityZones = Prelude.pure newValue, ..}