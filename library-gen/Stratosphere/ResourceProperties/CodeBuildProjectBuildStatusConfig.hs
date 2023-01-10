
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-buildstatusconfig.html

module Stratosphere.ResourceProperties.CodeBuildProjectBuildStatusConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeBuildProjectBuildStatusConfig. See
-- 'codeBuildProjectBuildStatusConfig' for a more convenient constructor.
data CodeBuildProjectBuildStatusConfig =
  CodeBuildProjectBuildStatusConfig
  { _codeBuildProjectBuildStatusConfigContext :: Maybe (Val Text)
  , _codeBuildProjectBuildStatusConfigTargetUrl :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectBuildStatusConfig where
  toJSON CodeBuildProjectBuildStatusConfig{..} =
    object $
    catMaybes
    [ fmap (("Context",) . toJSON) _codeBuildProjectBuildStatusConfigContext
    , fmap (("TargetUrl",) . toJSON) _codeBuildProjectBuildStatusConfigTargetUrl
    ]

-- | Constructor for 'CodeBuildProjectBuildStatusConfig' containing required
-- fields as arguments.
codeBuildProjectBuildStatusConfig
  :: CodeBuildProjectBuildStatusConfig
codeBuildProjectBuildStatusConfig  =
  CodeBuildProjectBuildStatusConfig
  { _codeBuildProjectBuildStatusConfigContext = Nothing
  , _codeBuildProjectBuildStatusConfigTargetUrl = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-buildstatusconfig.html#cfn-codebuild-project-buildstatusconfig-context
cbpbscContext :: Lens' CodeBuildProjectBuildStatusConfig (Maybe (Val Text))
cbpbscContext = lens _codeBuildProjectBuildStatusConfigContext (\s a -> s { _codeBuildProjectBuildStatusConfigContext = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-buildstatusconfig.html#cfn-codebuild-project-buildstatusconfig-targeturl
cbpbscTargetUrl :: Lens' CodeBuildProjectBuildStatusConfig (Maybe (Val Text))
cbpbscTargetUrl = lens _codeBuildProjectBuildStatusConfigTargetUrl (\s a -> s { _codeBuildProjectBuildStatusConfigTargetUrl = a })
