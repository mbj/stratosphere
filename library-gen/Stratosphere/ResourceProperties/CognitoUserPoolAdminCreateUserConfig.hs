
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html

module Stratosphere.ResourceProperties.CognitoUserPoolAdminCreateUserConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CognitoUserPoolInviteMessageTemplate

-- | Full data type definition for CognitoUserPoolAdminCreateUserConfig. See
-- 'cognitoUserPoolAdminCreateUserConfig' for a more convenient constructor.
data CognitoUserPoolAdminCreateUserConfig =
  CognitoUserPoolAdminCreateUserConfig
  { _cognitoUserPoolAdminCreateUserConfigAllowAdminCreateUserOnly :: Maybe (Val Bool)
  , _cognitoUserPoolAdminCreateUserConfigInviteMessageTemplate :: Maybe CognitoUserPoolInviteMessageTemplate
  , _cognitoUserPoolAdminCreateUserConfigUnusedAccountValidityDays :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolAdminCreateUserConfig where
  toJSON CognitoUserPoolAdminCreateUserConfig{..} =
    object $
    catMaybes
    [ fmap (("AllowAdminCreateUserOnly",) . toJSON) _cognitoUserPoolAdminCreateUserConfigAllowAdminCreateUserOnly
    , fmap (("InviteMessageTemplate",) . toJSON) _cognitoUserPoolAdminCreateUserConfigInviteMessageTemplate
    , fmap (("UnusedAccountValidityDays",) . toJSON) _cognitoUserPoolAdminCreateUserConfigUnusedAccountValidityDays
    ]

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
cupacucAllowAdminCreateUserOnly :: Lens' CognitoUserPoolAdminCreateUserConfig (Maybe (Val Bool))
cupacucAllowAdminCreateUserOnly = lens _cognitoUserPoolAdminCreateUserConfigAllowAdminCreateUserOnly (\s a -> s { _cognitoUserPoolAdminCreateUserConfigAllowAdminCreateUserOnly = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html#cfn-cognito-userpool-admincreateuserconfig-invitemessagetemplate
cupacucInviteMessageTemplate :: Lens' CognitoUserPoolAdminCreateUserConfig (Maybe CognitoUserPoolInviteMessageTemplate)
cupacucInviteMessageTemplate = lens _cognitoUserPoolAdminCreateUserConfigInviteMessageTemplate (\s a -> s { _cognitoUserPoolAdminCreateUserConfigInviteMessageTemplate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-admincreateuserconfig.html#cfn-cognito-userpool-admincreateuserconfig-unusedaccountvaliditydays
cupacucUnusedAccountValidityDays :: Lens' CognitoUserPoolAdminCreateUserConfig (Maybe (Val Integer))
cupacucUnusedAccountValidityDays = lens _cognitoUserPoolAdminCreateUserConfigUnusedAccountValidityDays (\s a -> s { _cognitoUserPoolAdminCreateUserConfigUnusedAccountValidityDays = a })
