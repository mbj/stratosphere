{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::IAM::User type creates a user.

module Stratosphere.Resources.User where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.IAMPolicies
import Stratosphere.ResourceProperties.UserLoginProfile

-- | Full data type definition for User. See 'user' for a more convenient
-- constructor.
data User =
  User
  { _userGroups :: Maybe [Val Text]
  , _userLoginProfile :: Maybe UserLoginProfile
  , _userManagedPolicyArns :: Maybe [Val Text]
  , _userPath :: Maybe (Val Text)
  , _userPolicies :: Maybe [IAMPolicies]
  } deriving (Show, Generic)

instance ToJSON User where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 5, omitNothingFields = True }

instance FromJSON User where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 5, omitNothingFields = True }

-- | Constructor for 'User' containing required fields as arguments.
user
  :: User
user  =
  User
  { _userGroups = Nothing
  , _userLoginProfile = Nothing
  , _userManagedPolicyArns = Nothing
  , _userPath = Nothing
  , _userPolicies = Nothing
  }

-- | A name of a group to which you want to add the user.
uGroups :: Lens' User (Maybe [Val Text])
uGroups = lens _userGroups (\s a -> s { _userGroups = a })

-- | Creates a login profile so that the user can access the AWS Management
-- Console.
uLoginProfile :: Lens' User (Maybe UserLoginProfile)
uLoginProfile = lens _userLoginProfile (\s a -> s { _userLoginProfile = a })

-- | One or more managed policy ARNs to attach to this user.
uManagedPolicyArns :: Lens' User (Maybe [Val Text])
uManagedPolicyArns = lens _userManagedPolicyArns (\s a -> s { _userManagedPolicyArns = a })

-- | The path for the user name. For more information about paths, see
-- Identifiers for IAM Entities in Using AWS Identity and Access Management.
uPath :: Lens' User (Maybe (Val Text))
uPath = lens _userPath (\s a -> s { _userPath = a })

-- | The policies to associate with this user. For information about policies,
-- see Overview of Policies in [Using IAM]. Note If you specify multiple
-- polices, specify unique values for the policy name. If you don't, updates
-- to the IAM user will fail.
uPolicies :: Lens' User (Maybe [IAMPolicies])
uPolicies = lens _userPolicies (\s a -> s { _userPolicies = a })