{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Creates an AWS Identity and Access Management (IAM) Instance Profile that
-- can be used with IAM Roles for EC2 Instances. For more information about
-- IAM roles, see Working with Roles in the AWS Identity and Access Management
-- User Guide.

module Stratosphere.Resources.InstanceProfile where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for InstanceProfile. See 'instanceProfile' for
-- a more convenient constructor.
data InstanceProfile =
  InstanceProfile
  { _instanceProfilePath :: Val Text
  , _instanceProfileRoles :: [Val Text]
  } deriving (Show, Generic)

instance ToJSON InstanceProfile where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

instance FromJSON InstanceProfile where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 16, omitNothingFields = True }

-- | Constructor for 'InstanceProfile' containing required fields as
-- arguments.
instanceProfile
  :: Val Text -- ^ Path
  -> [Val Text] -- ^ Roles
  -> InstanceProfile
instanceProfile patharg rolesarg =
  InstanceProfile
  { _instanceProfilePath = patharg
  , _instanceProfileRoles = rolesarg
  }

-- | The path associated with this IAM instance profile. For information about
-- IAM paths, see Friendly Names and Paths in the AWS Identity and Access
-- Management User Guide.
ipPath :: Lens' InstanceProfile (Val Text)
ipPath = lens _instanceProfilePath (\s a -> s { _instanceProfilePath = a })

-- | The roles associated with this IAM instance profile.
ipRoles :: Lens' InstanceProfile [Val Text]
ipRoles = lens _instanceProfileRoles (\s a -> s { _instanceProfileRoles = a })