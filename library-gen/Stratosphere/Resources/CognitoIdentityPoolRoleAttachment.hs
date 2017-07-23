{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypoolroleattachment.html

module Stratosphere.Resources.CognitoIdentityPoolRoleAttachment where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CognitoIdentityPoolRoleAttachment. See
-- 'cognitoIdentityPoolRoleAttachment' for a more convenient constructor.
data CognitoIdentityPoolRoleAttachment =
  CognitoIdentityPoolRoleAttachment
  { _cognitoIdentityPoolRoleAttachmentIdentityPoolId :: Val Text
  , _cognitoIdentityPoolRoleAttachmentRoleMappings :: Maybe Object
  , _cognitoIdentityPoolRoleAttachmentRoles :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON CognitoIdentityPoolRoleAttachment where
  toJSON CognitoIdentityPoolRoleAttachment{..} =
    object $
    catMaybes
    [ (Just . ("IdentityPoolId",) . toJSON) _cognitoIdentityPoolRoleAttachmentIdentityPoolId
    , fmap (("RoleMappings",) . toJSON) _cognitoIdentityPoolRoleAttachmentRoleMappings
    , fmap (("Roles",) . toJSON) _cognitoIdentityPoolRoleAttachmentRoles
    ]

instance FromJSON CognitoIdentityPoolRoleAttachment where
  parseJSON (Object obj) =
    CognitoIdentityPoolRoleAttachment <$>
      (obj .: "IdentityPoolId") <*>
      (obj .:? "RoleMappings") <*>
      (obj .:? "Roles")
  parseJSON _ = mempty

-- | Constructor for 'CognitoIdentityPoolRoleAttachment' containing required
-- fields as arguments.
cognitoIdentityPoolRoleAttachment
  :: Val Text -- ^ 'cipraIdentityPoolId'
  -> CognitoIdentityPoolRoleAttachment
cognitoIdentityPoolRoleAttachment identityPoolIdarg =
  CognitoIdentityPoolRoleAttachment
  { _cognitoIdentityPoolRoleAttachmentIdentityPoolId = identityPoolIdarg
  , _cognitoIdentityPoolRoleAttachmentRoleMappings = Nothing
  , _cognitoIdentityPoolRoleAttachmentRoles = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypoolroleattachment.html#cfn-cognito-identitypoolroleattachment-identitypoolid
cipraIdentityPoolId :: Lens' CognitoIdentityPoolRoleAttachment (Val Text)
cipraIdentityPoolId = lens _cognitoIdentityPoolRoleAttachmentIdentityPoolId (\s a -> s { _cognitoIdentityPoolRoleAttachmentIdentityPoolId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypoolroleattachment.html#cfn-cognito-identitypoolroleattachment-rolemappings
cipraRoleMappings :: Lens' CognitoIdentityPoolRoleAttachment (Maybe Object)
cipraRoleMappings = lens _cognitoIdentityPoolRoleAttachmentRoleMappings (\s a -> s { _cognitoIdentityPoolRoleAttachmentRoleMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cognito-identitypoolroleattachment.html#cfn-cognito-identitypoolroleattachment-roles
cipraRoles :: Lens' CognitoIdentityPoolRoleAttachment (Maybe Object)
cipraRoles = lens _cognitoIdentityPoolRoleAttachmentRoles (\s a -> s { _cognitoIdentityPoolRoleAttachmentRoles = a })
