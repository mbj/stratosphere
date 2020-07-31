{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html

module Stratosphere.ResourceProperties.CodeBuildProjectSource where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeBuildProjectSourceAuth
import Stratosphere.ResourceProperties.CodeBuildProjectBuildStatusConfig
import Stratosphere.ResourceProperties.CodeBuildProjectGitSubmodulesConfig

-- | Full data type definition for CodeBuildProjectSource. See
-- 'codeBuildProjectSource' for a more convenient constructor.
data CodeBuildProjectSource =
  CodeBuildProjectSource
  { _codeBuildProjectSourceAuth :: Maybe CodeBuildProjectSourceAuth
  , _codeBuildProjectSourceBuildSpec :: Maybe (Val Text)
  , _codeBuildProjectSourceBuildStatusConfig :: Maybe CodeBuildProjectBuildStatusConfig
  , _codeBuildProjectSourceGitCloneDepth :: Maybe (Val Integer)
  , _codeBuildProjectSourceGitSubmodulesConfig :: Maybe CodeBuildProjectGitSubmodulesConfig
  , _codeBuildProjectSourceInsecureSsl :: Maybe (Val Bool)
  , _codeBuildProjectSourceLocation :: Maybe (Val Text)
  , _codeBuildProjectSourceReportBuildStatus :: Maybe (Val Bool)
  , _codeBuildProjectSourceSourceIdentifier :: Maybe (Val Text)
  , _codeBuildProjectSourceType :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectSource where
  toJSON CodeBuildProjectSource{..} =
    object $
    catMaybes
    [ fmap (("Auth",) . toJSON) _codeBuildProjectSourceAuth
    , fmap (("BuildSpec",) . toJSON) _codeBuildProjectSourceBuildSpec
    , fmap (("BuildStatusConfig",) . toJSON) _codeBuildProjectSourceBuildStatusConfig
    , fmap (("GitCloneDepth",) . toJSON) _codeBuildProjectSourceGitCloneDepth
    , fmap (("GitSubmodulesConfig",) . toJSON) _codeBuildProjectSourceGitSubmodulesConfig
    , fmap (("InsecureSsl",) . toJSON) _codeBuildProjectSourceInsecureSsl
    , fmap (("Location",) . toJSON) _codeBuildProjectSourceLocation
    , fmap (("ReportBuildStatus",) . toJSON) _codeBuildProjectSourceReportBuildStatus
    , fmap (("SourceIdentifier",) . toJSON) _codeBuildProjectSourceSourceIdentifier
    , (Just . ("Type",) . toJSON) _codeBuildProjectSourceType
    ]

-- | Constructor for 'CodeBuildProjectSource' containing required fields as
-- arguments.
codeBuildProjectSource
  :: Val Text -- ^ 'cbpsType'
  -> CodeBuildProjectSource
codeBuildProjectSource typearg =
  CodeBuildProjectSource
  { _codeBuildProjectSourceAuth = Nothing
  , _codeBuildProjectSourceBuildSpec = Nothing
  , _codeBuildProjectSourceBuildStatusConfig = Nothing
  , _codeBuildProjectSourceGitCloneDepth = Nothing
  , _codeBuildProjectSourceGitSubmodulesConfig = Nothing
  , _codeBuildProjectSourceInsecureSsl = Nothing
  , _codeBuildProjectSourceLocation = Nothing
  , _codeBuildProjectSourceReportBuildStatus = Nothing
  , _codeBuildProjectSourceSourceIdentifier = Nothing
  , _codeBuildProjectSourceType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-auth
cbpsAuth :: Lens' CodeBuildProjectSource (Maybe CodeBuildProjectSourceAuth)
cbpsAuth = lens _codeBuildProjectSourceAuth (\s a -> s { _codeBuildProjectSourceAuth = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-buildspec
cbpsBuildSpec :: Lens' CodeBuildProjectSource (Maybe (Val Text))
cbpsBuildSpec = lens _codeBuildProjectSourceBuildSpec (\s a -> s { _codeBuildProjectSourceBuildSpec = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-buildstatusconfig
cbpsBuildStatusConfig :: Lens' CodeBuildProjectSource (Maybe CodeBuildProjectBuildStatusConfig)
cbpsBuildStatusConfig = lens _codeBuildProjectSourceBuildStatusConfig (\s a -> s { _codeBuildProjectSourceBuildStatusConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-gitclonedepth
cbpsGitCloneDepth :: Lens' CodeBuildProjectSource (Maybe (Val Integer))
cbpsGitCloneDepth = lens _codeBuildProjectSourceGitCloneDepth (\s a -> s { _codeBuildProjectSourceGitCloneDepth = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-gitsubmodulesconfig
cbpsGitSubmodulesConfig :: Lens' CodeBuildProjectSource (Maybe CodeBuildProjectGitSubmodulesConfig)
cbpsGitSubmodulesConfig = lens _codeBuildProjectSourceGitSubmodulesConfig (\s a -> s { _codeBuildProjectSourceGitSubmodulesConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-insecuressl
cbpsInsecureSsl :: Lens' CodeBuildProjectSource (Maybe (Val Bool))
cbpsInsecureSsl = lens _codeBuildProjectSourceInsecureSsl (\s a -> s { _codeBuildProjectSourceInsecureSsl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-location
cbpsLocation :: Lens' CodeBuildProjectSource (Maybe (Val Text))
cbpsLocation = lens _codeBuildProjectSourceLocation (\s a -> s { _codeBuildProjectSourceLocation = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-reportbuildstatus
cbpsReportBuildStatus :: Lens' CodeBuildProjectSource (Maybe (Val Bool))
cbpsReportBuildStatus = lens _codeBuildProjectSourceReportBuildStatus (\s a -> s { _codeBuildProjectSourceReportBuildStatus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-sourceidentifier
cbpsSourceIdentifier :: Lens' CodeBuildProjectSource (Maybe (Val Text))
cbpsSourceIdentifier = lens _codeBuildProjectSourceSourceIdentifier (\s a -> s { _codeBuildProjectSourceSourceIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-source.html#cfn-codebuild-project-source-type
cbpsType :: Lens' CodeBuildProjectSource (Val Text)
cbpsType = lens _codeBuildProjectSourceType (\s a -> s { _codeBuildProjectSourceType = a })
