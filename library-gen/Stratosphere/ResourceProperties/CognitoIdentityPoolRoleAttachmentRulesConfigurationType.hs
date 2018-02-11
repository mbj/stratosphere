{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rulesconfigurationtype.html

module Stratosphere.ResourceProperties.CognitoIdentityPoolRoleAttachmentRulesConfigurationType where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CognitoIdentityPoolRoleAttachmentMappingRule

-- | Full data type definition for
-- CognitoIdentityPoolRoleAttachmentRulesConfigurationType. See
-- 'cognitoIdentityPoolRoleAttachmentRulesConfigurationType' for a more
-- convenient constructor.
data CognitoIdentityPoolRoleAttachmentRulesConfigurationType =
  CognitoIdentityPoolRoleAttachmentRulesConfigurationType
  { _cognitoIdentityPoolRoleAttachmentRulesConfigurationTypeRules :: [CognitoIdentityPoolRoleAttachmentMappingRule]
  } deriving (Show, Eq)

instance ToJSON CognitoIdentityPoolRoleAttachmentRulesConfigurationType where
  toJSON CognitoIdentityPoolRoleAttachmentRulesConfigurationType{..} =
    object $
    catMaybes
    [ (Just . ("Rules",) . toJSON) _cognitoIdentityPoolRoleAttachmentRulesConfigurationTypeRules
    ]

instance FromJSON CognitoIdentityPoolRoleAttachmentRulesConfigurationType where
  parseJSON (Object obj) =
    CognitoIdentityPoolRoleAttachmentRulesConfigurationType <$>
      (obj .: "Rules")
  parseJSON _ = mempty

-- | Constructor for 'CognitoIdentityPoolRoleAttachmentRulesConfigurationType'
-- containing required fields as arguments.
cognitoIdentityPoolRoleAttachmentRulesConfigurationType
  :: [CognitoIdentityPoolRoleAttachmentMappingRule] -- ^ 'ciprarctRules'
  -> CognitoIdentityPoolRoleAttachmentRulesConfigurationType
cognitoIdentityPoolRoleAttachmentRulesConfigurationType rulesarg =
  CognitoIdentityPoolRoleAttachmentRulesConfigurationType
  { _cognitoIdentityPoolRoleAttachmentRulesConfigurationTypeRules = rulesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-rulesconfigurationtype.html#cfn-cognito-identitypoolroleattachment-rulesconfigurationtype-rules
ciprarctRules :: Lens' CognitoIdentityPoolRoleAttachmentRulesConfigurationType [CognitoIdentityPoolRoleAttachmentMappingRule]
ciprarctRules = lens _cognitoIdentityPoolRoleAttachmentRulesConfigurationTypeRules (\s a -> s { _cognitoIdentityPoolRoleAttachmentRulesConfigurationTypeRules = a })
