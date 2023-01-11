
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberconfiguration.html

module Stratosphere.ResourceProperties.ManagedBlockchainMemberMemberConfiguration where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ManagedBlockchainMemberMemberFrameworkConfiguration

-- | Full data type definition for ManagedBlockchainMemberMemberConfiguration.
-- See 'managedBlockchainMemberMemberConfiguration' for a more convenient
-- constructor.
data ManagedBlockchainMemberMemberConfiguration =
  ManagedBlockchainMemberMemberConfiguration
  { _managedBlockchainMemberMemberConfigurationDescription :: Maybe (Val Text)
  , _managedBlockchainMemberMemberConfigurationMemberFrameworkConfiguration :: Maybe ManagedBlockchainMemberMemberFrameworkConfiguration
  , _managedBlockchainMemberMemberConfigurationName :: Val Text
  } deriving (Show, Eq)

instance ToJSON ManagedBlockchainMemberMemberConfiguration where
  toJSON ManagedBlockchainMemberMemberConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Description",) . toJSON) _managedBlockchainMemberMemberConfigurationDescription
    , fmap (("MemberFrameworkConfiguration",) . toJSON) _managedBlockchainMemberMemberConfigurationMemberFrameworkConfiguration
    , (Just . ("Name",) . toJSON) _managedBlockchainMemberMemberConfigurationName
    ]

-- | Constructor for 'ManagedBlockchainMemberMemberConfiguration' containing
-- required fields as arguments.
managedBlockchainMemberMemberConfiguration
  :: Val Text -- ^ 'mbmmcName'
  -> ManagedBlockchainMemberMemberConfiguration
managedBlockchainMemberMemberConfiguration namearg =
  ManagedBlockchainMemberMemberConfiguration
  { _managedBlockchainMemberMemberConfigurationDescription = Nothing
  , _managedBlockchainMemberMemberConfigurationMemberFrameworkConfiguration = Nothing
  , _managedBlockchainMemberMemberConfigurationName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberconfiguration.html#cfn-managedblockchain-member-memberconfiguration-description
mbmmcDescription :: Lens' ManagedBlockchainMemberMemberConfiguration (Maybe (Val Text))
mbmmcDescription = lens _managedBlockchainMemberMemberConfigurationDescription (\s a -> s { _managedBlockchainMemberMemberConfigurationDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberconfiguration.html#cfn-managedblockchain-member-memberconfiguration-memberframeworkconfiguration
mbmmcMemberFrameworkConfiguration :: Lens' ManagedBlockchainMemberMemberConfiguration (Maybe ManagedBlockchainMemberMemberFrameworkConfiguration)
mbmmcMemberFrameworkConfiguration = lens _managedBlockchainMemberMemberConfigurationMemberFrameworkConfiguration (\s a -> s { _managedBlockchainMemberMemberConfigurationMemberFrameworkConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-managedblockchain-member-memberconfiguration.html#cfn-managedblockchain-member-memberconfiguration-name
mbmmcName :: Lens' ManagedBlockchainMemberMemberConfiguration (Val Text)
mbmmcName = lens _managedBlockchainMemberMemberConfigurationName (\s a -> s { _managedBlockchainMemberMemberConfigurationName = a })
