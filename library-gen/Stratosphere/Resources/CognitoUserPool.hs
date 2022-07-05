{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html

module Stratosphere.Resources.CognitoUserPool where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CognitoUserPoolAccountRecoverySetting
import Stratosphere.ResourceProperties.CognitoUserPoolAdminCreateUserConfig
import Stratosphere.ResourceProperties.CognitoUserPoolDeviceConfiguration
import Stratosphere.ResourceProperties.CognitoUserPoolEmailConfiguration
import Stratosphere.ResourceProperties.CognitoUserPoolLambdaConfig
import Stratosphere.ResourceProperties.CognitoUserPoolPolicies
import Stratosphere.ResourceProperties.CognitoUserPoolSchemaAttribute
import Stratosphere.ResourceProperties.CognitoUserPoolSmsConfiguration
import Stratosphere.ResourceProperties.CognitoUserPoolUserPoolAddOns
import Stratosphere.ResourceProperties.CognitoUserPoolUsernameConfiguration
import Stratosphere.ResourceProperties.CognitoUserPoolVerificationMessageTemplate

-- | Full data type definition for CognitoUserPool. See 'cognitoUserPool' for
-- a more convenient constructor.
data CognitoUserPool =
  CognitoUserPool
  { _cognitoUserPoolAccountRecoverySetting :: Maybe CognitoUserPoolAccountRecoverySetting
  , _cognitoUserPoolAdminCreateUserConfig :: Maybe CognitoUserPoolAdminCreateUserConfig
  , _cognitoUserPoolAliasAttributes :: Maybe (ValList Text)
  , _cognitoUserPoolAutoVerifiedAttributes :: Maybe (ValList Text)
  , _cognitoUserPoolDeviceConfiguration :: Maybe CognitoUserPoolDeviceConfiguration
  , _cognitoUserPoolEmailConfiguration :: Maybe CognitoUserPoolEmailConfiguration
  , _cognitoUserPoolEmailVerificationMessage :: Maybe (Val Text)
  , _cognitoUserPoolEmailVerificationSubject :: Maybe (Val Text)
  , _cognitoUserPoolEnabledMfas :: Maybe (ValList Text)
  , _cognitoUserPoolLambdaConfig :: Maybe CognitoUserPoolLambdaConfig
  , _cognitoUserPoolMfaConfiguration :: Maybe (Val Text)
  , _cognitoUserPoolPolicies :: Maybe CognitoUserPoolPolicies
  , _cognitoUserPoolSchema :: Maybe [CognitoUserPoolSchemaAttribute]
  , _cognitoUserPoolSmsAuthenticationMessage :: Maybe (Val Text)
  , _cognitoUserPoolSmsConfiguration :: Maybe CognitoUserPoolSmsConfiguration
  , _cognitoUserPoolSmsVerificationMessage :: Maybe (Val Text)
  , _cognitoUserPoolUserPoolAddOns :: Maybe CognitoUserPoolUserPoolAddOns
  , _cognitoUserPoolUserPoolName :: Maybe (Val Text)
  , _cognitoUserPoolUserPoolTags :: Maybe Object
  , _cognitoUserPoolUsernameAttributes :: Maybe (ValList Text)
  , _cognitoUserPoolUsernameConfiguration :: Maybe CognitoUserPoolUsernameConfiguration
  , _cognitoUserPoolVerificationMessageTemplate :: Maybe CognitoUserPoolVerificationMessageTemplate
  } deriving (Show, Eq)

instance ToResourceProperties CognitoUserPool where
  toResourceProperties CognitoUserPool{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Cognito::UserPool"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AccountRecoverySetting",) . toJSON) _cognitoUserPoolAccountRecoverySetting
        , fmap (("AdminCreateUserConfig",) . toJSON) _cognitoUserPoolAdminCreateUserConfig
        , fmap (("AliasAttributes",) . toJSON) _cognitoUserPoolAliasAttributes
        , fmap (("AutoVerifiedAttributes",) . toJSON) _cognitoUserPoolAutoVerifiedAttributes
        , fmap (("DeviceConfiguration",) . toJSON) _cognitoUserPoolDeviceConfiguration
        , fmap (("EmailConfiguration",) . toJSON) _cognitoUserPoolEmailConfiguration
        , fmap (("EmailVerificationMessage",) . toJSON) _cognitoUserPoolEmailVerificationMessage
        , fmap (("EmailVerificationSubject",) . toJSON) _cognitoUserPoolEmailVerificationSubject
        , fmap (("EnabledMfas",) . toJSON) _cognitoUserPoolEnabledMfas
        , fmap (("LambdaConfig",) . toJSON) _cognitoUserPoolLambdaConfig
        , fmap (("MfaConfiguration",) . toJSON) _cognitoUserPoolMfaConfiguration
        , fmap (("Policies",) . toJSON) _cognitoUserPoolPolicies
        , fmap (("Schema",) . toJSON) _cognitoUserPoolSchema
        , fmap (("SmsAuthenticationMessage",) . toJSON) _cognitoUserPoolSmsAuthenticationMessage
        , fmap (("SmsConfiguration",) . toJSON) _cognitoUserPoolSmsConfiguration
        , fmap (("SmsVerificationMessage",) . toJSON) _cognitoUserPoolSmsVerificationMessage
        , fmap (("UserPoolAddOns",) . toJSON) _cognitoUserPoolUserPoolAddOns
        , fmap (("UserPoolName",) . toJSON) _cognitoUserPoolUserPoolName
        , fmap (("UserPoolTags",) . toJSON) _cognitoUserPoolUserPoolTags
        , fmap (("UsernameAttributes",) . toJSON) _cognitoUserPoolUsernameAttributes
        , fmap (("UsernameConfiguration",) . toJSON) _cognitoUserPoolUsernameConfiguration
        , fmap (("VerificationMessageTemplate",) . toJSON) _cognitoUserPoolVerificationMessageTemplate
        ]
    }

