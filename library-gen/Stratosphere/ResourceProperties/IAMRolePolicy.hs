{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html

module Stratosphere.ResourceProperties.IAMRolePolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IAMRolePolicy. See 'iamRolePolicy' for a
-- | more convenient constructor.
data IAMRolePolicy =
  IAMRolePolicy
  { _iAMRolePolicyPolicyDocument :: Maybe Object
  , _iAMRolePolicyPolicyName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON IAMRolePolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

instance FromJSON IAMRolePolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

-- | Constructor for 'IAMRolePolicy' containing required fields as arguments.
iamRolePolicy
  :: IAMRolePolicy
iamRolePolicy  =
  IAMRolePolicy
  { _iAMRolePolicyPolicyDocument = Nothing
  , _iAMRolePolicyPolicyName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html#cfn-iam-policies-policydocument
iamrpPolicyDocument :: Lens' IAMRolePolicy (Maybe Object)
iamrpPolicyDocument = lens _iAMRolePolicyPolicyDocument (\s a -> s { _iAMRolePolicyPolicyDocument = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html#cfn-iam-policies-policyname
iamrpPolicyName :: Lens' IAMRolePolicy (Maybe (Val Text))
iamrpPolicyName = lens _iAMRolePolicyPolicyName (\s a -> s { _iAMRolePolicyPolicyName = a })
