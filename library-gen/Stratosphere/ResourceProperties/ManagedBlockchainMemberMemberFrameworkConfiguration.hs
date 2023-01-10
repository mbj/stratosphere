
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberframeworkconfiguration.html

module Stratosphere.ResourceProperties.ManagedBlockchainMemberMemberFrameworkConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ManagedBlockchainMemberMemberFabricConfiguration

-- | Full data type definition for
-- ManagedBlockchainMemberMemberFrameworkConfiguration. See
-- 'managedBlockchainMemberMemberFrameworkConfiguration' for a more
-- convenient constructor.
data ManagedBlockchainMemberMemberFrameworkConfiguration =
  ManagedBlockchainMemberMemberFrameworkConfiguration
  { _managedBlockchainMemberMemberFrameworkConfigurationMemberFabricConfiguration :: Maybe ManagedBlockchainMemberMemberFabricConfiguration
  } deriving (Show, Eq)

instance ToJSON ManagedBlockchainMemberMemberFrameworkConfiguration where
  toJSON ManagedBlockchainMemberMemberFrameworkConfiguration{..} =
    object $
    catMaybes
    [ fmap (("MemberFabricConfiguration",) . toJSON) _managedBlockchainMemberMemberFrameworkConfigurationMemberFabricConfiguration
    ]

-- | Constructor for 'ManagedBlockchainMemberMemberFrameworkConfiguration'
-- containing required fields as arguments.
managedBlockchainMemberMemberFrameworkConfiguration
  :: ManagedBlockchainMemberMemberFrameworkConfiguration
managedBlockchainMemberMemberFrameworkConfiguration  =
  ManagedBlockchainMemberMemberFrameworkConfiguration
  { _managedBlockchainMemberMemberFrameworkConfigurationMemberFabricConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberframeworkconfiguration.html#cfn-managedblockchain-member-memberframeworkconfiguration-memberfabricconfiguration
mbmmfcMemberFabricConfiguration :: Lens' ManagedBlockchainMemberMemberFrameworkConfiguration (Maybe ManagedBlockchainMemberMemberFabricConfiguration)
mbmmfcMemberFabricConfiguration = lens _managedBlockchainMemberMemberFrameworkConfigurationMemberFabricConfiguration (\s a -> s { _managedBlockchainMemberMemberFrameworkConfigurationMemberFabricConfiguration = a })
