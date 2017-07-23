{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html

module Stratosphere.ResourceProperties.CodeBuildProjectEnvironment where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.CodeBuildProjectEnvironmentVariable

-- | Full data type definition for CodeBuildProjectEnvironment. See
-- 'codeBuildProjectEnvironment' for a more convenient constructor.
data CodeBuildProjectEnvironment =
  CodeBuildProjectEnvironment
  { _codeBuildProjectEnvironmentComputeType :: Val Text
  , _codeBuildProjectEnvironmentEnvironmentVariables :: Maybe [CodeBuildProjectEnvironmentVariable]
  , _codeBuildProjectEnvironmentImage :: Val Text
  , _codeBuildProjectEnvironmentPrivilegedMode :: Maybe (Val Bool)
  , _codeBuildProjectEnvironmentType :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectEnvironment where
  toJSON CodeBuildProjectEnvironment{..} =
    object $
    catMaybes
    [ (Just . ("ComputeType",) . toJSON) _codeBuildProjectEnvironmentComputeType
    , fmap (("EnvironmentVariables",) . toJSON) _codeBuildProjectEnvironmentEnvironmentVariables
    , (Just . ("Image",) . toJSON) _codeBuildProjectEnvironmentImage
    , fmap (("PrivilegedMode",) . toJSON . fmap Bool') _codeBuildProjectEnvironmentPrivilegedMode
    , (Just . ("Type",) . toJSON) _codeBuildProjectEnvironmentType
    ]

instance FromJSON CodeBuildProjectEnvironment where
  parseJSON (Object obj) =
    CodeBuildProjectEnvironment <$>
      (obj .: "ComputeType") <*>
      (obj .:? "EnvironmentVariables") <*>
      (obj .: "Image") <*>
      fmap (fmap (fmap unBool')) (obj .:? "PrivilegedMode") <*>
      (obj .: "Type")
  parseJSON _ = mempty

-- | Constructor for 'CodeBuildProjectEnvironment' containing required fields
-- as arguments.
codeBuildProjectEnvironment
  :: Val Text -- ^ 'cbpeComputeType'
  -> Val Text -- ^ 'cbpeImage'
  -> Val Text -- ^ 'cbpeType'
  -> CodeBuildProjectEnvironment
codeBuildProjectEnvironment computeTypearg imagearg typearg =
  CodeBuildProjectEnvironment
  { _codeBuildProjectEnvironmentComputeType = computeTypearg
  , _codeBuildProjectEnvironmentEnvironmentVariables = Nothing
  , _codeBuildProjectEnvironmentImage = imagearg
  , _codeBuildProjectEnvironmentPrivilegedMode = Nothing
  , _codeBuildProjectEnvironmentType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-computetype
cbpeComputeType :: Lens' CodeBuildProjectEnvironment (Val Text)
cbpeComputeType = lens _codeBuildProjectEnvironmentComputeType (\s a -> s { _codeBuildProjectEnvironmentComputeType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-environmentvariables
cbpeEnvironmentVariables :: Lens' CodeBuildProjectEnvironment (Maybe [CodeBuildProjectEnvironmentVariable])
cbpeEnvironmentVariables = lens _codeBuildProjectEnvironmentEnvironmentVariables (\s a -> s { _codeBuildProjectEnvironmentEnvironmentVariables = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-image
cbpeImage :: Lens' CodeBuildProjectEnvironment (Val Text)
cbpeImage = lens _codeBuildProjectEnvironmentImage (\s a -> s { _codeBuildProjectEnvironmentImage = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-privilegedmode
cbpePrivilegedMode :: Lens' CodeBuildProjectEnvironment (Maybe (Val Bool))
cbpePrivilegedMode = lens _codeBuildProjectEnvironmentPrivilegedMode (\s a -> s { _codeBuildProjectEnvironmentPrivilegedMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-environment.html#cfn-codebuild-project-environment-type
cbpeType :: Lens' CodeBuildProjectEnvironment (Val Text)
cbpeType = lens _codeBuildProjectEnvironmentType (\s a -> s { _codeBuildProjectEnvironmentType = a })
