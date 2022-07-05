{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html

module Stratosphere.Resources.IAMRole where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IAMRolePolicy
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for IAMRole. See 'iamRole' for a more
-- convenient constructor.
data IAMRole =
  IAMRole
  { _iAMRoleAssumeRolePolicyDocument :: Object
  , _iAMRoleDescription :: Maybe (Val Text)
  , _iAMRoleManagedPolicyArns :: Maybe (ValList Text)
  , _iAMRoleMaxSessionDuration :: Maybe (Val Integer)
  , _iAMRolePath :: Maybe (Val Text)
  , _iAMRolePermissionsBoundary :: Maybe (Val Text)
  , _iAMRolePolicies :: Maybe [IAMRolePolicy]
  , _iAMRoleRoleName :: Maybe (Val Text)
  , _iAMRoleTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties IAMRole where
  toResourceProperties IAMRole{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IAM::Role"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("AssumeRolePolicyDocument",) . toJSON) _iAMRoleAssumeRolePolicyDocument
        , fmap (("Description",) . toJSON) _iAMRoleDescription
        , fmap (("ManagedPolicyArns",) . toJSON) _iAMRoleManagedPolicyArns
        , fmap (("MaxSessionDuration",) . toJSON) _iAMRoleMaxSessionDuration
        , fmap (("Path",) . toJSON) _iAMRolePath
        , fmap (("PermissionsBoundary",) . toJSON) _iAMRolePermissionsBoundary
        , fmap (("Policies",) . toJSON) _iAMRolePolicies
        , fmap (("RoleName",) . toJSON) _iAMRoleRoleName
        , fmap (("Tags",) . toJSON) _iAMRoleTags
        ]
    }

-- | Constructor for 'IAMRole' containing required fields as arguments.
iamRole
  :: Object -- ^ 'iamrAssumeRolePolicyDocument'
  -> IAMRole
iamRole assumeRolePolicyDocumentarg =
  IAMRole
  { _iAMRoleAssumeRolePolicyDocument = assumeRolePolicyDocumentarg
  , _iAMRoleDescription = Nothing
  , _iAMRoleManagedPolicyArns = Nothing
  , _iAMRoleMaxSessionDuration = Nothing
  , _iAMRolePath = Nothing
  , _iAMRolePermissionsBoundary = Nothing
  , _iAMRolePolicies = Nothing
  , _iAMRoleRoleName = Nothing
  , _iAMRoleTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-assumerolepolicydocument
iamrAssumeRolePolicyDocument :: Lens' IAMRole Object
iamrAssumeRolePolicyDocument = lens _iAMRoleAssumeRolePolicyDocument (\s a -> s { _iAMRoleAssumeRolePolicyDocument = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-description
iamrDescription :: Lens' IAMRole (Maybe (Val Text))
iamrDescription = lens _iAMRoleDescription (\s a -> s { _iAMRoleDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-managepolicyarns
iamrManagedPolicyArns :: Lens' IAMRole (Maybe (ValList Text))
iamrManagedPolicyArns = lens _iAMRoleManagedPolicyArns (\s a -> s { _iAMRoleManagedPolicyArns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-maxsessionduration
iamrMaxSessionDuration :: Lens' IAMRole (Maybe (Val Integer))
iamrMaxSessionDuration = lens _iAMRoleMaxSessionDuration (\s a -> s { _iAMRoleMaxSessionDuration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-path
iamrPath :: Lens' IAMRole (Maybe (Val Text))
iamrPath = lens _iAMRolePath (\s a -> s { _iAMRolePath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-permissionsboundary
iamrPermissionsBoundary :: Lens' IAMRole (Maybe (Val Text))
iamrPermissionsBoundary = lens _iAMRolePermissionsBoundary (\s a -> s { _iAMRolePermissionsBoundary = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-policies
iamrPolicies :: Lens' IAMRole (Maybe [IAMRolePolicy])
iamrPolicies = lens _iAMRolePolicies (\s a -> s { _iAMRolePolicies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-rolename
iamrRoleName :: Lens' IAMRole (Maybe (Val Text))
iamrRoleName = lens _iAMRoleRoleName (\s a -> s { _iAMRoleRoleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html#cfn-iam-role-tags
iamrTags :: Lens' IAMRole (Maybe [Tag])
iamrTags = lens _iAMRoleTags (\s a -> s { _iAMRoleTags = a })
