
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-node-nodeconfiguration.html

module Stratosphere.ResourceProperties.ManagedBlockchainNodeNodeConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for ManagedBlockchainNodeNodeConfiguration. See
-- 'managedBlockchainNodeNodeConfiguration' for a more convenient
-- constructor.
data ManagedBlockchainNodeNodeConfiguration =
  ManagedBlockchainNodeNodeConfiguration
  { _managedBlockchainNodeNodeConfigurationAvailabilityZone :: Val Text
  , _managedBlockchainNodeNodeConfigurationInstanceType :: Val Text
  } deriving (Show, Eq)

instance ToJSON ManagedBlockchainNodeNodeConfiguration where
  toJSON ManagedBlockchainNodeNodeConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("AvailabilityZone",) . toJSON) _managedBlockchainNodeNodeConfigurationAvailabilityZone
    , (Just . ("InstanceType",) . toJSON) _managedBlockchainNodeNodeConfigurationInstanceType
    ]

-- | Constructor for 'ManagedBlockchainNodeNodeConfiguration' containing
-- required fields as arguments.
managedBlockchainNodeNodeConfiguration
  :: Val Text -- ^ 'mbnncAvailabilityZone'
  -> Val Text -- ^ 'mbnncInstanceType'
  -> ManagedBlockchainNodeNodeConfiguration
managedBlockchainNodeNodeConfiguration availabilityZonearg instanceTypearg =
  ManagedBlockchainNodeNodeConfiguration
  { _managedBlockchainNodeNodeConfigurationAvailabilityZone = availabilityZonearg
  , _managedBlockchainNodeNodeConfigurationInstanceType = instanceTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-node-nodeconfiguration.html#cfn-managedblockchain-node-nodeconfiguration-availabilityzone
mbnncAvailabilityZone :: Lens' ManagedBlockchainNodeNodeConfiguration (Val Text)
mbnncAvailabilityZone = lens _managedBlockchainNodeNodeConfigurationAvailabilityZone (\s a -> s { _managedBlockchainNodeNodeConfigurationAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-node-nodeconfiguration.html#cfn-managedblockchain-node-nodeconfiguration-instancetype
mbnncInstanceType :: Lens' ManagedBlockchainNodeNodeConfiguration (Val Text)
mbnncInstanceType = lens _managedBlockchainNodeNodeConfigurationInstanceType (\s a -> s { _managedBlockchainNodeNodeConfigurationInstanceType = a })
