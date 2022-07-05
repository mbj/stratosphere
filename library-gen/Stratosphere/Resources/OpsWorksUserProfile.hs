{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-userprofile.html

module Stratosphere.Resources.OpsWorksUserProfile where

import Stratosphere.ResourceImports


-- | Full data type definition for OpsWorksUserProfile. See
-- 'opsWorksUserProfile' for a more convenient constructor.
data OpsWorksUserProfile =
  OpsWorksUserProfile
  { _opsWorksUserProfileAllowSelfManagement :: Maybe (Val Bool)
  , _opsWorksUserProfileIamUserArn :: Val Text
  , _opsWorksUserProfileSshPublicKey :: Maybe (Val Text)
  , _opsWorksUserProfileSshUsername :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties OpsWorksUserProfile where
  toResourceProperties OpsWorksUserProfile{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::OpsWorks::UserProfile"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AllowSelfManagement",) . toJSON) _opsWorksUserProfileAllowSelfManagement
        , (Just . ("IamUserArn",) . toJSON) _opsWorksUserProfileIamUserArn
        , fmap (("SshPublicKey",) . toJSON) _opsWorksUserProfileSshPublicKey
        , fmap (("SshUsername",) . toJSON) _opsWorksUserProfileSshUsername
        ]
    }

-- | Constructor for 'OpsWorksUserProfile' containing required fields as
-- arguments.
opsWorksUserProfile
  :: Val Text -- ^ 'owupIamUserArn'
  -> OpsWorksUserProfile
opsWorksUserProfile iamUserArnarg =
  OpsWorksUserProfile
  { _opsWorksUserProfileAllowSelfManagement = Nothing
  , _opsWorksUserProfileIamUserArn = iamUserArnarg
  , _opsWorksUserProfileSshPublicKey = Nothing
  , _opsWorksUserProfileSshUsername = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-userprofile.html#cfn-opsworks-userprofile-allowselfmanagement
owupAllowSelfManagement :: Lens' OpsWorksUserProfile (Maybe (Val Bool))
owupAllowSelfManagement = lens _opsWorksUserProfileAllowSelfManagement (\s a -> s { _opsWorksUserProfileAllowSelfManagement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-userprofile.html#cfn-opsworks-userprofile-iamuserarn
owupIamUserArn :: Lens' OpsWorksUserProfile (Val Text)
owupIamUserArn = lens _opsWorksUserProfileIamUserArn (\s a -> s { _opsWorksUserProfileIamUserArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-userprofile.html#cfn-opsworks-userprofile-sshpublickey
owupSshPublicKey :: Lens' OpsWorksUserProfile (Maybe (Val Text))
owupSshPublicKey = lens _opsWorksUserProfileSshPublicKey (\s a -> s { _opsWorksUserProfileSshPublicKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-userprofile.html#cfn-opsworks-userprofile-sshusername
owupSshUsername :: Lens' OpsWorksUserProfile (Maybe (Val Text))
owupSshUsername = lens _opsWorksUserProfileSshUsername (\s a -> s { _opsWorksUserProfileSshUsername = a })
