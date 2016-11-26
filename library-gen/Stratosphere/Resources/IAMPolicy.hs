{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html

module Stratosphere.Resources.IAMPolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for IAMPolicy. See 'iamPolicy' for a more
-- | convenient constructor.
data IAMPolicy =
  IAMPolicy
  { _iAMPolicyGroups :: Maybe [Val Text]
  , _iAMPolicyPolicyDocument :: Val Text
  , _iAMPolicyPolicyName :: Val Text
  , _iAMPolicyRoles :: Maybe [Val Text]
  , _iAMPolicyUsers :: Maybe [Val Text]
  } deriving (Show, Generic)

instance ToJSON IAMPolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 10, omitNothingFields = True }

instance FromJSON IAMPolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 10, omitNothingFields = True }

-- | Constructor for 'IAMPolicy' containing required fields as arguments.
iamPolicy
  :: Val Text -- ^ 'iampPolicyDocument'
  -> Val Text -- ^ 'iampPolicyName'
  -> IAMPolicy
iamPolicy policyDocumentarg policyNamearg =
  IAMPolicy
  { _iAMPolicyGroups = Nothing
  , _iAMPolicyPolicyDocument = policyDocumentarg
  , _iAMPolicyPolicyName = policyNamearg
  , _iAMPolicyRoles = Nothing
  , _iAMPolicyUsers = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-groups
iampGroups :: Lens' IAMPolicy (Maybe [Val Text])
iampGroups = lens _iAMPolicyGroups (\s a -> s { _iAMPolicyGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-policydocument
iampPolicyDocument :: Lens' IAMPolicy (Val Text)
iampPolicyDocument = lens _iAMPolicyPolicyDocument (\s a -> s { _iAMPolicyPolicyDocument = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-policyname
iampPolicyName :: Lens' IAMPolicy (Val Text)
iampPolicyName = lens _iAMPolicyPolicyName (\s a -> s { _iAMPolicyPolicyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-roles
iampRoles :: Lens' IAMPolicy (Maybe [Val Text])
iampRoles = lens _iAMPolicyRoles (\s a -> s { _iAMPolicyRoles = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-users
iampUsers :: Lens' IAMPolicy (Maybe [Val Text])
iampUsers = lens _iAMPolicyUsers (\s a -> s { _iAMPolicyUsers = a })
