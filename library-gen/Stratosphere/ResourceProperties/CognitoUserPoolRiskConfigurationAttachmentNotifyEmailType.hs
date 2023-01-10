
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyemailtype.html

module Stratosphere.ResourceProperties.CognitoUserPoolRiskConfigurationAttachmentNotifyEmailType where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- CognitoUserPoolRiskConfigurationAttachmentNotifyEmailType. See
-- 'cognitoUserPoolRiskConfigurationAttachmentNotifyEmailType' for a more
-- convenient constructor.
data CognitoUserPoolRiskConfigurationAttachmentNotifyEmailType =
  CognitoUserPoolRiskConfigurationAttachmentNotifyEmailType
  { _cognitoUserPoolRiskConfigurationAttachmentNotifyEmailTypeHtmlBody :: Maybe (Val Text)
  , _cognitoUserPoolRiskConfigurationAttachmentNotifyEmailTypeSubject :: Val Text
  , _cognitoUserPoolRiskConfigurationAttachmentNotifyEmailTypeTextBody :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolRiskConfigurationAttachmentNotifyEmailType where
  toJSON CognitoUserPoolRiskConfigurationAttachmentNotifyEmailType{..} =
    object $
    catMaybes
    [ fmap (("HtmlBody",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentNotifyEmailTypeHtmlBody
    , (Just . ("Subject",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentNotifyEmailTypeSubject
    , fmap (("TextBody",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentNotifyEmailTypeTextBody
    ]

-- | Constructor for
-- 'CognitoUserPoolRiskConfigurationAttachmentNotifyEmailType' containing
-- required fields as arguments.
cognitoUserPoolRiskConfigurationAttachmentNotifyEmailType
  :: Val Text -- ^ 'cuprcanetSubject'
  -> CognitoUserPoolRiskConfigurationAttachmentNotifyEmailType
cognitoUserPoolRiskConfigurationAttachmentNotifyEmailType subjectarg =
  CognitoUserPoolRiskConfigurationAttachmentNotifyEmailType
  { _cognitoUserPoolRiskConfigurationAttachmentNotifyEmailTypeHtmlBody = Nothing
  , _cognitoUserPoolRiskConfigurationAttachmentNotifyEmailTypeSubject = subjectarg
  , _cognitoUserPoolRiskConfigurationAttachmentNotifyEmailTypeTextBody = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyemailtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyemailtype-htmlbody
cuprcanetHtmlBody :: Lens' CognitoUserPoolRiskConfigurationAttachmentNotifyEmailType (Maybe (Val Text))
cuprcanetHtmlBody = lens _cognitoUserPoolRiskConfigurationAttachmentNotifyEmailTypeHtmlBody (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentNotifyEmailTypeHtmlBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyemailtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyemailtype-subject
cuprcanetSubject :: Lens' CognitoUserPoolRiskConfigurationAttachmentNotifyEmailType (Val Text)
cuprcanetSubject = lens _cognitoUserPoolRiskConfigurationAttachmentNotifyEmailTypeSubject (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentNotifyEmailTypeSubject = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyemailtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyemailtype-textbody
cuprcanetTextBody :: Lens' CognitoUserPoolRiskConfigurationAttachmentNotifyEmailType (Maybe (Val Text))
cuprcanetTextBody = lens _cognitoUserPoolRiskConfigurationAttachmentNotifyEmailTypeTextBody (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentNotifyEmailTypeTextBody = a })
