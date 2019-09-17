{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html

module Stratosphere.ResourceProperties.CodeBuildProjectProjectTriggers where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.CodeBuildProjectFilterGroup

-- | Full data type definition for CodeBuildProjectProjectTriggers. See
-- 'codeBuildProjectProjectTriggers' for a more convenient constructor.
data CodeBuildProjectProjectTriggers =
  CodeBuildProjectProjectTriggers
  { _codeBuildProjectProjectTriggersFilterGroups :: Maybe [CodeBuildProjectFilterGroup]
  , _codeBuildProjectProjectTriggersWebhook :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectProjectTriggers where
  toJSON CodeBuildProjectProjectTriggers{..} =
    object $
    catMaybes
    [ fmap (("FilterGroups",) . toJSON) _codeBuildProjectProjectTriggersFilterGroups
    , fmap (("Webhook",) . toJSON) _codeBuildProjectProjectTriggersWebhook
    ]

-- | Constructor for 'CodeBuildProjectProjectTriggers' containing required
-- fields as arguments.
codeBuildProjectProjectTriggers
  :: CodeBuildProjectProjectTriggers
codeBuildProjectProjectTriggers  =
  CodeBuildProjectProjectTriggers
  { _codeBuildProjectProjectTriggersFilterGroups = Nothing
  , _codeBuildProjectProjectTriggersWebhook = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html#cfn-codebuild-project-projecttriggers-filtergroups
cbpptFilterGroups :: Lens' CodeBuildProjectProjectTriggers (Maybe [CodeBuildProjectFilterGroup])
cbpptFilterGroups = lens _codeBuildProjectProjectTriggersFilterGroups (\s a -> s { _codeBuildProjectProjectTriggersFilterGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html#cfn-codebuild-project-projecttriggers-webhook
cbpptWebhook :: Lens' CodeBuildProjectProjectTriggers (Maybe (Val Bool))
cbpptWebhook = lens _codeBuildProjectProjectTriggersWebhook (\s a -> s { _codeBuildProjectProjectTriggersWebhook = a })
