{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html

module Stratosphere.Resources.IAMUserToGroupAddition where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IAMUserToGroupAddition. See
-- | 'iamUserToGroupAddition' for a more convenient constructor.
data IAMUserToGroupAddition =
  IAMUserToGroupAddition
  { _iAMUserToGroupAdditionGroupName :: Val Text
  , _iAMUserToGroupAdditionUsers :: [Val Text]
  } deriving (Show, Generic)

instance ToJSON IAMUserToGroupAddition where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

instance FromJSON IAMUserToGroupAddition where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

-- | Constructor for 'IAMUserToGroupAddition' containing required fields as
-- | arguments.
iamUserToGroupAddition
  :: Val Text -- ^ 'iamutgaGroupName'
  -> [Val Text] -- ^ 'iamutgaUsers'
  -> IAMUserToGroupAddition
iamUserToGroupAddition groupNamearg usersarg =
  IAMUserToGroupAddition
  { _iAMUserToGroupAdditionGroupName = groupNamearg
  , _iAMUserToGroupAdditionUsers = usersarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html#cfn-iam-addusertogroup-groupname
iamutgaGroupName :: Lens' IAMUserToGroupAddition (Val Text)
iamutgaGroupName = lens _iAMUserToGroupAdditionGroupName (\s a -> s { _iAMUserToGroupAdditionGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html#cfn-iam-addusertogroup-users
iamutgaUsers :: Lens' IAMUserToGroupAddition [Val Text]
iamutgaUsers = lens _iAMUserToGroupAdditionUsers (\s a -> s { _iAMUserToGroupAdditionUsers = a })
