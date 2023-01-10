
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-compromisedcredentialsactionstype.html

module Stratosphere.ResourceProperties.CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsType where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsType.
-- See
-- 'cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsType'
-- for a more convenient constructor.
data CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsType =
  CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsType
  { _cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsTypeEventAction :: Val Text
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsType where
  toJSON CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsType{..} =
    object $
    catMaybes
    [ (Just . ("EventAction",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsTypeEventAction
    ]

-- | Constructor for
-- 'CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsType'
-- containing required fields as arguments.
cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsType
  :: Val Text -- ^ 'cuprcaccatEventAction'
  -> CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsType
cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsType eventActionarg =
  CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsType
  { _cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsTypeEventAction = eventActionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-compromisedcredentialsactionstype.html#cfn-cognito-userpoolriskconfigurationattachment-compromisedcredentialsactionstype-eventaction
cuprcaccatEventAction :: Lens' CognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsType (Val Text)
cuprcaccatEventAction = lens _cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsTypeEventAction (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentCompromisedCredentialsActionsTypeEventAction = a })
