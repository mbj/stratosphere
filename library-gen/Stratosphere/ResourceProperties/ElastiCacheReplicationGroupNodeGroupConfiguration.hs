{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html

module Stratosphere.ResourceProperties.ElastiCacheReplicationGroupNodeGroupConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | ElastiCacheReplicationGroupNodeGroupConfiguration. See
-- | 'elastiCacheReplicationGroupNodeGroupConfiguration' for a more convenient
-- | constructor.
data ElastiCacheReplicationGroupNodeGroupConfiguration =
  ElastiCacheReplicationGroupNodeGroupConfiguration
  { _elastiCacheReplicationGroupNodeGroupConfigurationPrimaryAvailabilityZone :: Maybe (Val Text)
  , _elastiCacheReplicationGroupNodeGroupConfigurationReplicaAvailabilityZones :: Maybe [Val Text]
  , _elastiCacheReplicationGroupNodeGroupConfigurationReplicaCount :: Maybe (Val Integer')
  , _elastiCacheReplicationGroupNodeGroupConfigurationSlots :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON ElastiCacheReplicationGroupNodeGroupConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 50, omitNothingFields = True }

instance FromJSON ElastiCacheReplicationGroupNodeGroupConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 50, omitNothingFields = True }

-- | Constructor for 'ElastiCacheReplicationGroupNodeGroupConfiguration'
-- | containing required fields as arguments.
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
ecrgngcReplicaAvailabilityZones :: Lens' ElastiCacheReplicationGroupNodeGroupConfiguration (Maybe [Val Text])
ecrgngcReplicaAvailabilityZones = lens _elastiCacheReplicationGroupNodeGroupConfigurationReplicaAvailabilityZones (\s a -> s { _elastiCacheReplicationGroupNodeGroupConfigurationReplicaAvailabilityZones = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-replicacount
ecrgngcReplicaCount :: Lens' ElastiCacheReplicationGroupNodeGroupConfiguration (Maybe (Val Integer'))
ecrgngcReplicaCount = lens _elastiCacheReplicationGroupNodeGroupConfigurationReplicaCount (\s a -> s { _elastiCacheReplicationGroupNodeGroupConfigurationReplicaCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticache-replicationgroup-nodegroupconfiguration.html#cfn-elasticache-replicationgroup-nodegroupconfiguration-slots
ecrgngcSlots :: Lens' ElastiCacheReplicationGroupNodeGroupConfiguration (Maybe (Val Text))
ecrgngcSlots = lens _elastiCacheReplicationGroupNodeGroupConfigurationSlots (\s a -> s { _elastiCacheReplicationGroupNodeGroupConfigurationSlots = a })
