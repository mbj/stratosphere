{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html

module Stratosphere.Resources.IAMUser where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.IAMUserLoginProfile
import Stratosphere.ResourceProperties.IAMUserPolicy

-- | Full data type definition for IAMUser. See 'iamUser' for a more
-- | convenient constructor.
data IAMUser =
  IAMUser
  { _iAMUserGroups :: Maybe [Val Text]
  , _iAMUserLoginProfile :: Maybe IAMUserLoginProfile
  , _iAMUserManagedPolicyArns :: Maybe [Val Text]
  , _iAMUserPath :: Maybe (Val Text)
  , _iAMUserPolicies :: Maybe [IAMUserPolicy]
  , _iAMUserUserName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON IAMUser where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 8, omitNothingFields = True }

instance FromJSON IAMUser where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 8, omitNothingFields = True }

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
iamuGroups :: Lens' IAMUser (Maybe [Val Text])
iamuGroups = lens _iAMUserGroups (\s a -> s { _iAMUserGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-loginprofile
iamuLoginProfile :: Lens' IAMUser (Maybe IAMUserLoginProfile)
iamuLoginProfile = lens _iAMUserLoginProfile (\s a -> s { _iAMUserLoginProfile = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html#cfn-iam-user-managepolicyarns
iamuManagedPolicyArns :: Lens' IAMUser (Maybe [Val Text])
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
