
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html

module Stratosphere.ResourceProperties.ElastiCacheReplicationGroupNodeGroupConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElastiCacheReplicationGroupNodeGroupConfiguration. See
-- 'elastiCacheReplicationGroupNodeGroupConfiguration' for a more convenient
-- constructor.
data ElastiCacheReplicationGroupNodeGroupConfiguration =
  ElastiCacheReplicationGroupNodeGroupConfiguration
  { _elastiCacheReplicationGroupNodeGroupConfigurationNodeGroupId :: Maybe (Val Text)
  , _elastiCacheReplicationGroupNodeGroupConfigurationPrimaryAvailabilityZone :: Maybe (Val Text)
  , _elastiCacheReplicationGroupNodeGroupConfigurationReplicaAvailabilityZones :: Maybe (ValList Text)
  , _elastiCacheReplicationGroupNodeGroupConfigurationReplicaCount :: Maybe (Val Integer)
  , _elastiCacheReplicationGroupNodeGroupConfigurationSlots :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElastiCacheReplicationGroupNodeGroupConfiguration where
  toJSON ElastiCacheReplicationGroupNodeGroupConfiguration{..} =
    object $
    catMaybes
    [ fmap (("NodeGroupId",) . toJSON) _elastiCacheReplicationGroupNodeGroupConfigurationNodeGroupId
    , fmap (("PrimaryAvailabilityZone",) . toJSON) _elastiCacheReplicationGroupNodeGroupConfigurationPrimaryAvailabilityZone
    , fmap (("ReplicaAvailabilityZones",) . toJSON) _elastiCacheReplicationGroupNodeGroupConfigurationReplicaAvailabilityZones
    , fmap (("ReplicaCount",) . toJSON) _elastiCacheReplicationGroupNodeGroupConfigurationReplicaCount
    , fmap (("Slots",) . toJSON) _elastiCacheReplicationGroupNodeGroupConfigurationSlots
    ]

-- | Constructor for 'ElastiCacheReplicationGroupNodeGroupConfiguration'
-- containing required fields as arguments.
elastiCacheReplicationGroupNodeGroupConfiguration
  :: ElastiCacheReplicationGroupNodeGroupConfiguration
elastiCacheReplicationGroupNodeGroupConfiguration  =
  ElastiCacheReplicationGroupNodeGroupConfiguration
  { _elastiCacheReplicationGroupNodeGroupConfigurationNodeGroupId = Nothing
  , _elastiCacheReplicationGroupNodeGroupConfigurationPrimaryAvailabilityZone = Nothing
  , _elastiCacheReplicationGroupNodeGroupConfigurationReplicaAvailabilityZones = Nothing
  , _elastiCacheReplicationGroupNodeGroupConfigurationReplicaCount = Nothing
  , _elastiCacheReplicationGroupNodeGroupConfigurationSlots = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-nodegroupid
ecrgngcNodeGroupId :: Lens' ElastiCacheReplicationGroupNodeGroupConfiguration (Maybe (Val Text))
ecrgngcNodeGroupId = lens _elastiCacheReplicationGroupNodeGroupConfigurationNodeGroupId (\s a -> s { _elastiCacheReplicationGroupNodeGroupConfigurationNodeGroupId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-primaryavailabilityzone
ecrgngcPrimaryAvailabilityZone :: Lens' ElastiCacheReplicationGroupNodeGroupConfiguration (Maybe (Val Text))
ecrgngcPrimaryAvailabilityZone = lens _elastiCacheReplicationGroupNodeGroupConfigurationPrimaryAvailabilityZone (\s a -> s { _elastiCacheReplicationGroupNodeGroupConfigurationPrimaryAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-replicaavailabilityzones
ecrgngcReplicaAvailabilityZones :: Lens' ElastiCacheReplicationGroupNodeGroupConfiguration (Maybe (ValList Text))
ecrgngcReplicaAvailabilityZones = lens _elastiCacheReplicationGroupNodeGroupConfigurationReplicaAvailabilityZones (\s a -> s { _elastiCacheReplicationGroupNodeGroupConfigurationReplicaAvailabilityZones = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-replicacount
ecrgngcReplicaCount :: Lens' ElastiCacheReplicationGroupNodeGroupConfiguration (Maybe (Val Integer))
ecrgngcReplicaCount = lens _elastiCacheReplicationGroupNodeGroupConfigurationReplicaCount (\s a -> s { _elastiCacheReplicationGroupNodeGroupConfigurationReplicaCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-slots
ecrgngcSlots :: Lens' ElastiCacheReplicationGroupNodeGroupConfiguration (Maybe (Val Text))
ecrgngcSlots = lens _elastiCacheReplicationGroupNodeGroupConfigurationSlots (\s a -> s { _elastiCacheReplicationGroupNodeGroupConfigurationSlots = a })
