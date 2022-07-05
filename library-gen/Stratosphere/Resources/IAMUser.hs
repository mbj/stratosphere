{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html

module Stratosphere.Resources.IAMUser where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IAMUserLoginProfile
import Stratosphere.ResourceProperties.IAMUserPolicy
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for IAMUser. See 'iamUser' for a more
-- convenient constructor.
data IAMUser =
  IAMUser
  { _iAMUserGroups :: Maybe (ValList Text)
  , _iAMUserLoginProfile :: Maybe IAMUserLoginProfile
  , _iAMUserManagedPolicyArns :: Maybe (ValList Text)
  , _iAMUserPath :: Maybe (Val Text)
  , _iAMUserPermissionsBoundary :: Maybe (Val Text)
  , _iAMUserPolicies :: Maybe [IAMUserPolicy]
  , _iAMUserTags :: Maybe [Tag]
  , _iAMUserUserName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties IAMUser where
  toResourceProperties IAMUser{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IAM::User"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Groups",) . toJSON) _iAMUserGroups
        , fmap (("LoginProfile",) . toJSON) _iAMUserLoginProfile
        , fmap (("ManagedPolicyArns",) . toJSON) _iAMUserManagedPolicyArns
        , fmap (("Path",) . toJSON) _iAMUserPath
        , fmap (("PermissionsBoundary",) . toJSON) _iAMUserPermissionsBoundary
        , fmap (("Policies",) . toJSON) _iAMUserPolicies
        , fmap (("Tags",) . toJSON) _iAMUserTags
        , fmap (("UserName",) . toJSON) _iAMUserUserName
        ]
    }

-- | Constructor for 'IAMUser' containing required fields as arguments.
iamUser
  :: IAMUser
iamUser  =
  IAMUser
  { _iAMUserGroups = Nothing
  , _iAMUserLoginProfile = Nothing
  , _iAMUserManagedPolicyArns = Nothing
  , _iAMUserPath = Nothing
  , _iAMUserPermissionsBoundary = Nothing
  , _iAMUserPolicies = Nothing
  , _iAMUserTags = Nothing
  , _iAMUserUserName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-groups
iamuGroups :: Lens' IAMUser (Maybe (ValList Text))
iamuGroups = lens _iAMUserGroups (\s a -> s { _iAMUserGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-loginprofile
iamuLoginProfile :: Lens' IAMUser (Maybe IAMUserLoginProfile)
iamuLoginProfile = lens _iAMUserLoginProfile (\s a -> s { _iAMUserLoginProfile = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-managepolicyarns
iamuManagedPolicyArns :: Lens' IAMUser (Maybe (ValList Text))
iamuManagedPolicyArns = lens _iAMUserManagedPolicyArns (\s a -> s { _iAMUserManagedPolicyArns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-path
iamuPath :: Lens' IAMUser (Maybe (Val Text))
iamuPath = lens _iAMUserPath (\s a -> s { _iAMUserPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-permissionsboundary
iamuPermissionsBoundary :: Lens' IAMUser (Maybe (Val Text))
iamuPermissionsBoundary = lens _iAMUserPermissionsBoundary (\s a -> s { _iAMUserPermissionsBoundary = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-policies
iamuPolicies :: Lens' IAMUser (Maybe [IAMUserPolicy])
iamuPolicies = lens _iAMUserPolicies (\s a -> s { _iAMUserPolicies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-tags
iamuTags :: Lens' IAMUser (Maybe [Tag])
iamuTags = lens _iAMUserTags (\s a -> s { _iAMUserTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-username
iamuUserName :: Lens' IAMUser (Maybe (Val Text))
iamuUserName = lens _iAMUserUserName (\s a -> s { _iAMUserUserName = a })
