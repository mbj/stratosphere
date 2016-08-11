{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Creates an AWS Identity and Access Management (IAM) role. An IAM role can
-- be used to enable applications running on an Amazon EC2 instance to
-- securely access your AWS resources. For more information about IAM roles,
-- see Working with Roles in the AWS Identity and Access Management User
-- Guide.

module Stratosphere.Resources.IAMRole where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.IAMPolicies

-- | Full data type definition for IAMRole. See 'iamRole' for a more
-- convenient constructor.
data IAMRole =
  IAMRole
  { _iAMRoleAssumeRolePolicyDocument :: Object
  , _iAMRoleManagedPolicyArns :: Maybe [Val Text]
  , _iAMRolePath :: Maybe (Val Text)
  , _iAMRolePolicies :: Maybe [IAMPolicies]
  , _iAMRoleName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON IAMRole where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 8, omitNothingFields = True }

instance FromJSON IAMRole where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 8, omitNothingFields = True }

-- | Constructor for 'IAMRole' containing required fields as arguments.
iamRole
  :: Object -- ^ 'iamrAssumeRolePolicyDocument'
  -> IAMRole
iamRole assumeRolePolicyDocumentarg =
  IAMRole
  { _iAMRoleAssumeRolePolicyDocument = assumeRolePolicyDocumentarg
  , _iAMRoleManagedPolicyArns = Nothing
  , _iAMRolePath = Nothing
  , _iAMRolePolicies = Nothing
  , _iAMRoleName = Nothing
  }

-- | The IAM assume role policy that is associated with this role.
iamrAssumeRolePolicyDocument :: Lens' IAMRole Object
iamrAssumeRolePolicyDocument = lens _iAMRoleAssumeRolePolicyDocument (\s a -> s { _iAMRoleAssumeRolePolicyDocument = a })

-- | One or more managed policy ARNs to attach to this role.
iamrManagedPolicyArns :: Lens' IAMRole (Maybe [Val Text])
iamrManagedPolicyArns = lens _iAMRoleManagedPolicyArns (\s a -> s { _iAMRoleManagedPolicyArns = a })

-- | The path associated with this role. For information about IAM paths, see
-- Friendly Names and Paths in IAM User Guide.
iamrPath :: Lens' IAMRole (Maybe (Val Text))
iamrPath = lens _iAMRolePath (\s a -> s { _iAMRolePath = a })

-- | The policies to associate with this role. Policies can also be specified
-- externally. For sample templates that demonstrates both embedded and
-- external policies, see Template Examples. If you specify multiple polices,
-- specify unique values for the policy name. If you don't, updates to the IAM
-- role will fail. Note If an external policy (such as AWS::IAM::Policy or
-- AWS::IAM::ManagedPolicy) has a Ref to a role and if a resource (such as
-- AWS::ECS::Service) also has a Ref to the same role, add a DependsOn
-- attribute to the resource so that the resource depends on the external
-- policy. This dependency ensures that the role's policy is available
-- throughout the resource's lifecycle. For example, when you delete a stack
-- with an AWS::ECS::Service resource, the DependsOn attribute ensures that
-- the AWS::ECS::Service resource can complete its deletion before its role's
-- policy is deleted.
iamrPolicies :: Lens' IAMRole (Maybe [IAMPolicies])
iamrPolicies = lens _iAMRolePolicies (\s a -> s { _iAMRolePolicies = a })

-- | A name for the IAM role. For valid values, see the RoleName parameter for
-- the CreateRole action in the IAM API Reference. If you don't specify a
-- name, AWS CloudFormation generates a unique physical ID and uses that ID
-- for the role name.
iamrName :: Lens' IAMRole (Maybe (Val Text))
iamrName = lens _iAMRoleName (\s a -> s { _iAMRoleName = a })