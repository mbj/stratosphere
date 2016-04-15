{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | AWS::IAM::ManagedPolicy creates an AWS Identity and Access Management
-- (IAM) managed policy for your AWS account that you can use to apply
-- permissions to IAM users, groups, and roles. For more information about
-- managed policies, see Managed Policies and Inline Policies in the IAM User
-- Guide guide.

module Stratosphere.Resources.ManagedPolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ManagedPolicy. See 'managedPolicy' for a
-- more convenient constructor.
data ManagedPolicy =
  ManagedPolicy
  { _managedPolicyDescription :: Maybe (Val Text)
  , _managedPolicyGroups :: Maybe [Val Text]
  , _managedPolicyPath :: Maybe (Val Text)
  , _managedPolicyPolicyDocument :: Object
  , _managedPolicyRoles :: Maybe [Val Text]
  , _managedPolicyUsers :: Maybe [Val Text]
  } deriving (Show, Generic)

instance ToJSON ManagedPolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

instance FromJSON ManagedPolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

-- | Constructor for 'ManagedPolicy' containing required fields as arguments.
managedPolicy
  :: Object -- ^ 'mpPolicyDocument'
  -> ManagedPolicy
managedPolicy policyDocumentarg =
  ManagedPolicy
  { _managedPolicyDescription = Nothing
  , _managedPolicyGroups = Nothing
  , _managedPolicyPath = Nothing
  , _managedPolicyPolicyDocument = policyDocumentarg
  , _managedPolicyRoles = Nothing
  , _managedPolicyUsers = Nothing
  }

-- | A description of the policy. For example, you can describe the
-- permissions that are defined in the policy.
mpDescription :: Lens' ManagedPolicy (Maybe (Val Text))
mpDescription = lens _managedPolicyDescription (\s a -> s { _managedPolicyDescription = a })

-- | The names of groups to attach to this policy.
mpGroups :: Lens' ManagedPolicy (Maybe [Val Text])
mpGroups = lens _managedPolicyGroups (\s a -> s { _managedPolicyGroups = a })

-- | The path for the policy. By default, the path is /. For more information,
-- see IAM Identifiers in the IAM User Guide guide.
mpPath :: Lens' ManagedPolicy (Maybe (Val Text))
mpPath = lens _managedPolicyPath (\s a -> s { _managedPolicyPath = a })

-- | Policies that define the permissions for this managed policy. For more
-- information about policy syntax, see IAM Policy Elements Reference in IAM
-- User Guide.
mpPolicyDocument :: Lens' ManagedPolicy Object
mpPolicyDocument = lens _managedPolicyPolicyDocument (\s a -> s { _managedPolicyPolicyDocument = a })

-- | The names of roles to attach to this policy. Note If a policy has a Ref
-- to a role and if a resource (such as AWS::ECS::Service) also has a Ref to
-- the same role, add a DependsOn attribute to the resource so that the
-- resource depends on the policy. This dependency ensures that the role's
-- policy is available throughout the resource's lifecycle. For example, when
-- you delete a stack with an AWS::ECS::Service resource, the DependsOn
-- attribute ensures that the AWS::ECS::Service resource can complete its
-- deletion before its role's policy is deleted.
mpRoles :: Lens' ManagedPolicy (Maybe [Val Text])
mpRoles = lens _managedPolicyRoles (\s a -> s { _managedPolicyRoles = a })

-- | The names of users to attach to this policy.
mpUsers :: Lens' ManagedPolicy (Maybe [Val Text])
mpUsers = lens _managedPolicyUsers (\s a -> s { _managedPolicyUsers = a })