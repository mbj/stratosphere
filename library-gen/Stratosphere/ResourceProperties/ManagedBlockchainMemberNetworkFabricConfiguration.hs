{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkfabricconfiguration.html

module Stratosphere.ResourceProperties.ManagedBlockchainMemberNetworkFabricConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ManagedBlockchainMemberNetworkFabricConfiguration. See
-- 'managedBlockchainMemberNetworkFabricConfiguration' for a more convenient
-- constructor.
data ManagedBlockchainMemberNetworkFabricConfiguration =
  ManagedBlockchainMemberNetworkFabricConfiguration
  { _managedBlockchainMemberNetworkFabricConfigurationEdition :: Val Text
  } deriving (Show, Eq)

instance ToJSON ManagedBlockchainMemberNetworkFabricConfiguration where
  toJSON ManagedBlockchainMemberNetworkFabricConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("Edition",) . toJSON) _managedBlockchainMemberNetworkFabricConfigurationEdition
    ]

-- | Constructor for 'ManagedBlockchainMemberNetworkFabricConfiguration'
-- containing required fields as arguments.
managedBlockchainMemberNetworkFabricConfiguration
  :: Val Text -- ^ 'mbmnfcEdition'
  -> ManagedBlockchainMemberNetworkFabricConfiguration
managedBlockchainMemberNetworkFabricConfiguration editionarg =
  ManagedBlockchainMemberNetworkFabricConfiguration
  { _managedBlockchainMemberNetworkFabricConfigurationEdition = editionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkfabricconfiguration.html#cfn-managedblockchain-member-networkfabricconfiguration-edition
mbmnfcEdition :: Lens' ManagedBlockchainMemberNetworkFabricConfiguration (Val Text)
mbmnfcEdition = lens _managedBlockchainMemberNetworkFabricConfigurationEdition (\s a -> s { _managedBlockchainMemberNetworkFabricConfigurationEdition = a })
