{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-policy.html

module Stratosphere.Resources.IAMPolicy where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


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

instance ToJSON IAMPolicy where
  toJSON IAMPolicy{..} =
    object $
    catMaybes
    [ ("Groups" .=) <$> _iAMPolicyGroups
    , Just ("PolicyDocument" .= _iAMPolicyPolicyDocument)
    , Just ("PolicyName" .= _iAMPolicyPolicyName)
    , ("Roles" .=) <$> _iAMPolicyRoles
    , ("Users" .=) <$> _iAMPolicyUsers
    ]

instance FromJSON IAMPolicy where
  parseJSON (Object obj) =
    IAMPolicy <$>
      obj .:? "Groups" <*>
      obj .: "PolicyDocument" <*>
      obj .: "PolicyName" <*>
      obj .:? "Roles" <*>
      obj .:? "Users"
  parseJSON _ = mempty

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
