{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html

module Stratosphere.ResourceProperties.CodeBuildProjectEnvironment where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.CodeBuildProjectEnvironmentVariable

-- | Full data type definition for CodeBuildProjectEnvironment. See
-- | 'codeBuildProjectEnvironment' for a more convenient constructor.
data CodeBuildProjectEnvironment =
  CodeBuildProjectEnvironment
  { _codeBuildProjectEnvironmentComputeType :: Maybe (Val Text)
  , _codeBuildProjectEnvironmentEnvironmentVariables :: Maybe [CodeBuildProjectEnvironmentVariable]
  , _codeBuildProjectEnvironmentImage :: Maybe (Val Text)
  , _codeBuildProjectEnvironmentType :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON CodeBuildProjectEnvironment where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON CodeBuildProjectEnvironment where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'CodeBuildProjectEnvironment' containing required fields
-- | as arguments.
codeBuildProjectEnvironment
  :: CodeBuildProjectEnvironment
codeBuildProjectEnvironment  =
  CodeBuildProjectEnvironment
  { _codeBuildProjectEnvironmentComputeType = Nothing
  , _codeBuildProjectEnvironmentEnvironmentVariables = Nothing
  , _codeBuildProjectEnvironmentImage = Nothing
  , _codeBuildProjectEnvironmentType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-computetype
cbpeComputeType :: Lens' CodeBuildProjectEnvironment (Maybe (Val Text))
cbpeComputeType = lens _codeBuildProjectEnvironmentComputeType (\s a -> s { _codeBuildProjectEnvironmentComputeType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-environmentvariables
cbpeEnvironmentVariables :: Lens' CodeBuildProjectEnvironment (Maybe [CodeBuildProjectEnvironmentVariable])
cbpeEnvironmentVariables = lens _codeBuildProjectEnvironmentEnvironmentVariables (\s a -> s { _codeBuildProjectEnvironmentEnvironmentVariables = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-image
cbpeImage :: Lens' CodeBuildProjectEnvironment (Maybe (Val Text))
cbpeImage = lens _codeBuildProjectEnvironmentImage (\s a -> s { _codeBuildProjectEnvironmentImage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-type
cbpeType :: Lens' CodeBuildProjectEnvironment (Maybe (Val Text))
cbpeType = lens _codeBuildProjectEnvironmentType (\s a -> s { _codeBuildProjectEnvironmentType = a })
