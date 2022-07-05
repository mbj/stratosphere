{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-member.html

module Stratosphere.Resources.ManagedBlockchainMember where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ManagedBlockchainMemberMemberConfiguration
import Stratosphere.ResourceProperties.ManagedBlockchainMemberNetworkConfiguration

-- | Full data type definition for ManagedBlockchainMember. See
-- 'managedBlockchainMember' for a more convenient constructor.
data ManagedBlockchainMember =
  ManagedBlockchainMember
  { _managedBlockchainMemberInvitationId :: Maybe (Val Text)
  , _managedBlockchainMemberMemberConfiguration :: ManagedBlockchainMemberMemberConfiguration
  , _managedBlockchainMemberNetworkConfiguration :: Maybe ManagedBlockchainMemberNetworkConfiguration
  , _managedBlockchainMemberNetworkId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties ManagedBlockchainMember where
  toResourceProperties ManagedBlockchainMember{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ManagedBlockchain::Member"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("InvitationId",) . toJSON) _managedBlockchainMemberInvitationId
        , (Just . ("MemberConfiguration",) . toJSON) _managedBlockchainMemberMemberConfiguration
        , fmap (("NetworkConfiguration",) . toJSON) _managedBlockchainMemberNetworkConfiguration
        , fmap (("NetworkId",) . toJSON) _managedBlockchainMemberNetworkId
        ]
    }

-- | Constructor for 'ManagedBlockchainMember' containing required fields as
-- arguments.
managedBlockchainMember
  :: ManagedBlockchainMemberMemberConfiguration -- ^ 'mbmMemberConfiguration'
  -> ManagedBlockchainMember
managedBlockchainMember memberConfigurationarg =
  ManagedBlockchainMember
  { _managedBlockchainMemberInvitationId = Nothing
  , _managedBlockchainMemberMemberConfiguration = memberConfigurationarg
  , _managedBlockchainMemberNetworkConfiguration = Nothing
  , _managedBlockchainMemberNetworkId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-member.html#cfn-managedblockchain-member-invitationid
mbmInvitationId :: Lens' ManagedBlockchainMember (Maybe (Val Text))
mbmInvitationId = lens _managedBlockchainMemberInvitationId (\s a -> s { _managedBlockchainMemberInvitationId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-member.html#cfn-managedblockchain-member-memberconfiguration
mbmMemberConfiguration :: Lens' ManagedBlockchainMember ManagedBlockchainMemberMemberConfiguration
mbmMemberConfiguration = lens _managedBlockchainMemberMemberConfiguration (\s a -> s { _managedBlockchainMemberMemberConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-member.html#cfn-managedblockchain-member-networkconfiguration
mbmNetworkConfiguration :: Lens' ManagedBlockchainMember (Maybe ManagedBlockchainMemberNetworkConfiguration)
mbmNetworkConfiguration = lens _managedBlockchainMemberNetworkConfiguration (\s a -> s { _managedBlockchainMemberNetworkConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-member.html#cfn-managedblockchain-member-networkid
mbmNetworkId :: Lens' ManagedBlockchainMember (Maybe (Val Text))
mbmNetworkId = lens _managedBlockchainMemberNetworkId (\s a -> s { _managedBlockchainMemberNetworkId = a })
