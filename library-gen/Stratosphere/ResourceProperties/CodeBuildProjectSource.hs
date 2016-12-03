{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html

module Stratosphere.ResourceProperties.CodeBuildProjectSource where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.CodeBuildProjectSourceAuth

-- | Full data type definition for CodeBuildProjectSource. See
-- | 'codeBuildProjectSource' for a more convenient constructor.
data CodeBuildProjectSource =
  CodeBuildProjectSource
  { _codeBuildProjectSourceAuth :: Maybe CodeBuildProjectSourceAuth
  , _codeBuildProjectSourceBuildSpec :: Maybe (Val Text)
  , _codeBuildProjectSourceLocation :: Maybe (Val Text)
  , _codeBuildProjectSourceType :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON CodeBuildProjectSource where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

instance FromJSON CodeBuildProjectSource where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

-- | Constructor for 'CodeBuildProjectSource' containing required fields as
-- | arguments.
codeBuildProjectSource
  :: CodeBuildProjectSource
codeBuildProjectSource  =
  CodeBuildProjectSource
  { _codeBuildProjectSourceAuth = Nothing
  , _codeBuildProjectSourceBuildSpec = Nothing
  , _codeBuildProjectSourceLocation = Nothing
  , _codeBuildProjectSourceType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-auth
cbpsAuth :: Lens' CodeBuildProjectSource (Maybe CodeBuildProjectSourceAuth)
cbpsAuth = lens _codeBuildProjectSourceAuth (\s a -> s { _codeBuildProjectSourceAuth = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-buildspec
cbpsBuildSpec :: Lens' CodeBuildProjectSource (Maybe (Val Text))
cbpsBuildSpec = lens _codeBuildProjectSourceBuildSpec (\s a -> s { _codeBuildProjectSourceBuildSpec = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-location
cbpsLocation :: Lens' CodeBuildProjectSource (Maybe (Val Text))
cbpsLocation = lens _codeBuildProjectSourceLocation (\s a -> s { _codeBuildProjectSourceLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-type
cbpsType :: Lens' CodeBuildProjectSource (Maybe (Val Text))
cbpsType = lens _codeBuildProjectSourceType (\s a -> s { _codeBuildProjectSourceType = a })
