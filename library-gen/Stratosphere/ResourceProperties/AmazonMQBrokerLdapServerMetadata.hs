
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-ldapservermetadata.html

module Stratosphere.ResourceProperties.AmazonMQBrokerLdapServerMetadata where

import Stratosphere.ResourceImports


-- | Full data type definition for AmazonMQBrokerLdapServerMetadata. See
-- 'amazonMQBrokerLdapServerMetadata' for a more convenient constructor.
data AmazonMQBrokerLdapServerMetadata =
  AmazonMQBrokerLdapServerMetadata
  { _amazonMQBrokerLdapServerMetadataHosts :: ValList Text
  , _amazonMQBrokerLdapServerMetadataRoleBase :: Val Text
  , _amazonMQBrokerLdapServerMetadataRoleName :: Maybe (Val Text)
  , _amazonMQBrokerLdapServerMetadataRoleSearchMatching :: Val Text
  , _amazonMQBrokerLdapServerMetadataRoleSearchSubtree :: Maybe (Val Bool)
  , _amazonMQBrokerLdapServerMetadataServiceAccountPassword :: Val Text
  , _amazonMQBrokerLdapServerMetadataServiceAccountUsername :: Val Text
  , _amazonMQBrokerLdapServerMetadataUserBase :: Val Text
  , _amazonMQBrokerLdapServerMetadataUserRoleName :: Maybe (Val Text)
  , _amazonMQBrokerLdapServerMetadataUserSearchMatching :: Val Text
  , _amazonMQBrokerLdapServerMetadataUserSearchSubtree :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON AmazonMQBrokerLdapServerMetadata where
  toJSON AmazonMQBrokerLdapServerMetadata{..} =
    object $
    catMaybes
    [ (Just . ("Hosts",) . toJSON) _amazonMQBrokerLdapServerMetadataHosts
    , (Just . ("RoleBase",) . toJSON) _amazonMQBrokerLdapServerMetadataRoleBase
    , fmap (("RoleName",) . toJSON) _amazonMQBrokerLdapServerMetadataRoleName
    , (Just . ("RoleSearchMatching",) . toJSON) _amazonMQBrokerLdapServerMetadataRoleSearchMatching
    , fmap (("RoleSearchSubtree",) . toJSON) _amazonMQBrokerLdapServerMetadataRoleSearchSubtree
    , (Just . ("ServiceAccountPassword",) . toJSON) _amazonMQBrokerLdapServerMetadataServiceAccountPassword
    , (Just . ("ServiceAccountUsername",) . toJSON) _amazonMQBrokerLdapServerMetadataServiceAccountUsername
    , (Just . ("UserBase",) . toJSON) _amazonMQBrokerLdapServerMetadataUserBase
    , fmap (("UserRoleName",) . toJSON) _amazonMQBrokerLdapServerMetadataUserRoleName
    , (Just . ("UserSearchMatching",) . toJSON) _amazonMQBrokerLdapServerMetadataUserSearchMatching
    , fmap (("UserSearchSubtree",) . toJSON) _amazonMQBrokerLdapServerMetadataUserSearchSubtree
    ]

-- | Constructor for 'AmazonMQBrokerLdapServerMetadata' containing required
-- fields as arguments.
amazonMQBrokerLdapServerMetadata
  :: ValList Text -- ^ 'amqblsmHosts'
  -> Val Text -- ^ 'amqblsmRoleBase'
  -> Val Text -- ^ 'amqblsmRoleSearchMatching'
  -> Val Text -- ^ 'amqblsmServiceAccountPassword'
  -> Val Text -- ^ 'amqblsmServiceAccountUsername'
  -> Val Text -- ^ 'amqblsmUserBase'
  -> Val Text -- ^ 'amqblsmUserSearchMatching'
  -> AmazonMQBrokerLdapServerMetadata
amazonMQBrokerLdapServerMetadata hostsarg roleBasearg roleSearchMatchingarg serviceAccountPasswordarg serviceAccountUsernamearg userBasearg userSearchMatchingarg =
  AmazonMQBrokerLdapServerMetadata
  { _amazonMQBrokerLdapServerMetadataHosts = hostsarg
  , _amazonMQBrokerLdapServerMetadataRoleBase = roleBasearg
  , _amazonMQBrokerLdapServerMetadataRoleName = Nothing
  , _amazonMQBrokerLdapServerMetadataRoleSearchMatching = roleSearchMatchingarg
  , _amazonMQBrokerLdapServerMetadataRoleSearchSubtree = Nothing
  , _amazonMQBrokerLdapServerMetadataServiceAccountPassword = serviceAccountPasswordarg
  , _amazonMQBrokerLdapServerMetadataServiceAccountUsername = serviceAccountUsernamearg
  , _amazonMQBrokerLdapServerMetadataUserBase = userBasearg
  , _amazonMQBrokerLdapServerMetadataUserRoleName = Nothing
  , _amazonMQBrokerLdapServerMetadataUserSearchMatching = userSearchMatchingarg
  , _amazonMQBrokerLdapServerMetadataUserSearchSubtree = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-ldapservermetadata.html#cfn-amazonmq-broker-ldapservermetadata-hosts
amqblsmHosts :: Lens' AmazonMQBrokerLdapServerMetadata (ValList Text)
amqblsmHosts = lens _amazonMQBrokerLdapServerMetadataHosts (\s a -> s { _amazonMQBrokerLdapServerMetadataHosts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-ldapservermetadata.html#cfn-amazonmq-broker-ldapservermetadata-rolebase
amqblsmRoleBase :: Lens' AmazonMQBrokerLdapServerMetadata (Val Text)
amqblsmRoleBase = lens _amazonMQBrokerLdapServerMetadataRoleBase (\s a -> s { _amazonMQBrokerLdapServerMetadataRoleBase = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-ldapservermetadata.html#cfn-amazonmq-broker-ldapservermetadata-rolename
amqblsmRoleName :: Lens' AmazonMQBrokerLdapServerMetadata (Maybe (Val Text))
amqblsmRoleName = lens _amazonMQBrokerLdapServerMetadataRoleName (\s a -> s { _amazonMQBrokerLdapServerMetadataRoleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-ldapservermetadata.html#cfn-amazonmq-broker-ldapservermetadata-rolesearchmatching
amqblsmRoleSearchMatching :: Lens' AmazonMQBrokerLdapServerMetadata (Val Text)
amqblsmRoleSearchMatching = lens _amazonMQBrokerLdapServerMetadataRoleSearchMatching (\s a -> s { _amazonMQBrokerLdapServerMetadataRoleSearchMatching = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-ldapservermetadata.html#cfn-amazonmq-broker-ldapservermetadata-rolesearchsubtree
amqblsmRoleSearchSubtree :: Lens' AmazonMQBrokerLdapServerMetadata (Maybe (Val Bool))
amqblsmRoleSearchSubtree = lens _amazonMQBrokerLdapServerMetadataRoleSearchSubtree (\s a -> s { _amazonMQBrokerLdapServerMetadataRoleSearchSubtree = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-ldapservermetadata.html#cfn-amazonmq-broker-ldapservermetadata-serviceaccountpassword
amqblsmServiceAccountPassword :: Lens' AmazonMQBrokerLdapServerMetadata (Val Text)
amqblsmServiceAccountPassword = lens _amazonMQBrokerLdapServerMetadataServiceAccountPassword (\s a -> s { _amazonMQBrokerLdapServerMetadataServiceAccountPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-ldapservermetadata.html#cfn-amazonmq-broker-ldapservermetadata-serviceaccountusername
amqblsmServiceAccountUsername :: Lens' AmazonMQBrokerLdapServerMetadata (Val Text)
amqblsmServiceAccountUsername = lens _amazonMQBrokerLdapServerMetadataServiceAccountUsername (\s a -> s { _amazonMQBrokerLdapServerMetadataServiceAccountUsername = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-ldapservermetadata.html#cfn-amazonmq-broker-ldapservermetadata-userbase
amqblsmUserBase :: Lens' AmazonMQBrokerLdapServerMetadata (Val Text)
amqblsmUserBase = lens _amazonMQBrokerLdapServerMetadataUserBase (\s a -> s { _amazonMQBrokerLdapServerMetadataUserBase = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-ldapservermetadata.html#cfn-amazonmq-broker-ldapservermetadata-userrolename
amqblsmUserRoleName :: Lens' AmazonMQBrokerLdapServerMetadata (Maybe (Val Text))
amqblsmUserRoleName = lens _amazonMQBrokerLdapServerMetadataUserRoleName (\s a -> s { _amazonMQBrokerLdapServerMetadataUserRoleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-ldapservermetadata.html#cfn-amazonmq-broker-ldapservermetadata-usersearchmatching
amqblsmUserSearchMatching :: Lens' AmazonMQBrokerLdapServerMetadata (Val Text)
amqblsmUserSearchMatching = lens _amazonMQBrokerLdapServerMetadataUserSearchMatching (\s a -> s { _amazonMQBrokerLdapServerMetadataUserSearchMatching = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-ldapservermetadata.html#cfn-amazonmq-broker-ldapservermetadata-usersearchsubtree
amqblsmUserSearchSubtree :: Lens' AmazonMQBrokerLdapServerMetadata (Maybe (Val Bool))
amqblsmUserSearchSubtree = lens _amazonMQBrokerLdapServerMetadataUserSearchSubtree (\s a -> s { _amazonMQBrokerLdapServerMetadataUserSearchSubtree = a })
