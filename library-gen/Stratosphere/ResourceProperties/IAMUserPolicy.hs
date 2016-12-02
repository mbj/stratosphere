{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html

module Stratosphere.ResourceProperties.IAMUserPolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IAMUserPolicy. See 'iamUserPolicy' for a
-- | more convenient constructor.
data IAMUserPolicy =
  IAMUserPolicy
  { _iAMUserPolicyPolicyDocument :: Object
  , _iAMUserPolicyPolicyName :: Val Text
  } deriving (Show, Generic)

instance ToJSON IAMUserPolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

instance FromJSON IAMUserPolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

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
