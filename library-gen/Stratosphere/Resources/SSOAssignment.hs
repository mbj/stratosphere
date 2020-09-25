{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-assignment.html

module Stratosphere.Resources.SSOAssignment where

import Stratosphere.ResourceImports


-- | Full data type definition for SSOAssignment. See 'ssoAssignment' for a
-- more convenient constructor.
data SSOAssignment =
  SSOAssignment
  { _sSOAssignmentInstanceArn :: Val Text
  , _sSOAssignmentPermissionSetArn :: Val Text
  , _sSOAssignmentPrincipalId :: Val Text
  , _sSOAssignmentPrincipalType :: Val Text
  , _sSOAssignmentTargetId :: Val Text
  , _sSOAssignmentTargetType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties SSOAssignment where
  toResourceProperties SSOAssignment{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SSO::Assignment"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ (Just . ("InstanceArn",) . toJSON) _sSOAssignmentInstanceArn
        , (Just . ("PermissionSetArn",) . toJSON) _sSOAssignmentPermissionSetArn
        , (Just . ("PrincipalId",) . toJSON) _sSOAssignmentPrincipalId
        , (Just . ("PrincipalType",) . toJSON) _sSOAssignmentPrincipalType
        , (Just . ("TargetId",) . toJSON) _sSOAssignmentTargetId
        , (Just . ("TargetType",) . toJSON) _sSOAssignmentTargetType
        ]
    }

-- | Constructor for 'SSOAssignment' containing required fields as arguments.
ssoAssignment
  :: Val Text -- ^ 'ssoaInstanceArn'
  -> Val Text -- ^ 'ssoaPermissionSetArn'
  -> Val Text -- ^ 'ssoaPrincipalId'
  -> Val Text -- ^ 'ssoaPrincipalType'
  -> Val Text -- ^ 'ssoaTargetId'
  -> Val Text -- ^ 'ssoaTargetType'
  -> SSOAssignment
ssoAssignment instanceArnarg permissionSetArnarg principalIdarg principalTypearg targetIdarg targetTypearg =
  SSOAssignment
  { _sSOAssignmentInstanceArn = instanceArnarg
  , _sSOAssignmentPermissionSetArn = permissionSetArnarg
  , _sSOAssignmentPrincipalId = principalIdarg
  , _sSOAssignmentPrincipalType = principalTypearg
  , _sSOAssignmentTargetId = targetIdarg
  , _sSOAssignmentTargetType = targetTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-assignment.html#cfn-sso-assignment-instancearn
ssoaInstanceArn :: Lens' SSOAssignment (Val Text)
ssoaInstanceArn = lens _sSOAssignmentInstanceArn (\s a -> s { _sSOAssignmentInstanceArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-assignment.html#cfn-sso-assignment-permissionsetarn
ssoaPermissionSetArn :: Lens' SSOAssignment (Val Text)
ssoaPermissionSetArn = lens _sSOAssignmentPermissionSetArn (\s a -> s { _sSOAssignmentPermissionSetArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-assignment.html#cfn-sso-assignment-principalid
ssoaPrincipalId :: Lens' SSOAssignment (Val Text)
ssoaPrincipalId = lens _sSOAssignmentPrincipalId (\s a -> s { _sSOAssignmentPrincipalId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-assignment.html#cfn-sso-assignment-principaltype
ssoaPrincipalType :: Lens' SSOAssignment (Val Text)
ssoaPrincipalType = lens _sSOAssignmentPrincipalType (\s a -> s { _sSOAssignmentPrincipalType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-assignment.html#cfn-sso-assignment-targetid
ssoaTargetId :: Lens' SSOAssignment (Val Text)
ssoaTargetId = lens _sSOAssignmentTargetId (\s a -> s { _sSOAssignmentTargetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sso-assignment.html#cfn-sso-assignment-targettype
ssoaTargetType :: Lens' SSOAssignment (Val Text)
ssoaTargetType = lens _sSOAssignmentTargetType (\s a -> s { _sSOAssignmentTargetType = a })
