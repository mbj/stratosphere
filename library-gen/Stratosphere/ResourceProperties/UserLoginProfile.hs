{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | LoginProfile is a property of the AWS::IAM::User resource that creates a
-- login profile for users so that they can access the AWS Management Console.

module Stratosphere.ResourceProperties.UserLoginProfile where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for UserLoginProfile. See 'userLoginProfile'
-- for a more convenient constructor.
data UserLoginProfile =
  UserLoginProfile
  { _userLoginProfilePassword :: Val Text
  , _userLoginProfilePasswordResetRequired :: Maybe (Val Bool')
  } deriving (Show, Generic)

instance ToJSON UserLoginProfile where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

instance FromJSON UserLoginProfile where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

-- | Constructor for 'UserLoginProfile' containing required fields as
-- arguments.
userLoginProfile
  :: Val Text -- ^ 'ulpPassword'
  -> UserLoginProfile
userLoginProfile passwordarg =
  UserLoginProfile
  { _userLoginProfilePassword = passwordarg
  , _userLoginProfilePasswordResetRequired = Nothing
  }

-- | The password for the user.
ulpPassword :: Lens' UserLoginProfile (Val Text)
ulpPassword = lens _userLoginProfilePassword (\s a -> s { _userLoginProfilePassword = a })

-- | Specifies whether the user is required to set a new password the next
-- time the user logs in to the AWS Management Console.
ulpPasswordResetRequired :: Lens' UserLoginProfile (Maybe (Val Bool'))
ulpPasswordResetRequired = lens _userLoginProfilePasswordResetRequired (\s a -> s { _userLoginProfilePasswordResetRequired = a })