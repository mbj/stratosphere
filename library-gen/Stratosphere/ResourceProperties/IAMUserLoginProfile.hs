{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user-loginprofile.html

module Stratosphere.ResourceProperties.IAMUserLoginProfile where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for IAMUserLoginProfile. See
-- 'iamUserLoginProfile' for a more convenient constructor.
data IAMUserLoginProfile =
  IAMUserLoginProfile
  { _iAMUserLoginProfilePassword :: Val Text
  , _iAMUserLoginProfilePasswordResetRequired :: Maybe (Val Bool')
  } deriving (Show, Eq)

instance ToJSON IAMUserLoginProfile where
  toJSON IAMUserLoginProfile{..} =
    object $
    catMaybes
    [ Just ("Password" .= _iAMUserLoginProfilePassword)
    , ("PasswordResetRequired" .=) <$> _iAMUserLoginProfilePasswordResetRequired
    ]

instance FromJSON IAMUserLoginProfile where
  parseJSON (Object obj) =
    IAMUserLoginProfile <$>
      obj .: "Password" <*>
      obj .:? "PasswordResetRequired"
  parseJSON _ = mempty

-- | Constructor for 'IAMUserLoginProfile' containing required fields as
-- arguments.
iamUserLoginProfile
  :: Val Text -- ^ 'iamulpPassword'
  -> IAMUserLoginProfile
iamUserLoginProfile passwordarg =
  IAMUserLoginProfile
  { _iAMUserLoginProfilePassword = passwordarg
  , _iAMUserLoginProfilePasswordResetRequired = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user-loginprofile.html#cfn-iam-user-loginprofile-password
iamulpPassword :: Lens' IAMUserLoginProfile (Val Text)
iamulpPassword = lens _iAMUserLoginProfilePassword (\s a -> s { _iAMUserLoginProfilePassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user-loginprofile.html#cfn-iam-user-loginprofile-passwordresetrequired
iamulpPasswordResetRequired :: Lens' IAMUserLoginProfile (Maybe (Val Bool'))
iamulpPasswordResetRequired = lens _iAMUserLoginProfilePasswordResetRequired (\s a -> s { _iAMUserLoginProfilePasswordResetRequired = a })
