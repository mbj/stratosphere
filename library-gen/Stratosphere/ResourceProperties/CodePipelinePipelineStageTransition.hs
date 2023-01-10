
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-disableinboundstagetransitions.html

module Stratosphere.ResourceProperties.CodePipelinePipelineStageTransition where

import Stratosphere.ResourceImports


-- | Full data type definition for CodePipelinePipelineStageTransition. See
-- 'codePipelinePipelineStageTransition' for a more convenient constructor.
data CodePipelinePipelineStageTransition =
  CodePipelinePipelineStageTransition
  { _codePipelinePipelineStageTransitionReason :: Val Text
  , _codePipelinePipelineStageTransitionStageName :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodePipelinePipelineStageTransition where
  toJSON CodePipelinePipelineStageTransition{..} =
    object $
    catMaybes
    [ (Just . ("Reason",) . toJSON) _codePipelinePipelineStageTransitionReason
    , (Just . ("StageName",) . toJSON) _codePipelinePipelineStageTransitionStageName
    ]

-- | Constructor for 'CodePipelinePipelineStageTransition' containing required
-- fields as arguments.
codePipelinePipelineStageTransition
  :: Val Text -- ^ 'cppstReason'
  -> Val Text -- ^ 'cppstStageName'
  -> CodePipelinePipelineStageTransition
codePipelinePipelineStageTransition reasonarg stageNamearg =
  CodePipelinePipelineStageTransition
  { _codePipelinePipelineStageTransitionReason = reasonarg
  , _codePipelinePipelineStageTransitionStageName = stageNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-disableinboundstagetransitions.html#cfn-codepipeline-pipeline-disableinboundstagetransitions-reason
cppstReason :: Lens' CodePipelinePipelineStageTransition (Val Text)
cppstReason = lens _codePipelinePipelineStageTransitionReason (\s a -> s { _codePipelinePipelineStageTransitionReason = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-disableinboundstagetransitions.html#cfn-codepipeline-pipeline-disableinboundstagetransitions-stagename
cppstStageName :: Lens' CodePipelinePipelineStageTransition (Val Text)
cppstStageName = lens _codePipelinePipelineStageTransitionStageName (\s a -> s { _codePipelinePipelineStageTransitionStageName = a })
