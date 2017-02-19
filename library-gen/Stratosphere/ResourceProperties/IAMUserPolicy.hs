{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html

module Stratosphere.ResourceProperties.IAMUserPolicy where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for IAMUserPolicy. See 'iamUserPolicy' for a
-- | more convenient constructor.
data IAMUserPolicy =
  IAMUserPolicy
  { _iAMUserPolicyPolicyDocument :: Object
  , _iAMUserPolicyPolicyName :: Val Text
  } deriving (Show, Eq)

instance ToJSON IAMUserPolicy where
  toJSON IAMUserPolicy{..} =
    object $
    catMaybes
    [ Just ("PolicyDocument" .= _iAMUserPolicyPolicyDocument)
    , Just ("PolicyName" .= _iAMUserPolicyPolicyName)
    ]

instance FromJSON IAMUserPolicy where
  parseJSON (Object obj) =
    IAMUserPolicy <$>
      obj .: "PolicyDocument" <*>
      obj .: "PolicyName"
  parseJSON _ = mempty

-- | Constructor for 'IAMUserPolicy' containing required fields as arguments.
iamUserPolicy
  :: Object -- ^ 'iamupPolicyDocument'
  -> Val Text -- ^ 'iamupPolicyName'
  -> IAMUserPolicy
iamUserPolicy policyDocumentarg policyNamearg =
  IAMUserPolicy
  { _iAMUserPolicyPolicyDocument = policyDocumentarg
  , _iAMUserPolicyPolicyName = policyNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html#cfn-iam-policies-policydocument
iamupPolicyDocument :: Lens' IAMUserPolicy Object
iamupPolicyDocument = lens _iAMUserPolicyPolicyDocument (\s a -> s { _iAMUserPolicyPolicyDocument = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html#cfn-iam-policies-policyname
iamupPolicyName :: Lens' IAMUserPolicy (Val Text)
iamupPolicyName = lens _iAMUserPolicyPolicyName (\s a -> s { _iAMUserPolicyPolicyName = a })
