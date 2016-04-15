{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::IAM::UserToGroupAddition type adds AWS Identity and Access
-- Management (IAM) users to a group. This type supports updates. For more
-- information about updating stacks, see AWS CloudFormation Stacks Updates.

module Stratosphere.Resources.UserToGroupAddition where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for UserToGroupAddition. See
-- 'userToGroupAddition' for a more convenient constructor.
data UserToGroupAddition =
  UserToGroupAddition
  { _userToGroupAdditionGroupName :: Val Text
  , _userToGroupAdditionUsers :: [Val Text]
  } deriving (Show, Generic)

instance ToJSON UserToGroupAddition where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

instance FromJSON UserToGroupAddition where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

-- | Constructor for 'UserToGroupAddition' containing required fields as
-- arguments.
userToGroupAddition
  :: Val Text -- ^ 'utgaGroupName'
  -> [Val Text] -- ^ 'utgaUsers'
  -> UserToGroupAddition
userToGroupAddition groupNamearg usersarg =
  UserToGroupAddition
  { _userToGroupAdditionGroupName = groupNamearg
  , _userToGroupAdditionUsers = usersarg
  }

-- | The name of group to add users to.
utgaGroupName :: Lens' UserToGroupAddition (Val Text)
utgaGroupName = lens _userToGroupAdditionGroupName (\s a -> s { _userToGroupAdditionGroupName = a })

-- |
utgaUsers :: Lens' UserToGroupAddition [Val Text]
utgaUsers = lens _userToGroupAdditionUsers (\s a -> s { _userToGroupAdditionUsers = a })