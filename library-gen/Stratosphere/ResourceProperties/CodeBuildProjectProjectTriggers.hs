
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html

module Stratosphere.ResourceProperties.CodeBuildProjectProjectTriggers where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for CodeBuildProjectProjectTriggers. See
-- 'codeBuildProjectProjectTriggers' for a more convenient constructor.
data CodeBuildProjectProjectTriggers =
  CodeBuildProjectProjectTriggers
  { _codeBuildProjectProjectTriggersWebhook :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON CodeBuildProjectProjectTriggers where
  toJSON CodeBuildProjectProjectTriggers{..} =
    object $
    catMaybes
    [ fmap (("Webhook",) . toJSON) _codeBuildProjectProjectTriggersWebhook
    ]

-- | Constructor for 'CodeBuildProjectProjectTriggers' containing required
-- fields as arguments.
codeBuildProjectProjectTriggers
  :: CodeBuildProjectProjectTriggers
codeBuildProjectProjectTriggers  =
  CodeBuildProjectProjectTriggers
  { _codeBuildProjectProjectTriggersWebhook = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codebuild-project-projecttriggers.html#cfn-codebuild-project-projecttriggers-webhook
cbpptWebhook :: Lens' CodeBuildProjectProjectTriggers (Maybe (Val Bool))
cbpptWebhook = lens _codeBuildProjectProjectTriggersWebhook (\s a -> s { _codeBuildProjectProjectTriggersWebhook = a })
