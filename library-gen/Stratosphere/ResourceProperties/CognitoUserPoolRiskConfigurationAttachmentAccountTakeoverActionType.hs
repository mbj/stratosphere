
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype.html

module Stratosphere.ResourceProperties.CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType. See
-- 'cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType' for
-- a more convenient constructor.
data CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType =
  CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType
  { _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionTypeEventAction :: Val Text
  , _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionTypeNotify :: Val Bool
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType where
  toJSON CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType{..} =
    object $
    catMaybes
    [ (Just . ("EventAction",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionTypeEventAction
    , (Just . ("Notify",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionTypeNotify
    ]

-- | Constructor for
-- 'CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType'
-- containing required fields as arguments.
cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType
  :: Val Text -- ^ 'cuprcaatatEventAction'
  -> Val Bool -- ^ 'cuprcaatatNotify'
  -> CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType
cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType eventActionarg notifyarg =
  CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType
  { _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionTypeEventAction = eventActionarg
  , _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionTypeNotify = notifyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype-eventaction
cuprcaatatEventAction :: Lens' CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType (Val Text)
cuprcaatatEventAction = lens _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionTypeEventAction (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionTypeEventAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractiontype-notify
cuprcaatatNotify :: Lens' CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType (Val Bool)
cuprcaatatNotify = lens _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionTypeNotify (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionTypeNotify = a })
