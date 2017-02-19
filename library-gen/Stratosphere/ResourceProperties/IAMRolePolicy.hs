{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html

module Stratosphere.ResourceProperties.IAMRolePolicy where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for IAMRolePolicy. See 'iamRolePolicy' for a
-- | more convenient constructor.
data IAMRolePolicy =
  IAMRolePolicy
  { _iAMRolePolicyPolicyDocument :: Object
  , _iAMRolePolicyPolicyName :: Val Text
  } deriving (Show, Eq)

instance ToJSON IAMRolePolicy where
  toJSON IAMRolePolicy{..} =
    object $
    catMaybes
    [ Just ("PolicyDocument" .= _iAMRolePolicyPolicyDocument)
    , Just ("PolicyName" .= _iAMRolePolicyPolicyName)
    ]

instance FromJSON IAMRolePolicy where
  parseJSON (Object obj) =
    IAMRolePolicy <$>
      obj .: "PolicyDocument" <*>
      obj .: "PolicyName"
  parseJSON _ = mempty

-- | Constructor for 'IAMRolePolicy' containing required fields as arguments.
iamRolePolicy
  :: Object -- ^ 'iamrpPolicyDocument'
  -> Val Text -- ^ 'iamrpPolicyName'
  -> IAMRolePolicy
iamRolePolicy policyDocumentarg policyNamearg =
  IAMRolePolicy
  { _iAMRolePolicyPolicyDocument = policyDocumentarg
  , _iAMRolePolicyPolicyName = policyNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html#cfn-iam-policies-policydocument
iamrpPolicyDocument :: Lens' IAMRolePolicy Object
iamrpPolicyDocument = lens _iAMRolePolicyPolicyDocument (\s a -> s { _iAMRolePolicyPolicyDocument = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html#cfn-iam-policies-policyname
iamrpPolicyName :: Lens' IAMRolePolicy (Val Text)
iamrpPolicyName = lens _iAMRolePolicyPolicyName (\s a -> s { _iAMRolePolicyPolicyName = a })
