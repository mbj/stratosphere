{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html

module Stratosphere.ResourceProperties.CognitoUserPoolAdminCreateUserConfig where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CognitoUserPoolInviteMessageTemplate

-- | Full data type definition for CognitoUserPoolAdminCreateUserConfig. See
-- 'cognitoUserPoolAdminCreateUserConfig' for a more convenient constructor.
data CognitoUserPoolAdminCreateUserConfig =
  CognitoUserPoolAdminCreateUserConfig
  { _cognitoUserPoolAdminCreateUserConfigAllowAdminCreateUserOnly :: Maybe (Val Bool')
  , _cognitoUserPoolAdminCreateUserConfigInviteMessageTemplate :: Maybe CognitoUserPoolInviteMessageTemplate
  , _cognitoUserPoolAdminCreateUserConfigUnusedAccountValidityDays :: Maybe (Val Double')
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolAdminCreateUserConfig where
  toJSON CognitoUserPoolAdminCreateUserConfig{..} =
    object $
    catMaybes
    [ ("AllowAdminCreateUserOnly" .=) <$> _cognitoUserPoolAdminCreateUserConfigAllowAdminCreateUserOnly
    , ("InviteMessageTemplate" .=) <$> _cognitoUserPoolAdminCreateUserConfigInviteMessageTemplate
    , ("UnusedAccountValidityDays" .=) <$> _cognitoUserPoolAdminCreateUserConfigUnusedAccountValidityDays
    ]

instance FromJSON CognitoUserPoolAdminCreateUserConfig where
  parseJSON (Object obj) =
    CognitoUserPoolAdminCreateUserConfig <$>
      obj .:? "AllowAdminCreateUserOnly" <*>
      obj .:? "InviteMessageTemplate" <*>
      obj .:? "UnusedAccountValidityDays"
  parseJSON _ = mempty

-- | Constructor for 'CognitoUserPoolAdminCreateUserConfig' containing
-- required fields as arguments.
cognitoUserPoolAdminCreateUserConfig
  :: CognitoUserPoolAdminCreateUserConfig
cognitoUserPoolAdminCreateUserConfig  =
  CognitoUserPoolAdminCreateUserConfig
  { _cognitoUserPoolAdminCreateUserConfigAllowAdminCreateUserOnly = Nothing
  , _cognitoUserPoolAdminCreateUserConfigInviteMessageTemplate = Nothing
  , _cognitoUserPoolAdminCreateUserConfigUnusedAccountValidityDays = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html#cfn-cognito-userpool-admincreateuserconfig-allowadmincreateuseronly
cupacucAllowAdminCreateUserOnly :: Lens' CognitoUserPoolAdminCreateUserConfig (Maybe (Val Bool'))
cupacucAllowAdminCreateUserOnly = lens _cognitoUserPoolAdminCreateUserConfigAllowAdminCreateUserOnly (\s a -> s { _cognitoUserPoolAdminCreateUserConfigAllowAdminCreateUserOnly = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html#cfn-cognito-userpool-admincreateuserconfig-invitemessagetemplate
cupacucInviteMessageTemplate :: Lens' CognitoUserPoolAdminCreateUserConfig (Maybe CognitoUserPoolInviteMessageTemplate)
cupacucInviteMessageTemplate = lens _cognitoUserPoolAdminCreateUserConfigInviteMessageTemplate (\s a -> s { _cognitoUserPoolAdminCreateUserConfigInviteMessageTemplate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html#cfn-cognito-userpool-admincreateuserconfig-unusedaccountvaliditydays
cupacucUnusedAccountValidityDays :: Lens' CognitoUserPoolAdminCreateUserConfig (Maybe (Val Double'))
cupacucUnusedAccountValidityDays = lens _cognitoUserPoolAdminCreateUserConfigUnusedAccountValidityDays (\s a -> s { _cognitoUserPoolAdminCreateUserConfigUnusedAccountValidityDays = a })
