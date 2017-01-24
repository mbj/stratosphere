{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html

module Stratosphere.ResourceProperties.CodeBuildProjectEnvironment where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

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
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectEnvironment where
  toJSON CodeBuildProjectEnvironment{..} =
    object
    [ "ComputeType" .= _codeBuildProjectEnvironmentComputeType
    , "EnvironmentVariables" .= _codeBuildProjectEnvironmentEnvironmentVariables
    , "Image" .= _codeBuildProjectEnvironmentImage
    , "Type" .= _codeBuildProjectEnvironmentType
    ]

instance FromJSON CodeBuildProjectEnvironment where
  parseJSON (Object obj) =
    CodeBuildProjectEnvironment <$>
      obj .: "ComputeType" <*>
      obj .: "EnvironmentVariables" <*>
      obj .: "Image" <*>
      obj .: "Type"
  parseJSON _ = mempty

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
