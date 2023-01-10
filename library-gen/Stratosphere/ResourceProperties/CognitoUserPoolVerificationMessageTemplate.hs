
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html

module Stratosphere.ResourceProperties.CognitoUserPoolVerificationMessageTemplate where

import Stratosphere.ResourceImports


-- | Full data type definition for CognitoUserPoolVerificationMessageTemplate.
-- See 'cognitoUserPoolVerificationMessageTemplate' for a more convenient
-- constructor.
data CognitoUserPoolVerificationMessageTemplate =
  CognitoUserPoolVerificationMessageTemplate
  { _cognitoUserPoolVerificationMessageTemplateDefaultEmailOption :: Maybe (Val Text)
  , _cognitoUserPoolVerificationMessageTemplateEmailMessage :: Maybe (Val Text)
  , _cognitoUserPoolVerificationMessageTemplateEmailMessageByLink :: Maybe (Val Text)
  , _cognitoUserPoolVerificationMessageTemplateEmailSubject :: Maybe (Val Text)
  , _cognitoUserPoolVerificationMessageTemplateEmailSubjectByLink :: Maybe (Val Text)
  , _cognitoUserPoolVerificationMessageTemplateSmsMessage :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolVerificationMessageTemplate where
  toJSON CognitoUserPoolVerificationMessageTemplate{..} =
    object $
    catMaybes
    [ fmap (("DefaultEmailOption",) . toJSON) _cognitoUserPoolVerificationMessageTemplateDefaultEmailOption
    , fmap (("EmailMessage",) . toJSON) _cognitoUserPoolVerificationMessageTemplateEmailMessage
    , fmap (("EmailMessageByLink",) . toJSON) _cognitoUserPoolVerificationMessageTemplateEmailMessageByLink
    , fmap (("EmailSubject",) . toJSON) _cognitoUserPoolVerificationMessageTemplateEmailSubject
    , fmap (("EmailSubjectByLink",) . toJSON) _cognitoUserPoolVerificationMessageTemplateEmailSubjectByLink
    , fmap (("SmsMessage",) . toJSON) _cognitoUserPoolVerificationMessageTemplateSmsMessage
    ]

-- | Constructor for 'CognitoUserPoolVerificationMessageTemplate' containing
-- required fields as arguments.
cognitoUserPoolVerificationMessageTemplate
  :: CognitoUserPoolVerificationMessageTemplate
cognitoUserPoolVerificationMessageTemplate  =
  CognitoUserPoolVerificationMessageTemplate
  { _cognitoUserPoolVerificationMessageTemplateDefaultEmailOption = Nothing
  , _cognitoUserPoolVerificationMessageTemplateEmailMessage = Nothing
  , _cognitoUserPoolVerificationMessageTemplateEmailMessageByLink = Nothing
  , _cognitoUserPoolVerificationMessageTemplateEmailSubject = Nothing
  , _cognitoUserPoolVerificationMessageTemplateEmailSubjectByLink = Nothing
  , _cognitoUserPoolVerificationMessageTemplateSmsMessage = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html#cfn-cognito-userpool-verificationmessagetemplate-defaultemailoption
cupvmtDefaultEmailOption :: Lens' CognitoUserPoolVerificationMessageTemplate (Maybe (Val Text))
cupvmtDefaultEmailOption = lens _cognitoUserPoolVerificationMessageTemplateDefaultEmailOption (\s a -> s { _cognitoUserPoolVerificationMessageTemplateDefaultEmailOption = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html#cfn-cognito-userpool-verificationmessagetemplate-emailmessage
cupvmtEmailMessage :: Lens' CognitoUserPoolVerificationMessageTemplate (Maybe (Val Text))
cupvmtEmailMessage = lens _cognitoUserPoolVerificationMessageTemplateEmailMessage (\s a -> s { _cognitoUserPoolVerificationMessageTemplateEmailMessage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html#cfn-cognito-userpool-verificationmessagetemplate-emailmessagebylink
cupvmtEmailMessageByLink :: Lens' CognitoUserPoolVerificationMessageTemplate (Maybe (Val Text))
cupvmtEmailMessageByLink = lens _cognitoUserPoolVerificationMessageTemplateEmailMessageByLink (\s a -> s { _cognitoUserPoolVerificationMessageTemplateEmailMessageByLink = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html#cfn-cognito-userpool-verificationmessagetemplate-emailsubject
cupvmtEmailSubject :: Lens' CognitoUserPoolVerificationMessageTemplate (Maybe (Val Text))
cupvmtEmailSubject = lens _cognitoUserPoolVerificationMessageTemplateEmailSubject (\s a -> s { _cognitoUserPoolVerificationMessageTemplateEmailSubject = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html#cfn-cognito-userpool-verificationmessagetemplate-emailsubjectbylink
cupvmtEmailSubjectByLink :: Lens' CognitoUserPoolVerificationMessageTemplate (Maybe (Val Text))
cupvmtEmailSubjectByLink = lens _cognitoUserPoolVerificationMessageTemplateEmailSubjectByLink (\s a -> s { _cognitoUserPoolVerificationMessageTemplateEmailSubjectByLink = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html#cfn-cognito-userpool-verificationmessagetemplate-smsmessage
cupvmtSmsMessage :: Lens' CognitoUserPoolVerificationMessageTemplate (Maybe (Val Text))
cupvmtSmsMessage = lens _cognitoUserPoolVerificationMessageTemplateSmsMessage (\s a -> s { _cognitoUserPoolVerificationMessageTemplateSmsMessage = a })
