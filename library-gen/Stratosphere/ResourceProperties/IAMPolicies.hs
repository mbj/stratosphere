{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Policies is a property of the AWS::IAM::Role, AWS::IAM::Group, and
-- AWS::IAM::User resources. The Policies property describes what actions are
-- allowed on what resources. For more information about IAM policies, see
-- Overview of Policies in IAM User Guide.

module Stratosphere.ResourceProperties.IAMPolicies where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IAMPolicies. See 'iamPolicies' for a more
-- convenient constructor.
data IAMPolicies =
  IAMPolicies
  { _iAMPoliciesPolicyDocument :: Object
  , _iAMPoliciesPolicyName :: Val Text
  } deriving (Show, Generic)

instance ToJSON IAMPolicies where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 12, omitNothingFields = True }

instance FromJSON IAMPolicies where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 12, omitNothingFields = True }

-- | Constructor for 'IAMPolicies' containing required fields as arguments.
iamPolicies
  :: Object -- ^ PolicyDocument
  -> Val Text -- ^ PolicyName
  -> IAMPolicies
iamPolicies policyDocumentarg policyNamearg =
  IAMPolicies
  { _iAMPoliciesPolicyDocument = policyDocumentarg
  , _iAMPoliciesPolicyName = policyNamearg
  }

-- | A policy document that describes what actions are allowed on which
-- resources.
iampPolicyDocument :: Lens' IAMPolicies Object
iampPolicyDocument = lens _iAMPoliciesPolicyDocument (\s a -> s { _iAMPoliciesPolicyDocument = a })

-- | The name of the policy.
iampPolicyName :: Lens' IAMPolicies (Val Text)
iampPolicyName = lens _iAMPoliciesPolicyName (\s a -> s { _iAMPoliciesPolicyName = a })