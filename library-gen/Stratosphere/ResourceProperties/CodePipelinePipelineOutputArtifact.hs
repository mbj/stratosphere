
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-outputartifacts.html

module Stratosphere.ResourceProperties.CodePipelinePipelineOutputArtifact where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for CodePipelinePipelineOutputArtifact. See
-- 'codePipelinePipelineOutputArtifact' for a more convenient constructor.
data CodePipelinePipelineOutputArtifact =
  CodePipelinePipelineOutputArtifact
  { _codePipelinePipelineOutputArtifactName :: Val Text
  } deriving (Show, Eq)

instance ToJSON CodePipelinePipelineOutputArtifact where
  toJSON CodePipelinePipelineOutputArtifact{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _codePipelinePipelineOutputArtifactName
    ]

-- | Constructor for 'CodePipelinePipelineOutputArtifact' containing required
-- fields as arguments.
codePipelinePipelineOutputArtifact
  :: Val Text -- ^ 'cppoaName'
  -> CodePipelinePipelineOutputArtifact
codePipelinePipelineOutputArtifact namearg =
  CodePipelinePipelineOutputArtifact
  { _codePipelinePipelineOutputArtifactName = namearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-codepipeline-pipeline-stages-actions-outputartifacts.html#cfn-codepipeline-pipeline-stages-actions-outputartifacts-name
cppoaName :: Lens' CodePipelinePipelineOutputArtifact (Val Text)
cppoaName = lens _codePipelinePipelineOutputArtifactName (\s a -> s { _codePipelinePipelineOutputArtifactName = a })
