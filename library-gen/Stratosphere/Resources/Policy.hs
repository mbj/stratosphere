{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::IAM::Policy resource associates an IAM policy with IAM users,
-- roles, or groups. For more information about IAM policies, see Overview of
-- IAM Policies in the IAM User Guide guide.

module Stratosphere.Resources.Policy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for Policy. See 'policy' for a more convenient
-- constructor.
data Policy =
  Policy
  { _policyGroups :: Maybe [Val Text]
  , _policyPolicyDocument :: Object
  , _policyPolicyName :: Val Text
  , _policyRoles :: Maybe [Val Text]
  , _policyUsers :: Maybe [Val Text]
  } deriving (Show, Generic)

instance ToJSON Policy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 7, omitNothingFields = True }

instance FromJSON Policy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 7, omitNothingFields = True }

-- | Constructor for 'Policy' containing required fields as arguments.
policy
  :: Object -- ^ 'pPolicyDocument'
  -> Val Text -- ^ 'pPolicyName'
  -> Policy
policy policyDocumentarg policyNamearg =
  Policy
  { _policyGroups = Nothing
  , _policyPolicyDocument = policyDocumentarg
  , _policyPolicyName = policyNamearg
  , _policyRoles = Nothing
  , _policyUsers = Nothing
  }

-- | The names of groups to which you want to add the policy.
pGroups :: Lens' Policy (Maybe [Val Text])
pGroups = lens _policyGroups (\s a -> s { _policyGroups = a })

-- | A policy document that contains permissions to add to the specified users
-- or groups.
pPolicyDocument :: Lens' Policy Object
pPolicyDocument = lens _policyPolicyDocument (\s a -> s { _policyPolicyDocument = a })

-- | The name of the policy. If you specify multiple policies for an entity,
-- specify unique names. For example, if you specify a list of policies for an
-- IAM role, each policy must have a unique name.
pPolicyName :: Lens' Policy (Val Text)
pPolicyName = lens _policyPolicyName (\s a -> s { _policyPolicyName = a })

-- | The names of AWS::IAM::Roles to attach to this policy. Note If a policy
-- has a Ref to a role and if a resource (such as AWS::ECS::Service) also has
-- a Ref to the same role, add a DependsOn attribute to the resource so that
-- the resource depends on the policy. This dependency ensures that the role's
-- policy is available throughout the resource's lifecycle. For example, when
-- you delete a stack with an AWS::ECS::Service resource, the DependsOn
-- attribute ensures that the AWS::ECS::Service resource can complete its
-- deletion before its role's policy is deleted.
pRoles :: Lens' Policy (Maybe [Val Text])
pRoles = lens _policyRoles (\s a -> s { _policyRoles = a })

-- | The names of users for whom you want to add the policy.
pUsers :: Lens' Policy (Maybe [Val Text])
pUsers = lens _policyUsers (\s a -> s { _policyUsers = a })