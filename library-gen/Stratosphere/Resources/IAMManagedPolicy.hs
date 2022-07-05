{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html

module Stratosphere.Resources.IAMManagedPolicy where

import Stratosphere.ResourceImports


-- | Full data type definition for IAMManagedPolicy. See 'iamManagedPolicy'
-- for a more convenient constructor.
data IAMManagedPolicy =
  IAMManagedPolicy
  { _iAMManagedPolicyDescription :: Maybe (Val Text)
  , _iAMManagedPolicyGroups :: Maybe (ValList Text)
  , _iAMManagedPolicyManagedPolicyName :: Maybe (Val Text)
  , _iAMManagedPolicyPath :: Maybe (Val Text)
  , _iAMManagedPolicyPolicyDocument :: Object
  , _iAMManagedPolicyRoles :: Maybe (ValList Text)
  , _iAMManagedPolicyUsers :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToResourceProperties IAMManagedPolicy where
  toResourceProperties IAMManagedPolicy{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IAM::ManagedPolicy"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _iAMManagedPolicyDescription
        , fmap (("Groups",) . toJSON) _iAMManagedPolicyGroups
        , fmap (("ManagedPolicyName",) . toJSON) _iAMManagedPolicyManagedPolicyName
        , fmap (("Path",) . toJSON) _iAMManagedPolicyPath
        , (Just . ("PolicyDocument",) . toJSON) _iAMManagedPolicyPolicyDocument
        , fmap (("Roles",) . toJSON) _iAMManagedPolicyRoles
        , fmap (("Users",) . toJSON) _iAMManagedPolicyUsers
        ]
    }

-- | Constructor for 'IAMManagedPolicy' containing required fields as
-- arguments.
iamManagedPolicy
  :: Object -- ^ 'iammpPolicyDocument'
  -> IAMManagedPolicy
iamManagedPolicy policyDocumentarg =
  IAMManagedPolicy
  { _iAMManagedPolicyDescription = Nothing
  , _iAMManagedPolicyGroups = Nothing
  , _iAMManagedPolicyManagedPolicyName = Nothing
  , _iAMManagedPolicyPath = Nothing
  , _iAMManagedPolicyPolicyDocument = policyDocumentarg
  , _iAMManagedPolicyRoles = Nothing
  , _iAMManagedPolicyUsers = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-description
iammpDescription :: Lens' IAMManagedPolicy (Maybe (Val Text))
iammpDescription = lens _iAMManagedPolicyDescription (\s a -> s { _iAMManagedPolicyDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-groups
iammpGroups :: Lens' IAMManagedPolicy (Maybe (ValList Text))
iammpGroups = lens _iAMManagedPolicyGroups (\s a -> s { _iAMManagedPolicyGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-managedpolicyname
iammpManagedPolicyName :: Lens' IAMManagedPolicy (Maybe (Val Text))
iammpManagedPolicyName = lens _iAMManagedPolicyManagedPolicyName (\s a -> s { _iAMManagedPolicyManagedPolicyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-ec2-dhcpoptions-path
iammpPath :: Lens' IAMManagedPolicy (Maybe (Val Text))
iammpPath = lens _iAMManagedPolicyPath (\s a -> s { _iAMManagedPolicyPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-policydocument
iammpPolicyDocument :: Lens' IAMManagedPolicy Object
iammpPolicyDocument = lens _iAMManagedPolicyPolicyDocument (\s a -> s { _iAMManagedPolicyPolicyDocument = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-roles
iammpRoles :: Lens' IAMManagedPolicy (Maybe (ValList Text))
iammpRoles = lens _iAMManagedPolicyRoles (\s a -> s { _iAMManagedPolicyRoles = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-users
iammpUsers :: Lens' IAMManagedPolicy (Maybe (ValList Text))
iammpUsers = lens _iAMManagedPolicyUsers (\s a -> s { _iAMManagedPolicyUsers = a })
