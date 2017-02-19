{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-userprofile.html

module Stratosphere.Resources.OpsWorksUserProfile where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for OpsWorksUserProfile. See
-- | 'opsWorksUserProfile' for a more convenient constructor.
data OpsWorksUserProfile =
  OpsWorksUserProfile
  { _opsWorksUserProfileAllowSelfManagement :: Maybe (Val Bool')
  , _opsWorksUserProfileIamUserArn :: Val Text
  , _opsWorksUserProfileSshPublicKey :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON OpsWorksUserProfile where
  toJSON OpsWorksUserProfile{..} =
    object $
    catMaybes
    [ ("AllowSelfManagement" .=) <$> _opsWorksUserProfileAllowSelfManagement
    , Just ("IamUserArn" .= _opsWorksUserProfileIamUserArn)
    , ("SshPublicKey" .=) <$> _opsWorksUserProfileSshPublicKey
    ]

instance FromJSON OpsWorksUserProfile where
  parseJSON (Object obj) =
    OpsWorksUserProfile <$>
      obj .:? "AllowSelfManagement" <*>
      obj .: "IamUserArn" <*>
      obj .:? "SshPublicKey"
  parseJSON _ = mempty

-- | Constructor for 'OpsWorksUserProfile' containing required fields as
-- | arguments.
opsWorksUserProfile
  :: Val Text -- ^ 'owupIamUserArn'
  -> OpsWorksUserProfile
opsWorksUserProfile iamUserArnarg =
  OpsWorksUserProfile
  { _opsWorksUserProfileAllowSelfManagement = Nothing
  , _opsWorksUserProfileIamUserArn = iamUserArnarg
  , _opsWorksUserProfileSshPublicKey = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-userprofile.html#cfn-opsworks-userprofile-allowselfmanagement
owupAllowSelfManagement :: Lens' OpsWorksUserProfile (Maybe (Val Bool'))
owupAllowSelfManagement = lens _opsWorksUserProfileAllowSelfManagement (\s a -> s { _opsWorksUserProfileAllowSelfManagement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-userprofile.html#cfn-opsworks-userprofile-iamuserarn
owupIamUserArn :: Lens' OpsWorksUserProfile (Val Text)
owupIamUserArn = lens _opsWorksUserProfileIamUserArn (\s a -> s { _opsWorksUserProfileIamUserArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-userprofile.html#cfn-opsworks-userprofile-sshpublickey
owupSshPublicKey :: Lens' OpsWorksUserProfile (Maybe (Val Text))
owupSshPublicKey = lens _opsWorksUserProfileSshPublicKey (\s a -> s { _opsWorksUserProfileSshPublicKey = a })
