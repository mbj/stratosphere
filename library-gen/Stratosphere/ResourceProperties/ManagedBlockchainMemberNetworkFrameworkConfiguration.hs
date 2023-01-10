
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkframeworkconfiguration.html

module Stratosphere.ResourceProperties.ManagedBlockchainMemberNetworkFrameworkConfiguration where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ManagedBlockchainMemberNetworkFabricConfiguration

-- | Full data type definition for
-- ManagedBlockchainMemberNetworkFrameworkConfiguration. See
-- 'managedBlockchainMemberNetworkFrameworkConfiguration' for a more
-- convenient constructor.
data ManagedBlockchainMemberNetworkFrameworkConfiguration =
  ManagedBlockchainMemberNetworkFrameworkConfiguration
  { _managedBlockchainMemberNetworkFrameworkConfigurationNetworkFabricConfiguration :: Maybe ManagedBlockchainMemberNetworkFabricConfiguration
  } deriving (Show, Eq)

instance ToJSON ManagedBlockchainMemberNetworkFrameworkConfiguration where
  toJSON ManagedBlockchainMemberNetworkFrameworkConfiguration{..} =
    object $
    catMaybes
    [ fmap (("NetworkFabricConfiguration",) . toJSON) _managedBlockchainMemberNetworkFrameworkConfigurationNetworkFabricConfiguration
    ]

-- | Constructor for 'ManagedBlockchainMemberNetworkFrameworkConfiguration'
-- containing required fields as arguments.
managedBlockchainMemberNetworkFrameworkConfiguration
  :: ManagedBlockchainMemberNetworkFrameworkConfiguration
managedBlockchainMemberNetworkFrameworkConfiguration  =
  ManagedBlockchainMemberNetworkFrameworkConfiguration
  { _managedBlockchainMemberNetworkFrameworkConfigurationNetworkFabricConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkframeworkconfiguration.html#cfn-managedblockchain-member-networkframeworkconfiguration-networkfabricconfiguration
mbmnfcNetworkFabricConfiguration :: Lens' ManagedBlockchainMemberNetworkFrameworkConfiguration (Maybe ManagedBlockchainMemberNetworkFabricConfiguration)
mbmnfcNetworkFabricConfiguration = lens _managedBlockchainMemberNetworkFrameworkConfigurationNetworkFabricConfiguration (\s a -> s { _managedBlockchainMemberNetworkFrameworkConfigurationNetworkFabricConfiguration = a })
