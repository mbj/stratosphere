{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-user.html

module Stratosphere.Resources.TransferUser where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.TransferUserHomeDirectoryMapEntry
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for TransferUser. See 'transferUser' for a more
-- convenient constructor.
data TransferUser =
  TransferUser
  { _transferUserHomeDirectory :: Maybe (Val Text)
  , _transferUserHomeDirectoryMappings :: Maybe [TransferUserHomeDirectoryMapEntry]
  , _transferUserHomeDirectoryType :: Maybe (Val Text)
  , _transferUserPolicy :: Maybe (Val Text)
  , _transferUserRole :: Val Text
  , _transferUserServerId :: Val Text
  , _transferUserTags :: Maybe [Tag]
  , _transferUserUserName :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties TransferUser where
  toResourceProperties TransferUser{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Transfer::User"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("HomeDirectory",) . toJSON) _transferUserHomeDirectory
        , fmap (("HomeDirectoryMappings",) . toJSON) _transferUserHomeDirectoryMappings
        , fmap (("HomeDirectoryType",) . toJSON) _transferUserHomeDirectoryType
        , fmap (("Policy",) . toJSON) _transferUserPolicy
        , (Just . ("Role",) . toJSON) _transferUserRole
        , (Just . ("ServerId",) . toJSON) _transferUserServerId
        , fmap (("Tags",) . toJSON) _transferUserTags
        , (Just . ("UserName",) . toJSON) _transferUserUserName
        ]
    }

-- | Constructor for 'TransferUser' containing required fields as arguments.
transferUser
  :: Val Text -- ^ 'tuRole'
  -> Val Text -- ^ 'tuServerId'
  -> Val Text -- ^ 'tuUserName'
  -> TransferUser
transferUser rolearg serverIdarg userNamearg =
  TransferUser
  { _transferUserHomeDirectory = Nothing
  , _transferUserHomeDirectoryMappings = Nothing
  , _transferUserHomeDirectoryType = Nothing
  , _transferUserPolicy = Nothing
  , _transferUserRole = rolearg
  , _transferUserServerId = serverIdarg
  , _transferUserTags = Nothing
  , _transferUserUserName = userNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-user.html#cfn-transfer-user-homedirectory
tuHomeDirectory :: Lens' TransferUser (Maybe (Val Text))
tuHomeDirectory = lens _transferUserHomeDirectory (\s a -> s { _transferUserHomeDirectory = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-user.html#cfn-transfer-user-homedirectorymappings
tuHomeDirectoryMappings :: Lens' TransferUser (Maybe [TransferUserHomeDirectoryMapEntry])
tuHomeDirectoryMappings = lens _transferUserHomeDirectoryMappings (\s a -> s { _transferUserHomeDirectoryMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-user.html#cfn-transfer-user-homedirectorytype
tuHomeDirectoryType :: Lens' TransferUser (Maybe (Val Text))
tuHomeDirectoryType = lens _transferUserHomeDirectoryType (\s a -> s { _transferUserHomeDirectoryType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-user.html#cfn-transfer-user-policy
tuPolicy :: Lens' TransferUser (Maybe (Val Text))
tuPolicy = lens _transferUserPolicy (\s a -> s { _transferUserPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-user.html#cfn-transfer-user-role
tuRole :: Lens' TransferUser (Val Text)
tuRole = lens _transferUserRole (\s a -> s { _transferUserRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-user.html#cfn-transfer-user-serverid
tuServerId :: Lens' TransferUser (Val Text)
tuServerId = lens _transferUserServerId (\s a -> s { _transferUserServerId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-user.html#cfn-transfer-user-tags
tuTags :: Lens' TransferUser (Maybe [Tag])
tuTags = lens _transferUserTags (\s a -> s { _transferUserTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-transfer-user.html#cfn-transfer-user-username
tuUserName :: Lens' TransferUser (Val Text)
tuUserName = lens _transferUserUserName (\s a -> s { _transferUserUserName = a })
