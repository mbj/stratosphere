{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-gitsubmodulesconfig.html

module Stratosphere.ResourceProperties.CodeBuildProjectGitSubmodulesConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for CodeBuildProjectGitSubmodulesConfig. See
-- 'codeBuildProjectGitSubmodulesConfig' for a more convenient constructor.
data CodeBuildProjectGitSubmodulesConfig =
  CodeBuildProjectGitSubmodulesConfig
  { _codeBuildProjectGitSubmodulesConfigFetchSubmodules :: Val Bool
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectGitSubmodulesConfig where
  toJSON CodeBuildProjectGitSubmodulesConfig{..} =
    object $
    catMaybes
    [ (Just . ("FetchSubmodules",) . toJSON) _codeBuildProjectGitSubmodulesConfigFetchSubmodules
    ]

-- | Constructor for 'CodeBuildProjectGitSubmodulesConfig' containing required
-- fields as arguments.
codeBuildProjectGitSubmodulesConfig
  :: Val Bool -- ^ 'cbpgscFetchSubmodules'
  -> CodeBuildProjectGitSubmodulesConfig
codeBuildProjectGitSubmodulesConfig fetchSubmodulesarg =
  CodeBuildProjectGitSubmodulesConfig
  { _codeBuildProjectGitSubmodulesConfigFetchSubmodules = fetchSubmodulesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-gitsubmodulesconfig.html#cfn-codebuild-project-gitsubmodulesconfig-fetchsubmodules
cbpgscFetchSubmodules :: Lens' CodeBuildProjectGitSubmodulesConfig (Val Bool)
cbpgscFetchSubmodules = lens _codeBuildProjectGitSubmodulesConfigFetchSubmodules (\s a -> s { _codeBuildProjectGitSubmodulesConfigFetchSubmodules = a })
