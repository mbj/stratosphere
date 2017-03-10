{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html

module Stratosphere.Resources.IAMRole where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.IAMRolePolicy

-- | Full data type definition for IAMRole. See 'iamRole' for a more
-- convenient constructor.
data IAMRole =
  IAMRole
  { _iAMRoleAssumeRolePolicyDocument :: Object
  , _iAMRoleManagedPolicyArns :: Maybe [Val Text]
  , _iAMRolePath :: Maybe (Val Text)
  , _iAMRolePolicies :: Maybe [IAMRolePolicy]
  , _iAMRoleRoleName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IAMRole where
  toJSON IAMRole{..} =
    object $
    catMaybes
    [ Just ("AssumeRolePolicyDocument" .= _iAMRoleAssumeRolePolicyDocument)
    , ("ManagedPolicyArns" .=) <$> _iAMRoleManagedPolicyArns
    , ("Path" .=) <$> _iAMRolePath
    , ("Policies" .=) <$> _iAMRolePolicies
    , ("RoleName" .=) <$> _iAMRoleRoleName
    ]

instance FromJSON IAMRole where
  parseJSON (Object obj) =
    IAMRole <$>
      obj .: "AssumeRolePolicyDocument" <*>
      obj .:? "ManagedPolicyArns" <*>
      obj .:? "Path" <*>
      obj .:? "Policies" <*>
      obj .:? "RoleName"
  parseJSON _ = mempty

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
  , _iAMRoleRoleName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-assumerolepolicydocument
iamrAssumeRolePolicyDocument :: Lens' IAMRole Object
iamrAssumeRolePolicyDocument = lens _iAMRoleAssumeRolePolicyDocument (\s a -> s { _iAMRoleAssumeRolePolicyDocument = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-managepolicyarns
iamrManagedPolicyArns :: Lens' IAMRole (Maybe [Val Text])
iamrManagedPolicyArns = lens _iAMRoleManagedPolicyArns (\s a -> s { _iAMRoleManagedPolicyArns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-path
iamrPath :: Lens' IAMRole (Maybe (Val Text))
iamrPath = lens _iAMRolePath (\s a -> s { _iAMRolePath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-policies
iamrPolicies :: Lens' IAMRole (Maybe [IAMRolePolicy])
iamrPolicies = lens _iAMRolePolicies (\s a -> s { _iAMRolePolicies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-rolename
iamrRoleName :: Lens' IAMRole (Maybe (Val Text))
iamrRoleName = lens _iAMRoleRoleName (\s a -> s { _iAMRoleRoleName = a })
