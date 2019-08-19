{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberfabricconfiguration.html

module Stratosphere.ResourceProperties.ManagedBlockchainMemberMemberFabricConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ManagedBlockchainMemberMemberFabricConfiguration. See
-- 'managedBlockchainMemberMemberFabricConfiguration' for a more convenient
-- constructor.
data ManagedBlockchainMemberMemberFabricConfiguration =
  ManagedBlockchainMemberMemberFabricConfiguration
  { _managedBlockchainMemberMemberFabricConfigurationAdminPassword :: Val Text
  , _managedBlockchainMemberMemberFabricConfigurationAdminUsername :: Val Text
  } deriving (Show, Eq)

instance ToJSON ManagedBlockchainMemberMemberFabricConfiguration where
  toJSON ManagedBlockchainMemberMemberFabricConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("AdminPassword",) . toJSON) _managedBlockchainMemberMemberFabricConfigurationAdminPassword
    , (Just . ("AdminUsername",) . toJSON) _managedBlockchainMemberMemberFabricConfigurationAdminUsername
    ]

-- | Constructor for 'ManagedBlockchainMemberMemberFabricConfiguration'
-- containing required fields as arguments.
managedBlockchainMemberMemberFabricConfiguration
  :: Val Text -- ^ 'mbmmfcAdminPassword'
  -> Val Text -- ^ 'mbmmfcAdminUsername'
  -> ManagedBlockchainMemberMemberFabricConfiguration
managedBlockchainMemberMemberFabricConfiguration adminPasswordarg adminUsernamearg =
  ManagedBlockchainMemberMemberFabricConfiguration
  { _managedBlockchainMemberMemberFabricConfigurationAdminPassword = adminPasswordarg
  , _managedBlockchainMemberMemberFabricConfigurationAdminUsername = adminUsernamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberfabricconfiguration.html#cfn-managedblockchain-member-memberfabricconfiguration-adminpassword
mbmmfcAdminPassword :: Lens' ManagedBlockchainMemberMemberFabricConfiguration (Val Text)
mbmmfcAdminPassword = lens _managedBlockchainMemberMemberFabricConfigurationAdminPassword (\s a -> s { _managedBlockchainMemberMemberFabricConfigurationAdminPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberfabricconfiguration.html#cfn-managedblockchain-member-memberfabricconfiguration-adminusername
mbmmfcAdminUsername :: Lens' ManagedBlockchainMemberMemberFabricConfiguration (Val Text)
mbmmfcAdminUsername = lens _managedBlockchainMemberMemberFabricConfigurationAdminUsername (\s a -> s { _managedBlockchainMemberMemberFabricConfigurationAdminUsername = a })
