{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html

module Stratosphere.ResourceProperties.CodeBuildProjectEnvironmentVariable where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for CodeBuildProjectEnvironmentVariable. See
-- 'codeBuildProjectEnvironmentVariable' for a more convenient constructor.
data CodeBuildProjectEnvironmentVariable =
  CodeBuildProjectEnvironmentVariable
  { _codeBuildProjectEnvironmentVariableName :: Val Text
  , _codeBuildProjectEnvironmentVariableValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectEnvironmentVariable where
  toJSON CodeBuildProjectEnvironmentVariable{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _codeBuildProjectEnvironmentVariableName
    , (Just . ("Value",) . toJSON) _codeBuildProjectEnvironmentVariableValue
    ]

instance FromJSON CodeBuildProjectEnvironmentVariable where
  parseJSON (Object obj) =
    CodeBuildProjectEnvironmentVariable <$>
      (obj .: "Name") <*>
      (obj .: "Value")
  parseJSON _ = mempty

-- | Constructor for 'CodeBuildProjectEnvironmentVariable' containing required
-- fields as arguments.
codeBuildProjectEnvironmentVariable
  :: Val Text -- ^ 'cbpevName'
  -> Val Text -- ^ 'cbpevValue'
  -> CodeBuildProjectEnvironmentVariable
codeBuildProjectEnvironmentVariable namearg valuearg =
  CodeBuildProjectEnvironmentVariable
  { _codeBuildProjectEnvironmentVariableName = namearg
  , _codeBuildProjectEnvironmentVariableValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html#cfn-codebuild-project-environmentvariable-name
cbpevName :: Lens' CodeBuildProjectEnvironmentVariable (Val Text)
cbpevName = lens _codeBuildProjectEnvironmentVariableName (\s a -> s { _codeBuildProjectEnvironmentVariableName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environmentvariable.html#cfn-codebuild-project-environmentvariable-value
cbpevValue :: Lens' CodeBuildProjectEnvironmentVariable (Val Text)
cbpevValue = lens _codeBuildProjectEnvironmentVariableValue (\s a -> s { _codeBuildProjectEnvironmentVariableValue = a })
