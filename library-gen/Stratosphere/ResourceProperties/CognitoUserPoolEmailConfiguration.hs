{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-emailconfiguration.html

module Stratosphere.ResourceProperties.CognitoUserPoolEmailConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for CognitoUserPoolEmailConfiguration. See
-- 'cognitoUserPoolEmailConfiguration' for a more convenient constructor.
data CognitoUserPoolEmailConfiguration =
  CognitoUserPoolEmailConfiguration
  { _cognitoUserPoolEmailConfigurationConfigurationSet :: Maybe (Val Text)
  , _cognitoUserPoolEmailConfigurationEmailSendingAccount :: Maybe (Val Text)
  , _cognitoUserPoolEmailConfigurationFrom :: Maybe (Val Text)
  , _cognitoUserPoolEmailConfigurationReplyToEmailAddress :: Maybe (Val Text)
  , _cognitoUserPoolEmailConfigurationSourceArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolEmailConfiguration where
  toJSON CognitoUserPoolEmailConfiguration{..} =
    object $
    catMaybes
    [ fmap (("ConfigurationSet",) . toJSON) _cognitoUserPoolEmailConfigurationConfigurationSet
    , fmap (("EmailSendingAccount",) . toJSON) _cognitoUserPoolEmailConfigurationEmailSendingAccount
    , fmap (("From",) . toJSON) _cognitoUserPoolEmailConfigurationFrom
    , fmap (("ReplyToEmailAddress",) . toJSON) _cognitoUserPoolEmailConfigurationReplyToEmailAddress
    , fmap (("SourceArn",) . toJSON) _cognitoUserPoolEmailConfigurationSourceArn
    ]

-- | Constructor for 'CognitoUserPoolEmailConfiguration' containing required
-- fields as arguments.
cognitoUserPoolEmailConfiguration
  :: CognitoUserPoolEmailConfiguration
cognitoUserPoolEmailConfiguration  =
  CognitoUserPoolEmailConfiguration
  { _cognitoUserPoolEmailConfigurationConfigurationSet = Nothing
  , _cognitoUserPoolEmailConfigurationEmailSendingAccount = Nothing
  , _cognitoUserPoolEmailConfigurationFrom = Nothing
  , _cognitoUserPoolEmailConfigurationReplyToEmailAddress = Nothing
  , _cognitoUserPoolEmailConfigurationSourceArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-emailconfiguration.html#cfn-cognito-userpool-emailconfiguration-configurationset
cupecConfigurationSet :: Lens' CognitoUserPoolEmailConfiguration (Maybe (Val Text))
cupecConfigurationSet = lens _cognitoUserPoolEmailConfigurationConfigurationSet (\s a -> s { _cognitoUserPoolEmailConfigurationConfigurationSet = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-emailconfiguration.html#cfn-cognito-userpool-emailconfiguration-emailsendingaccount
cupecEmailSendingAccount :: Lens' CognitoUserPoolEmailConfiguration (Maybe (Val Text))
cupecEmailSendingAccount = lens _cognitoUserPoolEmailConfigurationEmailSendingAccount (\s a -> s { _cognitoUserPoolEmailConfigurationEmailSendingAccount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-emailconfiguration.html#cfn-cognito-userpool-emailconfiguration-from
cupecFrom :: Lens' CognitoUserPoolEmailConfiguration (Maybe (Val Text))
cupecFrom = lens _cognitoUserPoolEmailConfigurationFrom (\s a -> s { _cognitoUserPoolEmailConfigurationFrom = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-emailconfiguration.html#cfn-cognito-userpool-emailconfiguration-replytoemailaddress
cupecReplyToEmailAddress :: Lens' CognitoUserPoolEmailConfiguration (Maybe (Val Text))
cupecReplyToEmailAddress = lens _cognitoUserPoolEmailConfigurationReplyToEmailAddress (\s a -> s { _cognitoUserPoolEmailConfigurationReplyToEmailAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-emailconfiguration.html#cfn-cognito-userpool-emailconfiguration-sourcearn
cupecSourceArn :: Lens' CognitoUserPoolEmailConfiguration (Maybe (Val Text))
cupecSourceArn = lens _cognitoUserPoolEmailConfigurationSourceArn (\s a -> s { _cognitoUserPoolEmailConfigurationSourceArn = a })
