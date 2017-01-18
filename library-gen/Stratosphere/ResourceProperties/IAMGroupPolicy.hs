{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html

module Stratosphere.ResourceProperties.IAMGroupPolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IAMGroupPolicy. See 'iamGroupPolicy' for a
-- | more convenient constructor.
data IAMGroupPolicy =
  IAMGroupPolicy
  { _iAMGroupPolicyPolicyDocument :: Object
  , _iAMGroupPolicyPolicyName :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON IAMGroupPolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

instance FromJSON IAMGroupPolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

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
