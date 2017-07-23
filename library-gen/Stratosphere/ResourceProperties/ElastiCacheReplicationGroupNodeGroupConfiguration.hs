{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html

module Stratosphere.ResourceProperties.ElastiCacheReplicationGroupNodeGroupConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- ElastiCacheReplicationGroupNodeGroupConfiguration. See
-- 'elastiCacheReplicationGroupNodeGroupConfiguration' for a more convenient
-- constructor.
data ElastiCacheReplicationGroupNodeGroupConfiguration =
  ElastiCacheReplicationGroupNodeGroupConfiguration
  { _elastiCacheReplicationGroupNodeGroupConfigurationPrimaryAvailabilityZone :: Maybe (Val Text)
  , _elastiCacheReplicationGroupNodeGroupConfigurationReplicaAvailabilityZones :: Maybe (ValList Text)
  , _elastiCacheReplicationGroupNodeGroupConfigurationReplicaCount :: Maybe (Val Integer')
  , _elastiCacheReplicationGroupNodeGroupConfigurationSlots :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElastiCacheReplicationGroupNodeGroupConfiguration where
  toJSON ElastiCacheReplicationGroupNodeGroupConfiguration{..} =
    object $
    catMaybes
    [ ("PrimaryAvailabilityZone" .=) <$> _elastiCacheReplicationGroupNodeGroupConfigurationPrimaryAvailabilityZone
    , ("ReplicaAvailabilityZones" .=) <$> _elastiCacheReplicationGroupNodeGroupConfigurationReplicaAvailabilityZones
    , ("ReplicaCount" .=) <$> _elastiCacheReplicationGroupNodeGroupConfigurationReplicaCount
    , ("Slots" .=) <$> _elastiCacheReplicationGroupNodeGroupConfigurationSlots
    ]

instance FromJSON ElastiCacheReplicationGroupNodeGroupConfiguration where
  parseJSON (Object obj) =
    ElastiCacheReplicationGroupNodeGroupConfiguration <$>
      obj .:? "PrimaryAvailabilityZone" <*>
      obj .:? "ReplicaAvailabilityZones" <*>
      obj .:? "ReplicaCount" <*>
      obj .:? "Slots"
  parseJSON _ = mempty

-- | Constructor for 'ElastiCacheReplicationGroupNodeGroupConfiguration'
-- containing required fields as arguments.
elastiCacheReplicationGroupNodeGroupConfiguration
  :: ElastiCacheReplicationGroupNodeGroupConfiguration
elastiCacheReplicationGroupNodeGroupConfiguration  =
  ElastiCacheReplicationGroupNodeGroupConfiguration
  { _elastiCacheReplicationGroupNodeGroupConfigurationPrimaryAvailabilityZone = Nothing
  , _elastiCacheReplicationGroupNodeGroupConfigurationReplicaAvailabilityZones = Nothing
  , _elastiCacheReplicationGroupNodeGroupConfigurationReplicaCount = Nothing
  , _elastiCacheReplicationGroupNodeGroupConfigurationSlots = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-primaryavailabilityzone
ecrgngcPrimaryAvailabilityZone :: Lens' ElastiCacheReplicationGroupNodeGroupConfiguration (Maybe (Val Text))
ecrgngcPrimaryAvailabilityZone = lens _elastiCacheReplicationGroupNodeGroupConfigurationPrimaryAvailabilityZone (\s a -> s { _elastiCacheReplicationGroupNodeGroupConfigurationPrimaryAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-replicaavailabilityzones
ecrgngcReplicaAvailabilityZones :: Lens' ElastiCacheReplicationGroupNodeGroupConfiguration (Maybe (ValList Text))
ecrgngcReplicaAvailabilityZones = lens _elastiCacheReplicationGroupNodeGroupConfigurationReplicaAvailabilityZones (\s a -> s { _elastiCacheReplicationGroupNodeGroupConfigurationReplicaAvailabilityZones = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-replicacount
ecrgngcReplicaCount :: Lens' ElastiCacheReplicationGroupNodeGroupConfiguration (Maybe (Val Integer'))
ecrgngcReplicaCount = lens _elastiCacheReplicationGroupNodeGroupConfigurationReplicaCount (\s a -> s { _elastiCacheReplicationGroupNodeGroupConfigurationReplicaCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-slots
ecrgngcSlots :: Lens' ElastiCacheReplicationGroupNodeGroupConfiguration (Maybe (Val Text))
ecrgngcSlots = lens _elastiCacheReplicationGroupNodeGroupConfigurationSlots (\s a -> s { _elastiCacheReplicationGroupNodeGroupConfigurationSlots = a })
