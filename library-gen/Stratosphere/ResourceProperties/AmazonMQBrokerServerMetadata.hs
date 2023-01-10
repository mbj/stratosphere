
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-servermetadata.html

module Stratosphere.ResourceProperties.AmazonMQBrokerServerMetadata where

import Stratosphere.ResourceImports


-- | Full data type definition for AmazonMQBrokerServerMetadata. See
-- 'amazonMQBrokerServerMetadata' for a more convenient constructor.
data AmazonMQBrokerServerMetadata =
  AmazonMQBrokerServerMetadata
  { _amazonMQBrokerServerMetadataHosts :: ValList Text
  , _amazonMQBrokerServerMetadataRoleBase :: Val Text
  , _amazonMQBrokerServerMetadataRoleName :: Maybe (Val Text)
  , _amazonMQBrokerServerMetadataRoleSearchMatching :: Val Text
  , _amazonMQBrokerServerMetadataRoleSearchSubtree :: Maybe (Val Bool)
  , _amazonMQBrokerServerMetadataServiceAccountPassword :: Val Text
  , _amazonMQBrokerServerMetadataServiceAccountUsername :: Val Text
  , _amazonMQBrokerServerMetadataUserBase :: Val Text
  , _amazonMQBrokerServerMetadataUserRoleName :: Maybe (Val Text)
  , _amazonMQBrokerServerMetadataUserSearchMatching :: Val Text
  , _amazonMQBrokerServerMetadataUserSearchSubtree :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON AmazonMQBrokerServerMetadata where
  toJSON AmazonMQBrokerServerMetadata{..} =
    object $
    catMaybes
    [ (Just . ("Hosts",) . toJSON) _amazonMQBrokerServerMetadataHosts
    , (Just . ("RoleBase",) . toJSON) _amazonMQBrokerServerMetadataRoleBase
    , fmap (("RoleName",) . toJSON) _amazonMQBrokerServerMetadataRoleName
    , (Just . ("RoleSearchMatching",) . toJSON) _amazonMQBrokerServerMetadataRoleSearchMatching
    , fmap (("RoleSearchSubtree",) . toJSON) _amazonMQBrokerServerMetadataRoleSearchSubtree
    , (Just . ("ServiceAccountPassword",) . toJSON) _amazonMQBrokerServerMetadataServiceAccountPassword
    , (Just . ("ServiceAccountUsername",) . toJSON) _amazonMQBrokerServerMetadataServiceAccountUsername
    , (Just . ("UserBase",) . toJSON) _amazonMQBrokerServerMetadataUserBase
    , fmap (("UserRoleName",) . toJSON) _amazonMQBrokerServerMetadataUserRoleName
    , (Just . ("UserSearchMatching",) . toJSON) _amazonMQBrokerServerMetadataUserSearchMatching
    , fmap (("UserSearchSubtree",) . toJSON) _amazonMQBrokerServerMetadataUserSearchSubtree
    ]

-- | Constructor for 'AmazonMQBrokerServerMetadata' containing required fields
-- as arguments.
amazonMQBrokerServerMetadata
  :: ValList Text -- ^ 'amqbsmHosts'
  -> Val Text -- ^ 'amqbsmRoleBase'
  -> Val Text -- ^ 'amqbsmRoleSearchMatching'
  -> Val Text -- ^ 'amqbsmServiceAccountPassword'
  -> Val Text -- ^ 'amqbsmServiceAccountUsername'
  -> Val Text -- ^ 'amqbsmUserBase'
  -> Val Text -- ^ 'amqbsmUserSearchMatching'
  -> AmazonMQBrokerServerMetadata
amazonMQBrokerServerMetadata hostsarg roleBasearg roleSearchMatchingarg serviceAccountPasswordarg serviceAccountUsernamearg userBasearg userSearchMatchingarg =
  AmazonMQBrokerServerMetadata
  { _amazonMQBrokerServerMetadataHosts = hostsarg
  , _amazonMQBrokerServerMetadataRoleBase = roleBasearg
  , _amazonMQBrokerServerMetadataRoleName = Nothing
  , _amazonMQBrokerServerMetadataRoleSearchMatching = roleSearchMatchingarg
  , _amazonMQBrokerServerMetadataRoleSearchSubtree = Nothing
  , _amazonMQBrokerServerMetadataServiceAccountPassword = serviceAccountPasswordarg
  , _amazonMQBrokerServerMetadataServiceAccountUsername = serviceAccountUsernamearg
  , _amazonMQBrokerServerMetadataUserBase = userBasearg
  , _amazonMQBrokerServerMetadataUserRoleName = Nothing
  , _amazonMQBrokerServerMetadataUserSearchMatching = userSearchMatchingarg
  , _amazonMQBrokerServerMetadataUserSearchSubtree = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-servermetadata.html#cfn-amazonmq-broker-servermetadata-hosts
amqbsmHosts :: Lens' AmazonMQBrokerServerMetadata (ValList Text)
amqbsmHosts = lens _amazonMQBrokerServerMetadataHosts (\s a -> s { _amazonMQBrokerServerMetadataHosts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-servermetadata.html#cfn-amazonmq-broker-servermetadata-rolebase
amqbsmRoleBase :: Lens' AmazonMQBrokerServerMetadata (Val Text)
amqbsmRoleBase = lens _amazonMQBrokerServerMetadataRoleBase (\s a -> s { _amazonMQBrokerServerMetadataRoleBase = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-servermetadata.html#cfn-amazonmq-broker-servermetadata-rolename
amqbsmRoleName :: Lens' AmazonMQBrokerServerMetadata (Maybe (Val Text))
amqbsmRoleName = lens _amazonMQBrokerServerMetadataRoleName (\s a -> s { _amazonMQBrokerServerMetadataRoleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-servermetadata.html#cfn-amazonmq-broker-servermetadata-rolesearchmatching
amqbsmRoleSearchMatching :: Lens' AmazonMQBrokerServerMetadata (Val Text)
amqbsmRoleSearchMatching = lens _amazonMQBrokerServerMetadataRoleSearchMatching (\s a -> s { _amazonMQBrokerServerMetadataRoleSearchMatching = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-servermetadata.html#cfn-amazonmq-broker-servermetadata-rolesearchsubtree
amqbsmRoleSearchSubtree :: Lens' AmazonMQBrokerServerMetadata (Maybe (Val Bool))
amqbsmRoleSearchSubtree = lens _amazonMQBrokerServerMetadataRoleSearchSubtree (\s a -> s { _amazonMQBrokerServerMetadataRoleSearchSubtree = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-servermetadata.html#cfn-amazonmq-broker-servermetadata-serviceaccountpassword
amqbsmServiceAccountPassword :: Lens' AmazonMQBrokerServerMetadata (Val Text)
amqbsmServiceAccountPassword = lens _amazonMQBrokerServerMetadataServiceAccountPassword (\s a -> s { _amazonMQBrokerServerMetadataServiceAccountPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-servermetadata.html#cfn-amazonmq-broker-servermetadata-serviceaccountusername
amqbsmServiceAccountUsername :: Lens' AmazonMQBrokerServerMetadata (Val Text)
amqbsmServiceAccountUsername = lens _amazonMQBrokerServerMetadataServiceAccountUsername (\s a -> s { _amazonMQBrokerServerMetadataServiceAccountUsername = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-servermetadata.html#cfn-amazonmq-broker-servermetadata-userbase
amqbsmUserBase :: Lens' AmazonMQBrokerServerMetadata (Val Text)
amqbsmUserBase = lens _amazonMQBrokerServerMetadataUserBase (\s a -> s { _amazonMQBrokerServerMetadataUserBase = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-servermetadata.html#cfn-amazonmq-broker-servermetadata-userrolename
amqbsmUserRoleName :: Lens' AmazonMQBrokerServerMetadata (Maybe (Val Text))
amqbsmUserRoleName = lens _amazonMQBrokerServerMetadataUserRoleName (\s a -> s { _amazonMQBrokerServerMetadataUserRoleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-servermetadata.html#cfn-amazonmq-broker-servermetadata-usersearchmatching
amqbsmUserSearchMatching :: Lens' AmazonMQBrokerServerMetadata (Val Text)
amqbsmUserSearchMatching = lens _amazonMQBrokerServerMetadataUserSearchMatching (\s a -> s { _amazonMQBrokerServerMetadataUserSearchMatching = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-servermetadata.html#cfn-amazonmq-broker-servermetadata-usersearchsubtree
amqbsmUserSearchSubtree :: Lens' AmazonMQBrokerServerMetadata (Maybe (Val Bool))
amqbsmUserSearchSubtree = lens _amazonMQBrokerServerMetadataUserSearchSubtree (\s a -> s { _amazonMQBrokerServerMetadataUserSearchSubtree = a })
