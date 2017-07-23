{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-mappingrule.html

module Stratosphere.ResourceProperties.CognitoIdentityPoolRoleAttachmentMappingRule where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- CognitoIdentityPoolRoleAttachmentMappingRule. See
-- 'cognitoIdentityPoolRoleAttachmentMappingRule' for a more convenient
-- constructor.
data CognitoIdentityPoolRoleAttachmentMappingRule =
  CognitoIdentityPoolRoleAttachmentMappingRule
  { _cognitoIdentityPoolRoleAttachmentMappingRuleClaim :: Val Text
  , _cognitoIdentityPoolRoleAttachmentMappingRuleMatchType :: Val Text
  , _cognitoIdentityPoolRoleAttachmentMappingRuleRoleARN :: Val Text
  , _cognitoIdentityPoolRoleAttachmentMappingRuleValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON CognitoIdentityPoolRoleAttachmentMappingRule where
  toJSON CognitoIdentityPoolRoleAttachmentMappingRule{..} =
    object $
    catMaybes
    [ (Just . ("Claim",) . toJSON) _cognitoIdentityPoolRoleAttachmentMappingRuleClaim
    , (Just . ("MatchType",) . toJSON) _cognitoIdentityPoolRoleAttachmentMappingRuleMatchType
    , (Just . ("RoleARN",) . toJSON) _cognitoIdentityPoolRoleAttachmentMappingRuleRoleARN
    , (Just . ("Value",) . toJSON) _cognitoIdentityPoolRoleAttachmentMappingRuleValue
    ]

instance FromJSON CognitoIdentityPoolRoleAttachmentMappingRule where
  parseJSON (Object obj) =
    CognitoIdentityPoolRoleAttachmentMappingRule <$>
      (obj .: "Claim") <*>
      (obj .: "MatchType") <*>
      (obj .: "RoleARN") <*>
      (obj .: "Value")
  parseJSON _ = mempty

-- | Constructor for 'CognitoIdentityPoolRoleAttachmentMappingRule' containing
-- required fields as arguments.
cognitoIdentityPoolRoleAttachmentMappingRule
  :: Val Text -- ^ 'cipramrClaim'
  -> Val Text -- ^ 'cipramrMatchType'
  -> Val Text -- ^ 'cipramrRoleARN'
  -> Val Text -- ^ 'cipramrValue'
  -> CognitoIdentityPoolRoleAttachmentMappingRule
cognitoIdentityPoolRoleAttachmentMappingRule claimarg matchTypearg roleARNarg valuearg =
  CognitoIdentityPoolRoleAttachmentMappingRule
  { _cognitoIdentityPoolRoleAttachmentMappingRuleClaim = claimarg
  , _cognitoIdentityPoolRoleAttachmentMappingRuleMatchType = matchTypearg
  , _cognitoIdentityPoolRoleAttachmentMappingRuleRoleARN = roleARNarg
  , _cognitoIdentityPoolRoleAttachmentMappingRuleValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-mappingrule.html#cfn-cognito-identitypoolroleattachment-mappingrule-claim
cipramrClaim :: Lens' CognitoIdentityPoolRoleAttachmentMappingRule (Val Text)
cipramrClaim = lens _cognitoIdentityPoolRoleAttachmentMappingRuleClaim (\s a -> s { _cognitoIdentityPoolRoleAttachmentMappingRuleClaim = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-mappingrule.html#cfn-cognito-identitypoolroleattachment-mappingrule-matchtype
cipramrMatchType :: Lens' CognitoIdentityPoolRoleAttachmentMappingRule (Val Text)
cipramrMatchType = lens _cognitoIdentityPoolRoleAttachmentMappingRuleMatchType (\s a -> s { _cognitoIdentityPoolRoleAttachmentMappingRuleMatchType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-mappingrule.html#cfn-cognito-identitypoolroleattachment-mappingrule-rolearn
cipramrRoleARN :: Lens' CognitoIdentityPoolRoleAttachmentMappingRule (Val Text)
cipramrRoleARN = lens _cognitoIdentityPoolRoleAttachmentMappingRuleRoleARN (\s a -> s { _cognitoIdentityPoolRoleAttachmentMappingRuleRoleARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-identitypoolroleattachment-mappingrule.html#cfn-cognito-identitypoolroleattachment-mappingrule-value
cipramrValue :: Lens' CognitoIdentityPoolRoleAttachmentMappingRule (Val Text)
cipramrValue = lens _cognitoIdentityPoolRoleAttachmentMappingRuleValue (\s a -> s { _cognitoIdentityPoolRoleAttachmentMappingRuleValue = a })
