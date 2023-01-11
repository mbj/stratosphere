
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-accountrecoverysetting.html

module Stratosphere.ResourceProperties.CognitoUserPoolAccountRecoverySetting where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CognitoUserPoolRecoveryOption

-- | Full data type definition for CognitoUserPoolAccountRecoverySetting. See
-- 'cognitoUserPoolAccountRecoverySetting' for a more convenient
-- constructor.
data CognitoUserPoolAccountRecoverySetting =
  CognitoUserPoolAccountRecoverySetting
  { _cognitoUserPoolAccountRecoverySettingRecoveryMechanisms :: Maybe [CognitoUserPoolRecoveryOption]
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolAccountRecoverySetting where
  toJSON CognitoUserPoolAccountRecoverySetting{..} =
    object $
    catMaybes
    [ fmap (("RecoveryMechanisms",) . toJSON) _cognitoUserPoolAccountRecoverySettingRecoveryMechanisms
    ]

-- | Constructor for 'CognitoUserPoolAccountRecoverySetting' containing
-- required fields as arguments.
cognitoUserPoolAccountRecoverySetting
  :: CognitoUserPoolAccountRecoverySetting
cognitoUserPoolAccountRecoverySetting  =
  CognitoUserPoolAccountRecoverySetting
  { _cognitoUserPoolAccountRecoverySettingRecoveryMechanisms = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-accountrecoverysetting.html#cfn-cognito-userpool-accountrecoverysetting-recoverymechanisms
cuparsRecoveryMechanisms :: Lens' CognitoUserPoolAccountRecoverySetting (Maybe [CognitoUserPoolRecoveryOption])
cuparsRecoveryMechanisms = lens _cognitoUserPoolAccountRecoverySettingRecoveryMechanisms (\s a -> s { _cognitoUserPoolAccountRecoverySettingRecoveryMechanisms = a })
