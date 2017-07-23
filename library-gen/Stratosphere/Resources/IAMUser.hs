{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html

module Stratosphere.Resources.IAMUser where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.IAMUserLoginProfile
import Stratosphere.ResourceProperties.IAMUserPolicy

-- | Full data type definition for IAMUser. See 'iamUser' for a more
-- convenient constructor.
data IAMUser =
  IAMUser
  { _iAMUserGroups :: Maybe (ValList Text)
  , _iAMUserLoginProfile :: Maybe IAMUserLoginProfile
  , _iAMUserManagedPolicyArns :: Maybe (ValList Text)
  , _iAMUserPath :: Maybe (Val Text)
  , _iAMUserPolicies :: Maybe [IAMUserPolicy]
  , _iAMUserUserName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IAMUser where
  toJSON IAMUser{..} =
    object $
    catMaybes
    [ fmap (("Groups",) . toJSON) _iAMUserGroups
    , fmap (("LoginProfile",) . toJSON) _iAMUserLoginProfile
    , fmap (("ManagedPolicyArns",) . toJSON) _iAMUserManagedPolicyArns
    , fmap (("Path",) . toJSON) _iAMUserPath
    , fmap (("Policies",) . toJSON) _iAMUserPolicies
    , fmap (("UserName",) . toJSON) _iAMUserUserName
    ]

instance FromJSON IAMUser where
  parseJSON (Object obj) =
    IAMUser <$>
      (obj .:? "Groups") <*>
      (obj .:? "LoginProfile") <*>
      (obj .:? "ManagedPolicyArns") <*>
      (obj .:? "Path") <*>
      (obj .:? "Policies") <*>
      (obj .:? "UserName")
  parseJSON _ = mempty

-- | Constructor for 'IAMUser' containing required fields as arguments.
iamUser
  :: IAMUser
iamUser  =
  IAMUser
  { _iAMUserGroups = Nothing
  , _iAMUserLoginProfile = Nothing
  , _iAMUserManagedPolicyArns = Nothing
  , _iAMUserPath = Nothing
  , _iAMUserPolicies = Nothing
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-policies
iamuPolicies :: Lens' IAMUser (Maybe [IAMUserPolicy])
iamuPolicies = lens _iAMUserPolicies (\s a -> s { _iAMUserPolicies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-username
iamuUserName :: Lens' IAMUser (Maybe (Val Text))
iamuUserName = lens _iAMUserUserName (\s a -> s { _iAMUserUserName = a })
