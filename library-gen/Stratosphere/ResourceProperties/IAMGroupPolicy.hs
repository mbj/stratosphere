{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html

module Stratosphere.ResourceProperties.IAMGroupPolicy where

import Stratosphere.ResourceImports


-- | Full data type definition for IAMGroupPolicy. See 'iamGroupPolicy' for a
-- more convenient constructor.
data IAMGroupPolicy =
  IAMGroupPolicy
  { _iAMGroupPolicyPolicyDocument :: Object
  , _iAMGroupPolicyPolicyName :: Val Text
  } deriving (Show, Eq)

instance ToJSON IAMGroupPolicy where
  toJSON IAMGroupPolicy{..} =
    object $
    catMaybes
    [ (Just . ("PolicyDocument",) . toJSON) _iAMGroupPolicyPolicyDocument
    , (Just . ("PolicyName",) . toJSON) _iAMGroupPolicyPolicyName
    ]

-- | Constructor for 'IAMGroupPolicy' containing required fields as arguments.
iamGroupPolicy
  :: Object -- ^ 'iamgpPolicyDocument'
  -> Val Text -- ^ 'iamgpPolicyName'
  -> IAMGroupPolicy
iamGroupPolicy policyDocumentarg policyNamearg =
  IAMGroupPolicy
  { _iAMGroupPolicyPolicyDocument = policyDocumentarg
  , _iAMGroupPolicyPolicyName = policyNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html#cfn-iam-policies-policydocument
iamgpPolicyDocument :: Lens' IAMGroupPolicy Object
iamgpPolicyDocument = lens _iAMGroupPolicyPolicyDocument (\s a -> s { _iAMGroupPolicyPolicyDocument = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html#cfn-iam-policies-policyname
iamgpPolicyName :: Lens' IAMGroupPolicy (Val Text)
iamgpPolicyName = lens _iAMGroupPolicyPolicyName (\s a -> s { _iAMGroupPolicyPolicyName = a })
