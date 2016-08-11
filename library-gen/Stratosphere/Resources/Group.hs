{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::IAM::Group type creates an Identity and Access Management (IAM)
-- group. This type supports updates. For more information about updating
-- stacks, see AWS CloudFormation Stacks Updates.

module Stratosphere.Resources.Group where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.IAMPolicies

-- | Full data type definition for Group. See 'group' for a more convenient
-- constructor.
data Group =
  Group
  { _groupManagedPolicyArns :: Maybe [Val Text]
  , _groupPath :: Maybe (Val Text)
  , _groupPolicies :: Maybe [IAMPolicies]
  , _groupGroupName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON Group where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 6, omitNothingFields = True }

instance FromJSON Group where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 6, omitNothingFields = True }

-- | Constructor for 'Group' containing required fields as arguments.
group
  :: Group
group  =
  Group
  { _groupManagedPolicyArns = Nothing
  , _groupPath = Nothing
  , _groupPolicies = Nothing
  , _groupGroupName = Nothing
  }

-- | One or more managed policy ARNs to attach to this group.
gManagedPolicyArns :: Lens' Group (Maybe [Val Text])
gManagedPolicyArns = lens _groupManagedPolicyArns (\s a -> s { _groupManagedPolicyArns = a })

-- | The path to the group. For more information about paths, see Identifiers
-- for IAM Entities in Using IAM.
gPath :: Lens' Group (Maybe (Val Text))
gPath = lens _groupPath (\s a -> s { _groupPath = a })

-- | The policies to associate with this group. For information about
-- policies, see Overview of Policies in Using IAM.
gPolicies :: Lens' Group (Maybe [IAMPolicies])
gPolicies = lens _groupPolicies (\s a -> s { _groupPolicies = a })

-- | A name for the IAM group. For valid values, see the GroupName parameter
-- for the CreateGroup action in the IAM API Reference. If you don't specify a
-- name, AWS CloudFormation generates a unique physical ID and uses that ID
-- for the group name.
gGroupName :: Lens' Group (Maybe (Val Text))
gGroupName = lens _groupGroupName (\s a -> s { _groupGroupName = a })