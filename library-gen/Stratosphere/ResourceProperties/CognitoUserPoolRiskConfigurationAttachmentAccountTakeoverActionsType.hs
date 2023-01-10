
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype.html

module Stratosphere.ResourceProperties.CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsType where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType

-- | Full data type definition for
-- CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsType. See
-- 'cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsType'
-- for a more convenient constructor.
data CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsType =
  CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsType
  { _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsTypeHighAction :: Maybe CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType
  , _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsTypeLowAction :: Maybe CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType
  , _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsTypeMediumAction :: Maybe CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsType where
  toJSON CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsType{..} =
    object $
    catMaybes
    [ fmap (("HighAction",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsTypeHighAction
    , fmap (("LowAction",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsTypeLowAction
    , fmap (("MediumAction",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsTypeMediumAction
    ]

-- | Constructor for
-- 'CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsType'
-- containing required fields as arguments.
cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsType
  :: CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsType
cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsType  =
  CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsType
  { _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsTypeHighAction = Nothing
  , _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsTypeLowAction = Nothing
  , _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsTypeMediumAction = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype-highaction
cuprcaatatHighAction :: Lens' CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsType (Maybe CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType)
cuprcaatatHighAction = lens _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsTypeHighAction (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsTypeHighAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype-lowaction
cuprcaatatLowAction :: Lens' CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsType (Maybe CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType)
cuprcaatatLowAction = lens _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsTypeLowAction (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsTypeLowAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype.html#cfn-cognito-userpoolriskconfigurationattachment-accounttakeoveractionstype-mediumaction
cuprcaatatMediumAction :: Lens' CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsType (Maybe CognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionType)
cuprcaatatMediumAction = lens _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsTypeMediumAction (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentAccountTakeoverActionsTypeMediumAction = a })
