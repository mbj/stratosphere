{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-invitemessagetemplate.html

module Stratosphere.ResourceProperties.CognitoUserPoolInviteMessageTemplate where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CognitoUserPoolInviteMessageTemplate. See
-- 'cognitoUserPoolInviteMessageTemplate' for a more convenient constructor.
data CognitoUserPoolInviteMessageTemplate =
  CognitoUserPoolInviteMessageTemplate
  { _cognitoUserPoolInviteMessageTemplateEmailMessage :: Maybe (Val Text)
  , _cognitoUserPoolInviteMessageTemplateEmailSubject :: Maybe (Val Text)
  , _cognitoUserPoolInviteMessageTemplateSMSMessage :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolInviteMessageTemplate where
  toJSON CognitoUserPoolInviteMessageTemplate{..} =
    object $
    catMaybes
    [ fmap (("EmailMessage",) . toJSON) _cognitoUserPoolInviteMessageTemplateEmailMessage
    , fmap (("EmailSubject",) . toJSON) _cognitoUserPoolInviteMessageTemplateEmailSubject
    , fmap (("SMSMessage",) . toJSON) _cognitoUserPoolInviteMessageTemplateSMSMessage
    ]

instance FromJSON CognitoUserPoolInviteMessageTemplate where
  parseJSON (Object obj) =
    CognitoUserPoolInviteMessageTemplate <$>
      (obj .:? "EmailMessage") <*>
      (obj .:? "EmailSubject") <*>
      (obj .:? "SMSMessage")
  parseJSON _ = mempty

-- | Constructor for 'CognitoUserPoolInviteMessageTemplate' containing
-- required fields as arguments.
cognitoUserPoolInviteMessageTemplate
  :: CognitoUserPoolInviteMessageTemplate
cognitoUserPoolInviteMessageTemplate  =
  CognitoUserPoolInviteMessageTemplate
  { _cognitoUserPoolInviteMessageTemplateEmailMessage = Nothing
  , _cognitoUserPoolInviteMessageTemplateEmailSubject = Nothing
  , _cognitoUserPoolInviteMessageTemplateSMSMessage = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-invitemessagetemplate.html#cfn-cognito-userpool-invitemessagetemplate-emailmessage
cupimtEmailMessage :: Lens' CognitoUserPoolInviteMessageTemplate (Maybe (Val Text))
cupimtEmailMessage = lens _cognitoUserPoolInviteMessageTemplateEmailMessage (\s a -> s { _cognitoUserPoolInviteMessageTemplateEmailMessage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-invitemessagetemplate.html#cfn-cognito-userpool-invitemessagetemplate-emailsubject
cupimtEmailSubject :: Lens' CognitoUserPoolInviteMessageTemplate (Maybe (Val Text))
cupimtEmailSubject = lens _cognitoUserPoolInviteMessageTemplateEmailSubject (\s a -> s { _cognitoUserPoolInviteMessageTemplateEmailSubject = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-invitemessagetemplate.html#cfn-cognito-userpool-invitemessagetemplate-smsmessage
cupimtSMSMessage :: Lens' CognitoUserPoolInviteMessageTemplate (Maybe (Val Text))
cupimtSMSMessage = lens _cognitoUserPoolInviteMessageTemplateSMSMessage (\s a -> s { _cognitoUserPoolInviteMessageTemplateSMSMessage = a })
