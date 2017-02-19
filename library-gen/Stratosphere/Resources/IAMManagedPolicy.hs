{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html

module Stratosphere.Resources.IAMManagedPolicy where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for IAMManagedPolicy. See 'iamManagedPolicy'
-- | for a more convenient constructor.
data IAMManagedPolicy =
  IAMManagedPolicy
  { _iAMManagedPolicyDescription :: Maybe (Val Text)
  , _iAMManagedPolicyGroups :: Maybe [Val Text]
  , _iAMManagedPolicyPath :: Maybe (Val Text)
  , _iAMManagedPolicyPolicyDocument :: Maybe Object
  , _iAMManagedPolicyRoles :: Maybe [Val Text]
  , _iAMManagedPolicyUsers :: Maybe [Val Text]
  } deriving (Show, Eq)

instance ToJSON IAMManagedPolicy where
  toJSON IAMManagedPolicy{..} =
    object $
    catMaybes
    [ ("Description" .=) <$> _iAMManagedPolicyDescription
    , ("Groups" .=) <$> _iAMManagedPolicyGroups
    , ("Path" .=) <$> _iAMManagedPolicyPath
    , ("PolicyDocument" .=) <$> _iAMManagedPolicyPolicyDocument
    , ("Roles" .=) <$> _iAMManagedPolicyRoles
    , ("Users" .=) <$> _iAMManagedPolicyUsers
    ]

instance FromJSON IAMManagedPolicy where
  parseJSON (Object obj) =
    IAMManagedPolicy <$>
      obj .:? "Description" <*>
      obj .:? "Groups" <*>
      obj .:? "Path" <*>
      obj .:? "PolicyDocument" <*>
      obj .:? "Roles" <*>
      obj .:? "Users"
  parseJSON _ = mempty

-- | Constructor for 'IAMManagedPolicy' containing required fields as
-- | arguments.
iamManagedPolicy
  :: IAMManagedPolicy
iamManagedPolicy  =
  IAMManagedPolicy
  { _iAMManagedPolicyDescription = Nothing
  , _iAMManagedPolicyGroups = Nothing
  , _iAMManagedPolicyPath = Nothing
  , _iAMManagedPolicyPolicyDocument = Nothing
  , _iAMManagedPolicyRoles = Nothing
  , _iAMManagedPolicyUsers = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-description
iammpDescription :: Lens' IAMManagedPolicy (Maybe (Val Text))
iammpDescription = lens _iAMManagedPolicyDescription (\s a -> s { _iAMManagedPolicyDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-groups
iammpGroups :: Lens' IAMManagedPolicy (Maybe [Val Text])
iammpGroups = lens _iAMManagedPolicyGroups (\s a -> s { _iAMManagedPolicyGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-ec2-dhcpoptions-path
iammpPath :: Lens' IAMManagedPolicy (Maybe (Val Text))
iammpPath = lens _iAMManagedPolicyPath (\s a -> s { _iAMManagedPolicyPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-policydocument
iammpPolicyDocument :: Lens' IAMManagedPolicy (Maybe Object)
iammpPolicyDocument = lens _iAMManagedPolicyPolicyDocument (\s a -> s { _iAMManagedPolicyPolicyDocument = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-roles
iammpRoles :: Lens' IAMManagedPolicy (Maybe [Val Text])
iammpRoles = lens _iAMManagedPolicyRoles (\s a -> s { _iAMManagedPolicyRoles = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-managedpolicy.html#cfn-iam-managedpolicy-users
iammpUsers :: Lens' IAMManagedPolicy (Maybe [Val Text])
iammpUsers = lens _iAMManagedPolicyUsers (\s a -> s { _iAMManagedPolicyUsers = a })
