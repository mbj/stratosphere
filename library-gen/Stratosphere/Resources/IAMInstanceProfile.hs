{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html

module Stratosphere.Resources.IAMInstanceProfile where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for IAMInstanceProfile. See
-- 'iamInstanceProfile' for a more convenient constructor.
data IAMInstanceProfile =
  IAMInstanceProfile
  { _iAMInstanceProfileInstanceProfileName :: Maybe (Val Text)
  , _iAMInstanceProfilePath :: Maybe (Val Text)
  , _iAMInstanceProfileRoles :: [Val Text]
  } deriving (Show, Eq)

instance ToJSON IAMInstanceProfile where
  toJSON IAMInstanceProfile{..} =
    object $
    catMaybes
    [ ("InstanceProfileName" .=) <$> _iAMInstanceProfileInstanceProfileName
    , ("Path" .=) <$> _iAMInstanceProfilePath
    , Just ("Roles" .= _iAMInstanceProfileRoles)
    ]

instance FromJSON IAMInstanceProfile where
  parseJSON (Object obj) =
    IAMInstanceProfile <$>
      obj .:? "InstanceProfileName" <*>
      obj .:? "Path" <*>
      obj .: "Roles"
  parseJSON _ = mempty

-- | Constructor for 'IAMInstanceProfile' containing required fields as
-- arguments.
iamInstanceProfile
  :: [Val Text] -- ^ 'iamipRoles'
  -> IAMInstanceProfile
iamInstanceProfile rolesarg =
  IAMInstanceProfile
  { _iAMInstanceProfileInstanceProfileName = Nothing
  , _iAMInstanceProfilePath = Nothing
  , _iAMInstanceProfileRoles = rolesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html#cfn-iam-instanceprofile-instanceprofilename
iamipInstanceProfileName :: Lens' IAMInstanceProfile (Maybe (Val Text))
iamipInstanceProfileName = lens _iAMInstanceProfileInstanceProfileName (\s a -> s { _iAMInstanceProfileInstanceProfileName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html#cfn-iam-instanceprofile-path
iamipPath :: Lens' IAMInstanceProfile (Maybe (Val Text))
iamipPath = lens _iAMInstanceProfilePath (\s a -> s { _iAMInstanceProfilePath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html#cfn-iam-instanceprofile-roles
iamipRoles :: Lens' IAMInstanceProfile [Val Text]
iamipRoles = lens _iAMInstanceProfileRoles (\s a -> s { _iAMInstanceProfileRoles = a })
