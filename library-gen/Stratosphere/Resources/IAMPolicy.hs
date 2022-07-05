{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html

module Stratosphere.Resources.IAMPolicy where

import Stratosphere.ResourceImports


-- | Full data type definition for IAMPolicy. See 'iamPolicy' for a more
-- convenient constructor.
data IAMPolicy =
  IAMPolicy
  { _iAMPolicyGroups :: Maybe (ValList Text)
  , _iAMPolicyPolicyDocument :: Object
  , _iAMPolicyPolicyName :: Val Text
  , _iAMPolicyRoles :: Maybe (ValList Text)
  , _iAMPolicyUsers :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToResourceProperties IAMPolicy where
  toResourceProperties IAMPolicy{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::IAM::Policy"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Groups",) . toJSON) _iAMPolicyGroups
        , (Just . ("PolicyDocument",) . toJSON) _iAMPolicyPolicyDocument
        , (Just . ("PolicyName",) . toJSON) _iAMPolicyPolicyName
        , fmap (("Roles",) . toJSON) _iAMPolicyRoles
        , fmap (("Users",) . toJSON) _iAMPolicyUsers
        ]
    }

-- | Constructor for 'IAMPolicy' containing required fields as arguments.
iamPolicy
  :: Object -- ^ 'iampPolicyDocument'
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
iampGroups :: Lens' IAMPolicy (Maybe (ValList Text))
iampGroups = lens _iAMPolicyGroups (\s a -> s { _iAMPolicyGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-policydocument
iampPolicyDocument :: Lens' IAMPolicy Object
iampPolicyDocument = lens _iAMPolicyPolicyDocument (\s a -> s { _iAMPolicyPolicyDocument = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-policyname
iampPolicyName :: Lens' IAMPolicy (Val Text)
iampPolicyName = lens _iAMPolicyPolicyName (\s a -> s { _iAMPolicyPolicyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-roles
iampRoles :: Lens' IAMPolicy (Maybe (ValList Text))
iampRoles = lens _iAMPolicyRoles (\s a -> s { _iAMPolicyRoles = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html#cfn-iam-policy-users
iampUsers :: Lens' IAMPolicy (Maybe (ValList Text))
iampUsers = lens _iAMPolicyUsers (\s a -> s { _iAMPolicyUsers = a })
