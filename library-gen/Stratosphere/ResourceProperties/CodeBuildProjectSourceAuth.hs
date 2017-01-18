{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html

module Stratosphere.ResourceProperties.CodeBuildProjectSourceAuth where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CodeBuildProjectSourceAuth. See
-- | 'codeBuildProjectSourceAuth' for a more convenient constructor.
data CodeBuildProjectSourceAuth =
  CodeBuildProjectSourceAuth
  { _codeBuildProjectSourceAuthResource :: Maybe (Val Text)
  , _codeBuildProjectSourceAuthType :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON CodeBuildProjectSourceAuth where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

instance FromJSON CodeBuildProjectSourceAuth where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

-- | Constructor for 'CodeBuildProjectSourceAuth' containing required fields
-- | as arguments.
codeBuildProjectSourceAuth
  :: CodeBuildProjectSourceAuth
codeBuildProjectSourceAuth  =
  CodeBuildProjectSourceAuth
  { _codeBuildProjectSourceAuthResource = Nothing
  , _codeBuildProjectSourceAuthType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html#cfn-codebuild-project-sourceauth-resource
cbpsaResource :: Lens' CodeBuildProjectSourceAuth (Maybe (Val Text))
cbpsaResource = lens _codeBuildProjectSourceAuthResource (\s a -> s { _codeBuildProjectSourceAuthResource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-sourceauth.html#cfn-codebuild-project-sourceauth-type
cbpsaType :: Lens' CodeBuildProjectSourceAuth (Maybe (Val Text))
cbpsaType = lens _codeBuildProjectSourceAuthType (\s a -> s { _codeBuildProjectSourceAuthType = a })
