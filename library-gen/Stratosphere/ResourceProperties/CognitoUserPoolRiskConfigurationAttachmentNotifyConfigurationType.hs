
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html

module Stratosphere.ResourceProperties.CognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationType where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CognitoUserPoolRiskConfigurationAttachmentNotifyEmailType

-- | Full data type definition for
-- CognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationType. See
-- 'cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationType' for a
-- more convenient constructor.
data CognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationType =
  CognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationType
  { _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeBlockEmail :: Maybe CognitoUserPoolRiskConfigurationAttachmentNotifyEmailType
  , _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeFrom :: Maybe (Val Text)
  , _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeMfaEmail :: Maybe CognitoUserPoolRiskConfigurationAttachmentNotifyEmailType
  , _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeNoActionEmail :: Maybe CognitoUserPoolRiskConfigurationAttachmentNotifyEmailType
  , _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeReplyTo :: Maybe (Val Text)
  , _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeSourceArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationType where
  toJSON CognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationType{..} =
    object $
    catMaybes
    [ fmap (("BlockEmail",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeBlockEmail
    , fmap (("From",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeFrom
    , fmap (("MfaEmail",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeMfaEmail
    , fmap (("NoActionEmail",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeNoActionEmail
    , fmap (("ReplyTo",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeReplyTo
    , (Just . ("SourceArn",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeSourceArn
    ]

-- | Constructor for
-- 'CognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationType'
-- containing required fields as arguments.
cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationType
  :: Val Text -- ^ 'cuprcanctSourceArn'
  -> CognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationType
cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationType sourceArnarg =
  CognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationType
  { _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeBlockEmail = Nothing
  , _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeFrom = Nothing
  , _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeMfaEmail = Nothing
  , _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeNoActionEmail = Nothing
  , _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeReplyTo = Nothing
  , _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeSourceArn = sourceArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-blockemail
cuprcanctBlockEmail :: Lens' CognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationType (Maybe CognitoUserPoolRiskConfigurationAttachmentNotifyEmailType)
cuprcanctBlockEmail = lens _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeBlockEmail (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeBlockEmail = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-from
cuprcanctFrom :: Lens' CognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationType (Maybe (Val Text))
cuprcanctFrom = lens _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeFrom (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeFrom = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-mfaemail
cuprcanctMfaEmail :: Lens' CognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationType (Maybe CognitoUserPoolRiskConfigurationAttachmentNotifyEmailType)
cuprcanctMfaEmail = lens _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeMfaEmail (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeMfaEmail = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-noactionemail
cuprcanctNoActionEmail :: Lens' CognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationType (Maybe CognitoUserPoolRiskConfigurationAttachmentNotifyEmailType)
cuprcanctNoActionEmail = lens _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeNoActionEmail (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeNoActionEmail = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-replyto
cuprcanctReplyTo :: Lens' CognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationType (Maybe (Val Text))
cuprcanctReplyTo = lens _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeReplyTo (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeReplyTo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyconfigurationtype-sourcearn
cuprcanctSourceArn :: Lens' CognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationType (Val Text)
cuprcanctSourceArn = lens _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeSourceArn (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentNotifyConfigurationTypeSourceArn = a })
