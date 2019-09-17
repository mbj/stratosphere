{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-filtergroup.html

module Stratosphere.ResourceProperties.CodeBuildProjectFilterGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeBuildProjectWebhookFilter

-- | Full data type definition for CodeBuildProjectFilterGroup. See
-- 'codeBuildProjectFilterGroup' for a more convenient constructor.
data CodeBuildProjectFilterGroup =
  CodeBuildProjectFilterGroup
  { _codeBuildProjectFilterGroupFilterGroups :: Maybe [CodeBuildProjectWebhookFilter]
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectFilterGroup where
  toJSON CodeBuildProjectFilterGroup{..} =
    object $
    catMaybes
    [ fmap (("FilterGroups",) . toJSON) _codeBuildProjectFilterGroupFilterGroups
    ]

-- | Constructor for 'CodeBuildProjectFilterGroup' containing required fields
-- as arguments.
codeBuildProjectFilterGroup
  :: CodeBuildProjectFilterGroup
codeBuildProjectFilterGroup  =
  CodeBuildProjectFilterGroup
  { _codeBuildProjectFilterGroupFilterGroups = Nothing
  }

-- | https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-filtergroup.html
cbpfgFilterGroups :: Lens' CodeBuildProjectFilterGroup (Maybe [CodeBuildProjectWebhookFilter])
cbpfgFilterGroups = lens _codeBuildProjectFilterGroupFilterGroups (\s a -> s { _codeBuildProjectFilterGroupFilterGroups = a })
