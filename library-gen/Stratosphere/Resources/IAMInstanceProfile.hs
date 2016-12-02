{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html

module Stratosphere.Resources.IAMInstanceProfile where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IAMInstanceProfile. See
-- | 'iamInstanceProfile' for a more convenient constructor.
data IAMInstanceProfile =
  IAMInstanceProfile
  { _iAMInstanceProfilePath :: Val Text
  , _iAMInstanceProfileRoles :: [Val Text]
  } deriving (Show, Generic)

instance ToJSON IAMInstanceProfile where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

instance FromJSON IAMInstanceProfile where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

-- | Constructor for 'IAMInstanceProfile' containing required fields as
-- | arguments.
iamInstanceProfile
  :: Val Text -- ^ 'iamipPath'
  -> [Val Text] -- ^ 'iamipRoles'
  -> IAMInstanceProfile
iamInstanceProfile patharg rolesarg =
  IAMInstanceProfile
  { _iAMInstanceProfilePath = patharg
  , _iAMInstanceProfileRoles = rolesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html#cfn-iam-instanceprofile-path
iamipPath :: Lens' IAMInstanceProfile (Val Text)
iamipPath = lens _iAMInstanceProfilePath (\s a -> s { _iAMInstanceProfilePath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html#cfn-iam-instanceprofile-roles
iamipRoles :: Lens' IAMInstanceProfile [Val Text]
iamipRoles = lens _iAMInstanceProfileRoles (\s a -> s { _iAMInstanceProfileRoles = a })
