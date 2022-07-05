{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-node.html

module Stratosphere.Resources.ManagedBlockchainNode where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ManagedBlockchainNodeNodeConfiguration

-- | Full data type definition for ManagedBlockchainNode. See
-- 'managedBlockchainNode' for a more convenient constructor.
data ManagedBlockchainNode =
  ManagedBlockchainNode
  { _managedBlockchainNodeMemberId :: Val Text
  , _managedBlockchainNodeNetworkId :: Val Text
  , _managedBlockchainNodeNodeConfiguration :: ManagedBlockchainNodeNodeConfiguration
  } deriving (Show, Eq)

instance ToResourceProperties ManagedBlockchainNode where
  toResourceProperties ManagedBlockchainNode{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ManagedBlockchain::Node"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("MemberId",) . toJSON) _managedBlockchainNodeMemberId
        , (Just . ("NetworkId",) . toJSON) _managedBlockchainNodeNetworkId
        , (Just . ("NodeConfiguration",) . toJSON) _managedBlockchainNodeNodeConfiguration
        ]
    }

-- | Constructor for 'ManagedBlockchainNode' containing required fields as
-- arguments.
managedBlockchainNode
  :: Val Text -- ^ 'mbnMemberId'
  -> Val Text -- ^ 'mbnNetworkId'
  -> ManagedBlockchainNodeNodeConfiguration -- ^ 'mbnNodeConfiguration'
  -> ManagedBlockchainNode
managedBlockchainNode memberIdarg networkIdarg nodeConfigurationarg =
  ManagedBlockchainNode
  { _managedBlockchainNodeMemberId = memberIdarg
  , _managedBlockchainNodeNetworkId = networkIdarg
  , _managedBlockchainNodeNodeConfiguration = nodeConfigurationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-node.html#cfn-managedblockchain-node-memberid
mbnMemberId :: Lens' ManagedBlockchainNode (Val Text)
mbnMemberId = lens _managedBlockchainNodeMemberId (\s a -> s { _managedBlockchainNodeMemberId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-node.html#cfn-managedblockchain-node-networkid
mbnNetworkId :: Lens' ManagedBlockchainNode (Val Text)
mbnNetworkId = lens _managedBlockchainNodeNetworkId (\s a -> s { _managedBlockchainNodeNetworkId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-managedblockchain-node.html#cfn-managedblockchain-node-nodeconfiguration
mbnNodeConfiguration :: Lens' ManagedBlockchainNode ManagedBlockchainNodeNodeConfiguration
mbnNodeConfiguration = lens _managedBlockchainNodeNodeConfiguration (\s a -> s { _managedBlockchainNodeNodeConfiguration = a })
