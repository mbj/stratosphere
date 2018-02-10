{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html

module Stratosphere.ResourceProperties.CodeBuildProjectSource where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeBuildProjectSourceAuth

-- | Full data type definition for CodeBuildProjectSource. See
-- 'codeBuildProjectSource' for a more convenient constructor.
data CodeBuildProjectSource =
  CodeBuildProjectSource
  { _codeBuildProjectSourceAuth :: Maybe CodeBuildProjectSourceAuth
  , _codeBuildProjectSourceBuildSpec :: Maybe (Val Text)
  , _codeBuildProjectSourceGitCloneDepth :: Maybe (Val Integer)
  , _codeBuildProjectSourceInsecureSsl :: Maybe (Val Bool)
  , _codeBuildProjectSourceLocation :: Maybe (Val Text)
  , _codeBuildProjectSourceType :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectSource where
  toJSON CodeBuildProjectSource{..} =
    object $
    catMaybes
    [ fmap (("Auth",) . toJSON) _codeBuildProjectSourceAuth
    , fmap (("BuildSpec",) . toJSON) _codeBuildProjectSourceBuildSpec
    , fmap (("GitCloneDepth",) . toJSON . fmap Integer') _codeBuildProjectSourceGitCloneDepth
    , fmap (("InsecureSsl",) . toJSON . fmap Bool') _codeBuildProjectSourceInsecureSsl
    , fmap (("Location",) . toJSON) _codeBuildProjectSourceLocation
    , (Just . ("Type",) . toJSON) _codeBuildProjectSourceType
    ]

instance FromJSON CodeBuildProjectSource where
  parseJSON (Object obj) =
    CodeBuildProjectSource <$>
      (obj .:? "Auth") <*>
      (obj .:? "BuildSpec") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "GitCloneDepth") <*>
      fmap (fmap (fmap unBool')) (obj .:? "InsecureSsl") <*>
      (obj .:? "Location") <*>
      (obj .: "Type")
  parseJSON _ = mempty

-- | Constructor for 'CodeBuildProjectSource' containing required fields as
-- arguments.
codeBuildProjectSource
  :: Val Text -- ^ 'cbpsType'
  -> CodeBuildProjectSource
codeBuildProjectSource typearg =
  CodeBuildProjectSource
  { _codeBuildProjectSourceAuth = Nothing
  , _codeBuildProjectSourceBuildSpec = Nothing
  , _codeBuildProjectSourceGitCloneDepth = Nothing
  , _codeBuildProjectSourceInsecureSsl = Nothing
  , _codeBuildProjectSourceLocation = Nothing
  , _codeBuildProjectSourceType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-auth
cbpsAuth :: Lens' CodeBuildProjectSource (Maybe CodeBuildProjectSourceAuth)
cbpsAuth = lens _codeBuildProjectSourceAuth (\s a -> s { _codeBuildProjectSourceAuth = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-buildspec
cbpsBuildSpec :: Lens' CodeBuildProjectSource (Maybe (Val Text))
cbpsBuildSpec = lens _codeBuildProjectSourceBuildSpec (\s a -> s { _codeBuildProjectSourceBuildSpec = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-gitclonedepth
cbpsGitCloneDepth :: Lens' CodeBuildProjectSource (Maybe (Val Integer))
cbpsGitCloneDepth = lens _codeBuildProjectSourceGitCloneDepth (\s a -> s { _codeBuildProjectSourceGitCloneDepth = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-insecuressl
cbpsInsecureSsl :: Lens' CodeBuildProjectSource (Maybe (Val Bool))
cbpsInsecureSsl = lens _codeBuildProjectSourceInsecureSsl (\s a -> s { _codeBuildProjectSourceInsecureSsl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-location
cbpsLocation :: Lens' CodeBuildProjectSource (Maybe (Val Text))
cbpsLocation = lens _codeBuildProjectSourceLocation (\s a -> s { _codeBuildProjectSourceLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-type
cbpsType :: Lens' CodeBuildProjectSource (Val Text)
cbpsType = lens _codeBuildProjectSourceType (\s a -> s { _codeBuildProjectSourceType = a })
