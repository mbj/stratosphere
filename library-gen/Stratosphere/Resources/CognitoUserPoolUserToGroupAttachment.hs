{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolusertogroupattachment.html

module Stratosphere.Resources.CognitoUserPoolUserToGroupAttachment where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CognitoUserPoolUserToGroupAttachment. See
-- 'cognitoUserPoolUserToGroupAttachment' for a more convenient constructor.
data CognitoUserPoolUserToGroupAttachment =
  CognitoUserPoolUserToGroupAttachment
  { _cognitoUserPoolUserToGroupAttachmentGroupName :: Val Text
  , _cognitoUserPoolUserToGroupAttachmentUserPoolId :: Val Text
  , _cognitoUserPoolUserToGroupAttachmentUsername :: Val Text
  } deriving (Show, Eq)

instance ToJSON CognitoUserPoolUserToGroupAttachment where
  toJSON CognitoUserPoolUserToGroupAttachment{..} =
    object $
    catMaybes
    [ Just ("GroupName" .= _cognitoUserPoolUserToGroupAttachmentGroupName)
    , Just ("UserPoolId" .= _cognitoUserPoolUserToGroupAttachmentUserPoolId)
    , Just ("Username" .= _cognitoUserPoolUserToGroupAttachmentUsername)
    ]

instance FromJSON CognitoUserPoolUserToGroupAttachment where
  parseJSON (Object obj) =
    CognitoUserPoolUserToGroupAttachment <$>
      obj .: "GroupName" <*>
      obj .: "UserPoolId" <*>
      obj .: "Username"
  parseJSON _ = mempty

-- | Constructor for 'CognitoUserPoolUserToGroupAttachment' containing
-- required fields as arguments.
cognitoUserPoolUserToGroupAttachment
  :: Val Text -- ^ 'cuputgaGroupName'
  -> Val Text -- ^ 'cuputgaUserPoolId'
  -> Val Text -- ^ 'cuputgaUsername'
  -> CognitoUserPoolUserToGroupAttachment
cognitoUserPoolUserToGroupAttachment groupNamearg userPoolIdarg usernamearg =
  CognitoUserPoolUserToGroupAttachment
  { _cognitoUserPoolUserToGroupAttachmentGroupName = groupNamearg
  , _cognitoUserPoolUserToGroupAttachmentUserPoolId = userPoolIdarg
  , _cognitoUserPoolUserToGroupAttachmentUsername = usernamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolusertogroupattachment.html#cfn-cognito-userpoolusertogroupattachment-groupname
cuputgaGroupName :: Lens' CognitoUserPoolUserToGroupAttachment (Val Text)
cuputgaGroupName = lens _cognitoUserPoolUserToGroupAttachmentGroupName (\s a -> s { _cognitoUserPoolUserToGroupAttachmentGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolusertogroupattachment.html#cfn-cognito-userpoolusertogroupattachment-userpoolid
cuputgaUserPoolId :: Lens' CognitoUserPoolUserToGroupAttachment (Val Text)
cuputgaUserPoolId = lens _cognitoUserPoolUserToGroupAttachmentUserPoolId (\s a -> s { _cognitoUserPoolUserToGroupAttachmentUserPoolId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-userpoolusertogroupattachment.html#cfn-cognito-userpoolusertogroupattachment-username
cuputgaUsername :: Lens' CognitoUserPoolUserToGroupAttachment (Val Text)
cuputgaUsername = lens _cognitoUserPoolUserToGroupAttachmentUsername (\s a -> s { _cognitoUserPoolUserToGroupAttachmentUsername = a })
