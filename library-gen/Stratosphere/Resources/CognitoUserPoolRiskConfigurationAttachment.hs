{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolriskconfigurationattachment.html

module Stratosphere.Resources.CognitoUserPoolRiskConfigurationAttachment where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverRiskConfigurationType
import Stratosphere.ResourceProperties.CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationType
import Stratosphere.ResourceProperties.CognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationType

-- | Full data type definition for CognitoUserPoolRiskConfigurationAttachment.
-- See 'cognitoUserPoolRiskConfigurationAttachment' for a more convenient
-- constructor.
data CognitoUserPoolRiskConfigurationAttachment =
  CognitoUserPoolRiskConfigurationAttachment
  { _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverRiskConfiguration :: Maybe CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverRiskConfigurationType
  , _cognitoUserPoolRiskConfigurationAttachmentClientId :: Val Text
  , _cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfiguration :: Maybe CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationType
  , _cognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfiguration :: Maybe CognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationType
  , _cognitoUserPoolRiskConfigurationAttachmentUserPoolId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties CognitoUserPoolRiskConfigurationAttachment where
  toResourceProperties CognitoUserPoolRiskConfigurationAttachment{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Cognito::UserPoolRiskConfigurationAttachment"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AccountTakeoverRiskConfiguration",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverRiskConfiguration
        , (Just . ("ClientId",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentClientId
        , fmap (("CompromisedCredentialsRiskConfiguration",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfiguration
        , fmap (("RiskExceptionConfiguration",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfiguration
        , (Just . ("UserPoolId",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentUserPoolId
        ]
    }

-- | Constructor for 'CognitoUserPoolRiskConfigurationAttachment' containing
-- required fields as arguments.
cognitoUserPoolRiskConfigurationAttachment
  :: Val Text -- ^ 'cuprcaClientId'
  -> Val Text -- ^ 'cuprcaUserPoolId'
  -> CognitoUserPoolRiskConfigurationAttachment
cognitoUserPoolRiskConfigurationAttachment clientIdarg userPoolIdarg =
  CognitoUserPoolRiskConfigurationAttachment
  { _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverRiskConfiguration = Nothing
  , _cognitoUserPoolRiskConfigurationAttachmentClientId = clientIdarg
  , _cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfiguration = Nothing
  , _cognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfiguration = Nothing
  , _cognitoUserPoolRiskConfigurationAttachmentUserPoolId = userPoolIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolriskconfigurationattachment.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoverriskconfiguration
cuprcaAccountTakeoverRiskConfiguration :: Lens' CognitoUserPoolRiskConfigurationAttachment (Maybe CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverRiskConfigurationType)
cuprcaAccountTakeoverRiskConfiguration = lens _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverRiskConfiguration (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverRiskConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolriskconfigurationattachment.html#cfn-cognito-userpoolriskconfigurationattachment-clientid
cuprcaClientId :: Lens' CognitoUserPoolRiskConfigurationAttachment (Val Text)
cuprcaClientId = lens _cognitoUserPoolRiskConfigurationAttachmentClientId (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentClientId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolriskconfigurationattachment.html#cfn-cognito-userpoolriskconfigurationattachment-compromisedcredentialsriskconfiguration
cuprcaCompromisedCredentialsRiskConfiguration :: Lens' CognitoUserPoolRiskConfigurationAttachment (Maybe CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfigurationType)
cuprcaCompromisedCredentialsRiskConfiguration = lens _cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfiguration (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsRiskConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolriskconfigurationattachment.html#cfn-cognito-userpoolriskconfigurationattachment-riskexceptionconfiguration
cuprcaRiskExceptionConfiguration :: Lens' CognitoUserPoolRiskConfigurationAttachment (Maybe CognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationType)
cuprcaRiskExceptionConfiguration = lens _cognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfiguration (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolriskconfigurationattachment.html#cfn-cognito-userpoolriskconfigurationattachment-userpoolid
cuprcaUserPoolId :: Lens' CognitoUserPoolRiskConfigurationAttachment (Val Text)
cuprcaUserPoolId = lens _cognitoUserPoolRiskConfigurationAttachmentUserPoolId (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentUserPoolId = a })
