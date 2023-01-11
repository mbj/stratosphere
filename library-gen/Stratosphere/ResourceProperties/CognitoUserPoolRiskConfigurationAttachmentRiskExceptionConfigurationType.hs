
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype.html

module Stratosphere.ResourceProperties.CognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationType where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- CognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationType.
-- See
-- 'cognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationType'
-- for a more convenient constructor.
data CognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationType =
  CognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationType
  { _cognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationTypeBlockedIPRangeList :: Maybe (ValList Text)
  , _cognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationTypeSkippedIPRangeList :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationType where
  toJSON CognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationType{..} =
    object $
    catMaybes
    [ fmap (("BlockedIPRangeList",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationTypeBlockedIPRangeList
    , fmap (("SkippedIPRangeList",) . toJSON) _cognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationTypeSkippedIPRangeList
    ]

-- | Constructor for
-- 'CognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationType'
-- containing required fields as arguments.
cognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationType
  :: CognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationType
cognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationType  =
  CognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationType
  { _cognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationTypeBlockedIPRangeList = Nothing
  , _cognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationTypeSkippedIPRangeList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype-blockediprangelist
cuprcarectBlockedIPRangeList :: Lens' CognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationType (Maybe (ValList Text))
cuprcarectBlockedIPRangeList = lens _cognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationTypeBlockedIPRangeList (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationTypeBlockedIPRangeList = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype.html#cfn-cognito-userpoolriskconfigurationattachment-riskexceptionconfigurationtype-skippediprangelist
cuprcarectSkippedIPRangeList :: Lens' CognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationType (Maybe (ValList Text))
cuprcarectSkippedIPRangeList = lens _cognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationTypeSkippedIPRangeList (\s a -> s { _cognitoUserPoolRiskConfigurationAttachmentRiskExceptionConfigurationTypeSkippedIPRangeList = a })
