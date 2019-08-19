{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html

module Stratosphere.ResourceProperties.ManagedBlockchainMemberNetworkConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ManagedBlockchainMemberNetworkFrameworkConfiguration
import Stratosphere.ResourceProperties.ManagedBlockchainMemberVotingPolicy

-- | Full data type definition for
-- ManagedBlockchainMemberNetworkConfiguration. See
-- 'managedBlockchainMemberNetworkConfiguration' for a more convenient
-- constructor.
data ManagedBlockchainMemberNetworkConfiguration =
  ManagedBlockchainMemberNetworkConfiguration
  { _managedBlockchainMemberNetworkConfigurationDescription :: Maybe (Val Text)
  , _managedBlockchainMemberNetworkConfigurationFramework :: Val Text
  , _managedBlockchainMemberNetworkConfigurationFrameworkVersion :: Val Text
  , _managedBlockchainMemberNetworkConfigurationName :: Val Text
  , _managedBlockchainMemberNetworkConfigurationNetworkFrameworkConfiguration :: Maybe ManagedBlockchainMemberNetworkFrameworkConfiguration
  , _managedBlockchainMemberNetworkConfigurationVotingPolicy :: ManagedBlockchainMemberVotingPolicy
  } deriving (Show, Eq)

instance ToJSON ManagedBlockchainMemberNetworkConfiguration where
  toJSON ManagedBlockchainMemberNetworkConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Description",) . toJSON) _managedBlockchainMemberNetworkConfigurationDescription
    , (Just . ("Framework",) . toJSON) _managedBlockchainMemberNetworkConfigurationFramework
    , (Just . ("FrameworkVersion",) . toJSON) _managedBlockchainMemberNetworkConfigurationFrameworkVersion
    , (Just . ("Name",) . toJSON) _managedBlockchainMemberNetworkConfigurationName
    , fmap (("NetworkFrameworkConfiguration",) . toJSON) _managedBlockchainMemberNetworkConfigurationNetworkFrameworkConfiguration
    , (Just . ("VotingPolicy",) . toJSON) _managedBlockchainMemberNetworkConfigurationVotingPolicy
    ]

-- | Constructor for 'ManagedBlockchainMemberNetworkConfiguration' containing
-- required fields as arguments.
managedBlockchainMemberNetworkConfiguration
  :: Val Text -- ^ 'mbmncFramework'
  -> Val Text -- ^ 'mbmncFrameworkVersion'
  -> Val Text -- ^ 'mbmncName'
  -> ManagedBlockchainMemberVotingPolicy -- ^ 'mbmncVotingPolicy'
  -> ManagedBlockchainMemberNetworkConfiguration
managedBlockchainMemberNetworkConfiguration frameworkarg frameworkVersionarg namearg votingPolicyarg =
  ManagedBlockchainMemberNetworkConfiguration
  { _managedBlockchainMemberNetworkConfigurationDescription = Nothing
  , _managedBlockchainMemberNetworkConfigurationFramework = frameworkarg
  , _managedBlockchainMemberNetworkConfigurationFrameworkVersion = frameworkVersionarg
  , _managedBlockchainMemberNetworkConfigurationName = namearg
  , _managedBlockchainMemberNetworkConfigurationNetworkFrameworkConfiguration = Nothing
  , _managedBlockchainMemberNetworkConfigurationVotingPolicy = votingPolicyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html#cfn-managedblockchain-member-networkconfiguration-description
mbmncDescription :: Lens' ManagedBlockchainMemberNetworkConfiguration (Maybe (Val Text))
mbmncDescription = lens _managedBlockchainMemberNetworkConfigurationDescription (\s a -> s { _managedBlockchainMemberNetworkConfigurationDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html#cfn-managedblockchain-member-networkconfiguration-framework
mbmncFramework :: Lens' ManagedBlockchainMemberNetworkConfiguration (Val Text)
mbmncFramework = lens _managedBlockchainMemberNetworkConfigurationFramework (\s a -> s { _managedBlockchainMemberNetworkConfigurationFramework = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html#cfn-managedblockchain-member-networkconfiguration-frameworkversion
mbmncFrameworkVersion :: Lens' ManagedBlockchainMemberNetworkConfiguration (Val Text)
mbmncFrameworkVersion = lens _managedBlockchainMemberNetworkConfigurationFrameworkVersion (\s a -> s { _managedBlockchainMemberNetworkConfigurationFrameworkVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html#cfn-managedblockchain-member-networkconfiguration-name
mbmncName :: Lens' ManagedBlockchainMemberNetworkConfiguration (Val Text)
mbmncName = lens _managedBlockchainMemberNetworkConfigurationName (\s a -> s { _managedBlockchainMemberNetworkConfigurationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html#cfn-managedblockchain-member-networkconfiguration-networkframeworkconfiguration
mbmncNetworkFrameworkConfiguration :: Lens' ManagedBlockchainMemberNetworkConfiguration (Maybe ManagedBlockchainMemberNetworkFrameworkConfiguration)
mbmncNetworkFrameworkConfiguration = lens _managedBlockchainMemberNetworkConfigurationNetworkFrameworkConfiguration (\s a -> s { _managedBlockchainMemberNetworkConfigurationNetworkFrameworkConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-networkconfiguration.html#cfn-managedblockchain-member-networkconfiguration-votingpolicy
mbmncVotingPolicy :: Lens' ManagedBlockchainMemberNetworkConfiguration ManagedBlockchainMemberVotingPolicy
mbmncVotingPolicy = lens _managedBlockchainMemberNetworkConfigurationVotingPolicy (\s a -> s { _managedBlockchainMemberNetworkConfigurationVotingPolicy = a })
