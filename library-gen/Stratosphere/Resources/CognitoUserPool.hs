{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html

module Stratosphere.Resources.CognitoUserPool where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CognitoUserPoolAdminCreateUserConfig
import Stratosphere.ResourceProperties.CognitoUserPoolDeviceConfiguration
import Stratosphere.ResourceProperties.CognitoUserPoolEmailConfiguration
import Stratosphere.ResourceProperties.CognitoUserPoolLambdaConfig
import Stratosphere.ResourceProperties.CognitoUserPoolPolicies
import Stratosphere.ResourceProperties.CognitoUserPoolSchemaAttribute
import Stratosphere.ResourceProperties.CognitoUserPoolSmsConfiguration

-- | Full data type definition for CognitoUserPool. See 'cognitoUserPool' for
-- a more convenient constructor.
data CognitoUserPool =
  CognitoUserPool
  { _cognitoUserPoolAdminCreateUserConfig :: Maybe CognitoUserPoolAdminCreateUserConfig
  , _cognitoUserPoolAliasAttributes :: Maybe (ValList Text)
  , _cognitoUserPoolAutoVerifiedAttributes :: Maybe (ValList Text)
  , _cognitoUserPoolDeviceConfiguration :: Maybe CognitoUserPoolDeviceConfiguration
  , _cognitoUserPoolEmailConfiguration :: Maybe CognitoUserPoolEmailConfiguration
  , _cognitoUserPoolEmailVerificationMessage :: Maybe (Val Text)
  , _cognitoUserPoolEmailVerificationSubject :: Maybe (Val Text)
  , _cognitoUserPoolLambdaConfig :: Maybe CognitoUserPoolLambdaConfig
  , _cognitoUserPoolMfaConfiguration :: Maybe (Val Text)
  , _cognitoUserPoolPolicies :: Maybe CognitoUserPoolPolicies
  , _cognitoUserPoolSchema :: Maybe [CognitoUserPoolSchemaAttribute]
  , _cognitoUserPoolSmsAuthenticationMessage :: Maybe (Val Text)
  , _cognitoUserPoolSmsConfiguration :: Maybe CognitoUserPoolSmsConfiguration
  , _cognitoUserPoolSmsVerificationMessage :: Maybe (Val Text)
  , _cognitoUserPoolUserPoolName :: Maybe (Val Text)
  , _cognitoUserPoolUserPoolTags :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON CognitoUserPool where
  toJSON CognitoUserPool{..} =
    object $
    catMaybes
    [ ("AdminCreateUserConfig" .=) <$> _cognitoUserPoolAdminCreateUserConfig
    , ("AliasAttributes" .=) <$> _cognitoUserPoolAliasAttributes
    , ("AutoVerifiedAttributes" .=) <$> _cognitoUserPoolAutoVerifiedAttributes
    , ("DeviceConfiguration" .=) <$> _cognitoUserPoolDeviceConfiguration
    , ("EmailConfiguration" .=) <$> _cognitoUserPoolEmailConfiguration
    , ("EmailVerificationMessage" .=) <$> _cognitoUserPoolEmailVerificationMessage
    , ("EmailVerificationSubject" .=) <$> _cognitoUserPoolEmailVerificationSubject
    , ("LambdaConfig" .=) <$> _cognitoUserPoolLambdaConfig
    , ("MfaConfiguration" .=) <$> _cognitoUserPoolMfaConfiguration
    , ("Policies" .=) <$> _cognitoUserPoolPolicies
    , ("Schema" .=) <$> _cognitoUserPoolSchema
    , ("SmsAuthenticationMessage" .=) <$> _cognitoUserPoolSmsAuthenticationMessage
    , ("SmsConfiguration" .=) <$> _cognitoUserPoolSmsConfiguration
    , ("SmsVerificationMessage" .=) <$> _cognitoUserPoolSmsVerificationMessage
    , ("UserPoolName" .=) <$> _cognitoUserPoolUserPoolName
    , ("UserPoolTags" .=) <$> _cognitoUserPoolUserPoolTags
    ]

instance FromJSON CognitoUserPool where
  parseJSON (Object obj) =
    CognitoUserPool <$>
      obj .:? "AdminCreateUserConfig" <*>
      obj .:? "AliasAttributes" <*>
      obj .:? "AutoVerifiedAttributes" <*>
      obj .:? "DeviceConfiguration" <*>
      obj .:? "EmailConfiguration" <*>
      obj .:? "EmailVerificationMessage" <*>
      obj .:? "EmailVerificationSubject" <*>
      obj .:? "LambdaConfig" <*>
      obj .:? "MfaConfiguration" <*>
      obj .:? "Policies" <*>
      obj .:? "Schema" <*>
      obj .:? "SmsAuthenticationMessage" <*>
      obj .:? "SmsConfiguration" <*>
      obj .:? "SmsVerificationMessage" <*>
      obj .:? "UserPoolName" <*>
      obj .:? "UserPoolTags"
  parseJSON _ = mempty

-- | Constructor for 'CognitoUserPool' containing required fields as
-- arguments.
cognitoUserPool
  :: CognitoUserPool
cognitoUserPool  =
  CognitoUserPool
  { _cognitoUserPoolAdminCreateUserConfig = Nothing
  , _cognitoUserPoolAliasAttributes = Nothing
  , _cognitoUserPoolAutoVerifiedAttributes = Nothing
  , _cognitoUserPoolDeviceConfiguration = Nothing
  , _cognitoUserPoolEmailConfiguration = Nothing
  , _cognitoUserPoolEmailVerificationMessage = Nothing
  , _cognitoUserPoolEmailVerificationSubject = Nothing
  , _cognitoUserPoolLambdaConfig = Nothing
  , _cognitoUserPoolMfaConfiguration = Nothing
  , _cognitoUserPoolPolicies = Nothing
  , _cognitoUserPoolSchema = Nothing
  , _cognitoUserPoolSmsAuthenticationMessage = Nothing
  , _cognitoUserPoolSmsConfiguration = Nothing
  , _cognitoUserPoolSmsVerificationMessage = Nothing
  , _cognitoUserPoolUserPoolName = Nothing
  , _cognitoUserPoolUserPoolTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-admincreateuserconfig
cupAdminCreateUserConfig :: Lens' CognitoUserPool (Maybe CognitoUserPoolAdminCreateUserConfig)
cupAdminCreateUserConfig = lens _cognitoUserPoolAdminCreateUserConfig (\s a -> s { _cognitoUserPoolAdminCreateUserConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-aliasattributes
cupAliasAttributes :: Lens' CognitoUserPool (Maybe (ValList Text))
cupAliasAttributes = lens _cognitoUserPoolAliasAttributes (\s a -> s { _cognitoUserPoolAliasAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-autoverifiedattributes
cupAutoVerifiedAttributes :: Lens' CognitoUserPool (Maybe (ValList Text))
cupAutoVerifiedAttributes = lens _cognitoUserPoolAutoVerifiedAttributes (\s a -> s { _cognitoUserPoolAutoVerifiedAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-deviceconfiguration
cupDeviceConfiguration :: Lens' CognitoUserPool (Maybe CognitoUserPoolDeviceConfiguration)
cupDeviceConfiguration = lens _cognitoUserPoolDeviceConfiguration (\s a -> s { _cognitoUserPoolDeviceConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-emailconfiguration
cupEmailConfiguration :: Lens' CognitoUserPool (Maybe CognitoUserPoolEmailConfiguration)
cupEmailConfiguration = lens _cognitoUserPoolEmailConfiguration (\s a -> s { _cognitoUserPoolEmailConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-emailverificationmessage
cupEmailVerificationMessage :: Lens' CognitoUserPool (Maybe (Val Text))
cupEmailVerificationMessage = lens _cognitoUserPoolEmailVerificationMessage (\s a -> s { _cognitoUserPoolEmailVerificationMessage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-emailverificationsubject
cupEmailVerificationSubject :: Lens' CognitoUserPool (Maybe (Val Text))
cupEmailVerificationSubject = lens _cognitoUserPoolEmailVerificationSubject (\s a -> s { _cognitoUserPoolEmailVerificationSubject = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-lambdaconfig
cupLambdaConfig :: Lens' CognitoUserPool (Maybe CognitoUserPoolLambdaConfig)
cupLambdaConfig = lens _cognitoUserPoolLambdaConfig (\s a -> s { _cognitoUserPoolLambdaConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-mfaconfiguration
cupMfaConfiguration :: Lens' CognitoUserPool (Maybe (Val Text))
cupMfaConfiguration = lens _cognitoUserPoolMfaConfiguration (\s a -> s { _cognitoUserPoolMfaConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-policies
cupPolicies :: Lens' CognitoUserPool (Maybe CognitoUserPoolPolicies)
cupPolicies = lens _cognitoUserPoolPolicies (\s a -> s { _cognitoUserPoolPolicies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-schema
cupSchema :: Lens' CognitoUserPool (Maybe [CognitoUserPoolSchemaAttribute])
cupSchema = lens _cognitoUserPoolSchema (\s a -> s { _cognitoUserPoolSchema = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-smsauthenticationmessage
cupSmsAuthenticationMessage :: Lens' CognitoUserPool (Maybe (Val Text))
cupSmsAuthenticationMessage = lens _cognitoUserPoolSmsAuthenticationMessage (\s a -> s { _cognitoUserPoolSmsAuthenticationMessage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-smsconfiguration
cupSmsConfiguration :: Lens' CognitoUserPool (Maybe CognitoUserPoolSmsConfiguration)
cupSmsConfiguration = lens _cognitoUserPoolSmsConfiguration (\s a -> s { _cognitoUserPoolSmsConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-smsverificationmessage
cupSmsVerificationMessage :: Lens' CognitoUserPool (Maybe (Val Text))
cupSmsVerificationMessage = lens _cognitoUserPoolSmsVerificationMessage (\s a -> s { _cognitoUserPoolSmsVerificationMessage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-userpoolname
cupUserPoolName :: Lens' CognitoUserPool (Maybe (Val Text))
cupUserPoolName = lens _cognitoUserPoolUserPoolName (\s a -> s { _cognitoUserPoolUserPoolName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-userpooltags
cupUserPoolTags :: Lens' CognitoUserPool (Maybe Object)
cupUserPoolTags = lens _cognitoUserPoolUserPoolTags (\s a -> s { _cognitoUserPoolUserPoolTags = a })
