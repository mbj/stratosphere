{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html

module Stratosphere.ResourceProperties.CodeBuildProjectEnvironmentVariable where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for CodeBuildProjectEnvironmentVariable. See
-- | 'codeBuildProjectEnvironmentVariable' for a more convenient constructor.
data CodeBuildProjectEnvironmentVariable =
  CodeBuildProjectEnvironmentVariable
  { _codeBuildProjectEnvironmentVariableName :: Maybe (Val Text)
  , _codeBuildProjectEnvironmentVariableValue :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON CodeBuildProjectEnvironmentVariable where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 36, omitNothingFields = True }

instance FromJSON CodeBuildProjectEnvironmentVariable where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 36, omitNothingFields = True }

-- | Constructor for 'CodeBuildProjectEnvironmentVariable' containing required
-- | fields as arguments.
codeBuildProjectEnvironmentVariable
  :: CodeBuildProjectEnvironmentVariable
codeBuildProjectEnvironmentVariable  =
  CodeBuildProjectEnvironmentVariable
  { _codeBuildProjectEnvironmentVariableName = Nothing
  , _codeBuildProjectEnvironmentVariableValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html#cfn-codebuild-project-environmentvariable-name
cbpevName :: Lens' CodeBuildProjectEnvironmentVariable (Maybe (Val Text))
cbpevName = lens _codeBuildProjectEnvironmentVariableName (\s a -> s { _codeBuildProjectEnvironmentVariableName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html#cfn-codebuild-project-environmentvariable-value
cbpevValue :: Lens' CodeBuildProjectEnvironmentVariable (Maybe (Val Text))
cbpevValue = lens _codeBuildProjectEnvironmentVariableValue (\s a -> s { _codeBuildProjectEnvironmentVariableValue = a })