-- | Constructor for 'CognitoUserPool' containing required fields as
-- arguments.
cognitoUserPool
  :: CognitoUserPool
cognitoUserPool  =
  CognitoUserPool
  { _cognitoUserPoolAccountRecoverySetting = Nothing
  , _cognitoUserPoolAdminCreateUserConfig = Nothing
  , _cognitoUserPoolAliasAttributes = Nothing
  , _cognitoUserPoolAutoVerifiedAttributes = Nothing
  , _cognitoUserPoolDeviceConfiguration = Nothing
  , _cognitoUserPoolEmailConfiguration = Nothing
  , _cognitoUserPoolEmailVerificationMessage = Nothing
  , _cognitoUserPoolEmailVerificationSubject = Nothing
  , _cognitoUserPoolEnabledMfas = Nothing
  , _cognitoUserPoolLambdaConfig = Nothing
  , _cognitoUserPoolMfaConfiguration = Nothing
  , _cognitoUserPoolPolicies = Nothing
  , _cognitoUserPoolSchema = Nothing
  , _cognitoUserPoolSmsAuthenticationMessage = Nothing
  , _cognitoUserPoolSmsConfiguration = Nothing
  , _cognitoUserPoolSmsVerificationMessage = Nothing
  , _cognitoUserPoolUserPoolAddOns = Nothing
  , _cognitoUserPoolUserPoolName = Nothing
  , _cognitoUserPoolUserPoolTags = Nothing
  , _cognitoUserPoolUsernameAttributes = Nothing
  , _cognitoUserPoolUsernameConfiguration = Nothing
  , _cognitoUserPoolVerificationMessageTemplate = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-accountrecoverysetting
cupAccountRecoverySetting :: Lens' CognitoUserPool (Maybe CognitoUserPoolAccountRecoverySetting)
cupAccountRecoverySetting = lens _cognitoUserPoolAccountRecoverySetting (\s a -> s { _cognitoUserPoolAccountRecoverySetting = a })

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-enabledmfas
cupEnabledMfas :: Lens' CognitoUserPool (Maybe (ValList Text))
cupEnabledMfas = lens _cognitoUserPoolEnabledMfas (\s a -> s { _cognitoUserPoolEnabledMfas = a })

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-userpooladdons
cupUserPoolAddOns :: Lens' CognitoUserPool (Maybe CognitoUserPoolUserPoolAddOns)
cupUserPoolAddOns = lens _cognitoUserPoolUserPoolAddOns (\s a -> s { _cognitoUserPoolUserPoolAddOns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-userpoolname
cupUserPoolName :: Lens' CognitoUserPool (Maybe (Val Text))
cupUserPoolName = lens _cognitoUserPoolUserPoolName (\s a -> s { _cognitoUserPoolUserPoolName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-userpooltags
cupUserPoolTags :: Lens' CognitoUserPool (Maybe Object)
cupUserPoolTags = lens _cognitoUserPoolUserPoolTags (\s a -> s { _cognitoUserPoolUserPoolTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-usernameattributes
cupUsernameAttributes :: Lens' CognitoUserPool (Maybe (ValList Text))
cupUsernameAttributes = lens _cognitoUserPoolUsernameAttributes (\s a -> s { _cognitoUserPoolUsernameAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-usernameconfiguration
cupUsernameConfiguration :: Lens' CognitoUserPool (Maybe CognitoUserPoolUsernameConfiguration)
cupUsernameConfiguration = lens _cognitoUserPoolUsernameConfiguration (\s a -> s { _cognitoUserPoolUsernameConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpool.html#cfn-cognito-userpool-verificationmessagetemplate
cupVerificationMessageTemplate :: Lens' CognitoUserPool (Maybe CognitoUserPoolVerificationMessageTemplate)
cupVerificationMessageTemplate = lens _cognitoUserPoolVerificationMessageTemplate (\s a -> s { _cognitoUserPoolVerificationMessageTemplate = a })
