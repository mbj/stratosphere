{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolgroup.html

module Stratosphere.Resources.CognitoUserPoolGroup where

import Stratosphere.ResourceImports


-- | Full data type definition for CognitoUserPoolGroup. See
-- 'cognitoUserPoolGroup' for a more convenient constructor.
data CognitoUserPoolGroup =
  CognitoUserPoolGroup
  { _cognitoUserPoolGroupDescription :: Maybe (Val Text)
  , _cognitoUserPoolGroupGroupName :: Maybe (Val Text)
  , _cognitoUserPoolGroupPrecedence :: Maybe (Val Double)
  , _cognitoUserPoolGroupRoleArn :: Maybe (Val Text)
  , _cognitoUserPoolGroupUserPoolId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties CognitoUserPoolGroup where
  toResourceProperties CognitoUserPoolGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Cognito::UserPoolGroup"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _cognitoUserPoolGroupDescription
        , fmap (("GroupName",) . toJSON) _cognitoUserPoolGroupGroupName
        , fmap (("Precedence",) . toJSON) _cognitoUserPoolGroupPrecedence
        , fmap (("RoleArn",) . toJSON) _cognitoUserPoolGroupRoleArn
        , (Just . ("UserPoolId",) . toJSON) _cognitoUserPoolGroupUserPoolId
        ]
    }

-- | Constructor for 'CognitoUserPoolGroup' containing required fields as
-- arguments.
cognitoUserPoolGroup
  :: Val Text -- ^ 'cupgUserPoolId'
  -> CognitoUserPoolGroup
cognitoUserPoolGroup userPoolIdarg =
  CognitoUserPoolGroup
  { _cognitoUserPoolGroupDescription = Nothing
  , _cognitoUserPoolGroupGroupName = Nothing
  , _cognitoUserPoolGroupPrecedence = Nothing
  , _cognitoUserPoolGroupRoleArn = Nothing
  , _cognitoUserPoolGroupUserPoolId = userPoolIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolgroup.html#cfn-cognito-userpoolgroup-description
cupgDescription :: Lens' CognitoUserPoolGroup (Maybe (Val Text))
cupgDescription = lens _cognitoUserPoolGroupDescription (\s a -> s { _cognitoUserPoolGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolgroup.html#cfn-cognito-userpoolgroup-groupname
cupgGroupName :: Lens' CognitoUserPoolGroup (Maybe (Val Text))
cupgGroupName = lens _cognitoUserPoolGroupGroupName (\s a -> s { _cognitoUserPoolGroupGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolgroup.html#cfn-cognito-userpoolgroup-precedence
cupgPrecedence :: Lens' CognitoUserPoolGroup (Maybe (Val Double))
cupgPrecedence = lens _cognitoUserPoolGroupPrecedence (\s a -> s { _cognitoUserPoolGroupPrecedence = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolgroup.html#cfn-cognito-userpoolgroup-rolearn
cupgRoleArn :: Lens' CognitoUserPoolGroup (Maybe (Val Text))
cupgRoleArn = lens _cognitoUserPoolGroupRoleArn (\s a -> s { _cognitoUserPoolGroupRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolgroup.html#cfn-cognito-userpoolgroup-userpoolid
cupgUserPoolId :: Lens' CognitoUserPoolGroup (Val Text)
cupgUserPoolId = lens _cognitoUserPoolGroupUserPoolId (\s a -> s { _cognitoUserPoolGroupUserPoolId = a })
