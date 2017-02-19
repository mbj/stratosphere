{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html

module Stratosphere.ResourceProperties.IAMGroupPolicy where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for IAMGroupPolicy. See 'iamGroupPolicy' for a
-- | more convenient constructor.
data IAMGroupPolicy =
  IAMGroupPolicy
  { _iAMGroupPolicyPolicyDocument :: Object
  , _iAMGroupPolicyPolicyName :: Val Text
  } deriving (Show, Eq)

instance ToJSON IAMGroupPolicy where
  toJSON IAMGroupPolicy{..} =
    object $
    catMaybes
    [ Just ("PolicyDocument" .= _iAMGroupPolicyPolicyDocument)
    , Just ("PolicyName" .= _iAMGroupPolicyPolicyName)
    ]

instance FromJSON IAMGroupPolicy where
  parseJSON (Object obj) =
    IAMGroupPolicy <$>
      obj .: "PolicyDocument" <*>
      obj .: "PolicyName"
  parseJSON _ = mempty

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
